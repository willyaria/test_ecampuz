<html>
<head>

</head>
<body>
    <h3>Soal No 4</h3>
    <br>
    <?php
        for ($a=1; $a<=50; $a=$a+1) {
            if ($a%3==0 && $a%5!=0) {
                echo "Foo";
            } else if ($a%5==0 && $a%3!=0) {
                echo "Bar";
            } else if ($a%3==0 && $a%5==0) {
                echo "FooBar";
            } else {
                echo $a;
            }
        }
    ?>
</body>
</html>