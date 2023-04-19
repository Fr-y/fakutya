<?php
// Include config file
require_once "../config.php";
 
// Define variables and initialize with empty values
$username = $password = $email =  $confirm_password = "";
$username_err = $email_err = $password_err = $confirm_password_err = "";
 
// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
 
    // Validate username
    if(empty(trim($_POST["username"]))){
        $username_err = "Adj meg egy nevet.";
    } elseif(!preg_match('/^[a-zA-Z0-9_]+$/', trim($_POST["username"]))){
        $username_err = "A név csak betűket, számokat és aláhúzást tartalmazhat.";
    } else{
        // Prepare a select statement
        $sql = "SELECT user_id FROM orokbefogado WHERE username = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            
            $param_username = trim($_POST["username"]);
            
            if(mysqli_stmt_execute($stmt)){
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) == 1){
                    $username_err = "Ez a felhasználó név foglalt.";
                } else{
                    $username = trim($_POST["username"]);
                }
            } else{
                echo "Valami nagy hiba történt! Kérjük próbálja újra késöbb!";
            }

            mysqli_stmt_close($stmt);
        }
    }

    // Validate email
    if(empty(trim($_POST["email"]))){
        $email_err = "Adj meg egy email címet.";
    } else{
        $sql = "SELECT user_id FROM orokbefogado WHERE email = ?";
        
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "s", $param_email);
            
            $param_email = trim($_POST["email"]);
            
            if(mysqli_stmt_execute($stmt)){
                mysqli_stmt_store_result($stmt);
                
                if(mysqli_stmt_num_rows($stmt) == 1){
                    $email_err = "Ezzel az email címmel már létezik fiók!";
                } else{
                    $email = trim($_POST["email"]);
                }
            } else{
                echo "Valami nagy hiba történt! Kérjük próbálja újra késöbb!";
            }

            mysqli_stmt_close($stmt);
        }
    }
    
    // Validate password
    if(empty(trim($_POST["password"]))){
        $password_err = "Adj meg egy jelszót.";     
    } elseif(strlen(trim($_POST["password"])) < 5){
        $password_err = "A jelszónak legalább 5 karakteresnek kell lennie.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    // Validate confirm password
    if(empty(trim($_POST["confirm_password"]))){
        $confirm_password_err = "Erősítsed meg a jelszavadat.";     
    } else{
        $confirm_password = trim($_POST["confirm_password"]);
        if(empty($password_err) && ($password != $confirm_password)){
            $confirm_password_err = "A jelszavak nem egyeznek.";
        }
    }
    
    if(empty($username_err) && empty($email_err) && empty($password_err) && empty($confirm_password_err)){
        
        $sql = "INSERT INTO orokbefogado (username, password, email) VALUES (?, ?, ?)";
         
        if($stmt = mysqli_prepare($link, $sql)){
            mysqli_stmt_bind_param($stmt, "sss", $param_username, $param_password, $param_email);
            
            $param_username = $username;
            $param_email = $email;
            $param_password = crypt($password, PASSWORD_DEFAULT); // Creates a password hash

            
            if(mysqli_stmt_execute($stmt)){
                header("location: ../index.php");
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
    <title>Regisztráció ≫ Kutyafa Nonprofit Civil Összefogás</title>
    <link rel="stylesheet" href="../css/universal.css?v=<?php echo time(); ?>">
    <link rel="stylesheet" href="../css/forms.css?v=<?php echo time(); ?>">
    <link rel="icon" type="image/x-icon" href="/img/logo.ico">

    <style>
        body{ font: 14px sans-serif; }
        .wrapper{ width: 360px; padding: 20px; }
    </style>
</head>
<body>
    <div class="container">
        <form class="form-container" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post">
            <h1>Regisztráció</h1>
            <ul>
                <li>
                    <label>Név</label>
                    <input type="text" name="username" class="form-control <?php echo (!empty($username_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $username; ?>">
                    <span class="invalid-feedback"><?php echo $username_err; ?></span>
                </li>    
                <li>
                    <label>Email</label>
                    <input type="email" name="email" class="form-control <?php echo (!empty($email_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $email; ?>">
                    <span class="invalid-feedback"><?php echo $email_err; ?></span>
                </li>   
                <li>
                    <label>Jelszó</label>
                    <input type="password" name="password" class="form-control <?php echo (!empty($password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $password; ?>">
                    <span class="invalid-feedback"><?php echo $password_err; ?></span>
                </li>
                <li>
                    <label>Jelszó megerősítése</label>
                    <input type="password" name="confirm_password" class="form-control <?php echo (!empty($confirm_password_err)) ? 'is-invalid' : ''; ?>" value="<?php echo $confirm_password; ?>">
                    <span class="invalid-feedback"><?php echo $confirm_password_err; ?></span>
                </li>
                <li>
                    <label for="kert">Tudsz e kertet nyújtani állatoknak?</label>
                    <label for="kert-igen">Igen</label>
                    <input type="radio" id="kert-igen" name="kert" value="0">
                    <label for="kert-nem">Nem</label>
                    <input type="radio" id="kert-nem" name="kert" value="1">
                </li>
                <li>
                    <input type="submit" class="btn btn-primary" value="Submit">
                </li>
            </ul>
            <p>Van már fiókod? <a href="login.php">Jelentkezz be itt</a>!</p>
        </form>
    </div>    
</body>
</html>