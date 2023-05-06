<?php
session_start();
 
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: ../index.php");
    exit;
}
 
require_once "../config.php";
 
$username = $password = "";
$username_err = $password_err = $login_err = "";
 
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter username.";
    } else{
        $username = trim($_POST["username"]);
    }
    
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter your password.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    if(empty($username_err) && empty($password_err)){
        $sql = "SELECT user_id, username, password FROM orokbefogado WHERE username = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            $param_username = $username;
            
            if(mysqli_stmt_execute($stmt)){
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){
                        if(password_verify($password, $hashed_password)){
                            session_start();
                            
                            $_SESSION["loggedin"] = true;
                            $_SESSION["id"] = $id;
                            $_SESSION["username"] = $username;     
                            if ($username == "admin") {
                                $_SESSION["is_admin"] = true;
                            } else{
                                $_SESSION["is_admin"] = false;
                            }                    
                            
                            header("location: ../index.php");
                        } else{
                            $login_err = "Helytelen jelszó";
                        }
                    }
                } else{
                    $login_err = "Helytelen felhasználónév";
                }
            } else{
                echo "Valami nem sikerült, próbáld újra.";
            }

            mysqli_stmt_close($stmt);
        }
    }
    
    mysqli_close($link);
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Bejelentkezés ≫ Kutyafa Nonprofit Civil Összefogás</title>
    <link rel="stylesheet" href="../css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/forms.css?v=<?php echo time(); ?>">
    <link rel="icon" type="image/x-icon" href="../img/logo.ico">
</head>
<body>
    <a href="javascript:history.back()">
        <img style="position:absolute; top:10pt; left:10pt;" width="50" height="50" src="../img/return.svg" alt="Vissza" title="Vissza">
    </a>
    <div class="container" >

        <form class="form-container" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
        <h1>Bejelentkezés</h1>
        <ul>
            <li>
                <label>Felhasználónév</label>
                <input type="text" name="username" class="form-control <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>">
                <span class="invalid-feedback"><?php echo $username_err; ?></span>
            </li>    
            <li>
                <label>Jelszó</label>
                <input type="password" name="password" class="form-control <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>">
                <span class="invalid-feedback"><?php echo $password_err; ?></span>
            </li>
            <?php 
            if(!empty($login_err)){
                echo '<div class="alert alert-danger">' . $login_err . '</div>';
            }        
            ?>
            <li>
                <input type="submit" class="btn btn-primary" value="Login">
            </li>
        </ul>
        <p>Nincsen fiókod? <a href="register.php">Regisztrálj</a>!</p>

            
        </form>
    </div>
</body>
</html>