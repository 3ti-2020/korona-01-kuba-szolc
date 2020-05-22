<!DOCTYPE html>
<html>
  <head>
    <title> Kuba Szolc</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="products.css" />
    
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
                <!-- <li class="menuList"> <a class="menuLink" href="laptopy.html">Peryferia</a></li>
                <li class="menuList"> <a class="menuLink" href="laptopy.html">Oprogramowanie</a></li>
                <li class="menuList"> <a class="menuLink" href="laptopy.html">Akcesoria</a></li> -->
              </ul>
            </div>
            <div class="icons">
              <!-- <img src="img/account.png">
              <img src="img/basket.png"> -->
              <div class="menuBurger">
                <div class="menuBar1"></div>
                <div class="menuBar2"></div>
                <div class="menuBar3"></div>
              </div>
            </div>
          </div>
      
      </div>

      <div class="main">
        <div class="filters">
          <div class="filtersButton">Filtruj <img src="img/filter.png"> </div>
          <div class="filtersBox">
          <form method="POST">
            <p class="filtersLine">
              Sortowanie:
              <select name="sortSelect"">
                <option value="ORDER BY produkty.id">Domyślnie</option>
                <option value="ORDER BY cena ASC">Cena: Rosnąco</option>
                <option value="ORDER BY cena DESC">Cena: Malejąco</option>
                <option value="ORDER BY marka ASC">Nazwa: A-Z</option>
                <option value="ORDER BY marka DESC">Nazwa: Z-A</option>
              </select>
            </p>
              
            <p class="filtersLine">
              Cena:
              <input type="text" name="minCena" placeholder="od">
              <input type="text" name="maxCena" placeholder="do">
            </p>
            
            <p class="filtersLine">
              Procesor:
              <?php
                require("conn.php");
                $result = $conn->query("SELECT * FROM produkty, parametry WHERE (produkty.model = parametry.model) AND (kategoria  = 'desktopy') GROUP BY procesor ");

                echo("<select name='procSelect'>");
                echo("<option></option>");
            
                while($row=$result->fetch_assoc() ){
                  echo("<option value=".$row['procesor'].">".$row['procesor']."</option>");
                }
                echo("</select>");
              ?>
            </p>

            <p class="filtersLine">
              RAM:
              <input type="text" name="minRam" placeholder="od">
              <input type="text" name="maxRam" placeholder="do">
            </p>

            <p class="filtersLine">
              ROM:
              <input type="text" name="minRom" placeholder="od">
              <input type="text" name="maxRom" placeholder="do">
            </p>

            <p class="filtersLine">
              System:
              <?php
                require("conn.php");
                $result = $conn->query("SELECT * FROM produkty, parametry WHERE (produkty.model = parametry.model) AND (kategoria  = 'desktopy') GROUP BY sysop");

                echo("<select name='systemSelect'>");
                echo("<option></option>");
            
                while($row=$result->fetch_assoc() ){
                  echo("<option value=".$row['sysop'].">".$row['sysop']."</option>");
                }
                echo("</select>");
              ?>
            </p>

            <p class="filtersLine"> 
              <input class="zastosuj" type="submit" value="Zastosuj">
            </p>

          </form>
          </div>
        </div>
        <div class="mainContent">
          <div class="products">
            <h1 class="productTitle">Wyniki:</h1>
            <div class="productBox">
              <?php
                require("conn.php");
                
                $sql = "SELECT * FROM produkty, parametry WHERE (produkty.model = parametry.model) AND (kategoria  = 'desktopy') ";


                
                if(!empty($_POST['minCena'])){
                  $minCena = $_POST['minCena'];
                  $sql.="AND (cena > $minCena) ";
                }

                if(!empty($_POST['maxCena'])){
                  $maxCena = $_POST['maxCena'];
                  $sql.="AND (cena < $maxCena) ";
                }
                if(!empty($_POST['minEkran'])){
                  $minEkran = $_POST['minEkran'];
                  $sql.="AND (ekran > $minEkran) ";
                }
                if(!empty($_POST['maxEkran'])){
                  $maxEkran = $_POST['maxEkran'];
                  $sql.="AND (ekran < $maxEkran) ";
                }
                if(!empty($_POST['procSelect'])){
                  $procSelect = $_POST['procSelect'];
                  echo($_POST['procSelect']."<br>");
                  $sql.= "AND (procesor LIKE '$procSelect') ";
                }
                if(!empty($_POST['minRam'])){
                  $minRam = $_POST['minRam'];
                  $sql.="AND (ram > $minRam) ";
                }
                if(!empty($_POST['maxRam'])){
                  $maxRam = $_POST['maxRam'];
                  $sql.="AND (ram < $maxRam) ";
                }
                if(!empty($_POST['minRom'])){
                  $minRom = $_POST['minRom'];
                  $sql.="AND (rom > $minRom) ";
                }
                if(!empty($_POST['maxRom'])){
                  $maxRom = $_POST['maxRom'];
                  $sql.="(AND rom < $maxRom) ";
                }
                if(!empty($_POST['systemSelect'])){
                  $systemSelect = $_POST['systemSelect'];
                  echo($systemSelect);
                  $sql.="AND (sysop = '$systemSelect') ";
                }
                if(isset($_POST['sortSelect'])){
                  $sort = $_POST['sortSelect'];
                  $sql.= $sort;
                }
                // echo("<br>".$sql."<br>");
              ?>
              <?php
                $result = $conn->query($sql);
              
                while($row=$result->fetch_assoc() ){
                    echo("<div class='card'>");
                      echo("<img src=".$row['img'].">");
                      echo("<h2>".$row['marka']." ".$row['model']. "</h2>");
                      echo("<h3>".$row['cena']." zł"."</h3>");
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
          </div>
        </div>
        
        
      </div>
      <div class="footer">tu raczej bedzie jakas stopka ale w sumie po co</div>
    </div>

    <script src="index.js"></script>
  </body>
</html>
