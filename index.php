<!DOCTYPE html>
<html>
  <head>
    <title> Kuba Szolc</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" />
  </head>

  <body>
    <div class="content">
      <div class="header">
          <div class="headingBanner">
            <div class="title">
              <a href="index.php">
                <h1>Kuba Szolc</h1>
                <h2>Korona-01</h2>
              </a>
            </div>
            <div class="menuContent">
              <ul class="menuMain">
                <li class="menuList"> <a class="menuLink" href="laptopy.php">Laptopy</a> </li>
                <li class="menuList"> <a class="menuLink" href="smartfony.php">Smartfony</a></li>
                <li class="menuList"> <a class="menuLink" href="desktopy.php">Desktopy</a></li>
              </ul>
            </div>
            <div class="icons">
              <div class="menuBurger">
                <div class="menuBar1"></div>
                <div class="menuBar2"></div>
                <div class="menuBar3"></div>
              </div>
            </div>
          </div>
        <div class="headerContent"></div>
      
      </div>
      <div class="main">
      
        <div class="products">
          <h1 class="productTitle">Promocje:</h1>
          <div class="productBox">

            <?php
            require("conn.php");
            
            $result = $conn->query("SELECT * FROM produkty, parametry WHERE produkty.model = parametry.model AND staracena!=0 ORDER BY produkty.model");

            while($row=$result->fetch_assoc() ){
                echo("<div class='card'>");
                  echo("<img src=".$row['img'].">");
                  echo("<h2>".$row['marka']." ".$row['model']. "</h2>");
                  echo("<h3 class='staracena'>".$row['staracena']." zł"."</h3>");
                  echo("<h2 class='promocja'>".$row['cena']." zł"."</h2>");
                  echo("<ul class='cardParametersList'>");
                    echo("<li>"."Procesor: ".$row['procesor']." ".$row['procesormodel']."</li>");
                    echo("<li>"."RAM: ".$row['ram']." GB"."</li>");
                    echo("<li>"."ROM: ".$row['rom']." GB"."</li>");
                    echo("<li>"."System: ".$row['sysop']."</li>");
                    echo("<li>"."Grafika: ".$row['grafika']."</li>");
                  echo("</ul>");
                echo("</div>");
            }
        ?>
          </div>
        </div>
        
      </div>
      <div class="footer">tu raczej bedzie jakas stopka ale w sumie po co</div>
    </div>

    <script src="index.js"></script>
  </body>
</html>
