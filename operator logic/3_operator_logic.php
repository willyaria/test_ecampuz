<html>
<head>

</head>
<body>
    <h3>Soal No 3</h3>
    <br>
    <?php
        function pembagian($angka,$pembagi) {
            if ($angka<$pembagi) {
                return 0;
            } else {
                return 1+(pembagian($angka-$pembagi,$pembagi));
            }
        }
        echo "7 : 2 = ". pembagian(7,2)."<br>";
        echo "8 : 4 = ". pembagian(8,4);
    ?>
</body>
</html>