<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://code.cdn.mozilla.net/fonts/fira.css">
    <link rel="stylesheet" href="style.css">
    <title>Fakutya - Kutyafa Nonprofit Civil Összefogás</title>
</head>

<body>
    <div class="site-container">
        <div class="header">
            <nav>
                <a href="index.html">Főoldal</a>
                <a href="allatok.php" class="active">Állataink</a>
                <a href="">Menhely</a><!-- nem oldal hanem dropdown -->
                
                <a href="">Elérhetőségek</a><!-- megse lesz oldal hanem popup -->
                
            </nav>
        </div>

        <div class="main">
            <div class="allatok-container">
                <div class="allatok-search">

                </div>
                <div class="allatok-grid">
                    <?php
                    $generated = '';
                    $generated .= "<table class=\"allatok\" border='1'>";
                        for ($x = 1; $x <= 10; $x++) {
                            $generated .= "<td> $x </td>";
                            if  ($x % 2 == 0) {
                                $generated .= "</tr>";
                            } elseif ( $x == 0) {

                            }
                        }
                    $generated .= "</table>";
                    echo $generated;
                    ?>
                </div>
            </div>
                
        </div>

        <div class="footer">

        </div>

    </div>

</body>

</html>