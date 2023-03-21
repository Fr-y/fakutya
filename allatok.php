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
                    <div class="wrapper">
                        <?php
                            $html = '';
                            $totalItemPerLine = 3;
                            $totalItem = 7;
                            for($i = 0; $i < $totalItem; $i++)
                            {
                                if($i % $totalItemPerLine == 0)
                                {
                                    $html .= '<div class="row">'; // OPEN ROW
                                }
                            
                                $html .= '<div class="col">'.$i.'</div>';
                            
                                if($i % $totalItemPerLine == ($totalItemPerLine-1) || $i == ($totalItem-1))
                                {
                                    $html .= '</div>'; // CLOSE ROW
                                }
                            }   
                            echo $html;
                        ?>
                    </div>        
                </div>
            </div>
                
        </div>

        <div class="footer">

        </div>

    </div>

</body>

</html>