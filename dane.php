<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="style.css">
    <title>Document</title>
</head>
<body>
    <div class="srd">
        <?php
            $servername = "localhost";
            $username = "root";
            $password = "zaq1@WSX";
            $dbname = "kubaszolc";

            $conn = new mysqli($servername, $username, $password, $dbname);

            $result = $conn->query("SELECT * FROM produkty, Parametry WHERE produkty.model = Parametry.model ORDER BY produkty.cena DESC");

            echo("<h4>SELECT * FROM produkty, Parametry WHERE produkty.model = Parametry.model </h4>");
            echo("<table class='tabelka' border=1> ");
            echo("<tr>
            <th>marka</th>
            <th>model</th>
            <th>cena</th>
            <th>ekran</th>
            <th>procesor</th>
            <th>RAM</th>
            <th>ROM</th>
            <th>system</th>
            <th>grafika</th>
            </tr>");

            while($row=$result->fetch_assoc() ){
                echo("<tr>");
                echo("<td>".$row['marka']."</td>");
                echo("<td>".$row['model']."</td>");
                echo("<td>".$row['cena']."</td>");
                echo("<td>".$row['ekran']."</td>");
                echo("<td>".$row['procesor']."</td>");
                echo("<td>".$row['RAM']."</td>");
                echo("<td>".$row['ROM']."</td>");
                echo("<td>".$row['system']."</td>");
                echo("<td>".$row['grafika']."</td>");
                echo("</tr>");
            }
            echo("</table>");
        ?>
    </div>
</body>
</html>