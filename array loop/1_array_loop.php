<html>
<head>

</head>
<body>
    <h3>Soal No 1</h3>
    <br>
    <?php
        $aplikasi = array("gtAkademik","gtFinansi","gtPerizinan","eCampuz","eOviz");
        $i = 0;
        
        while($i < count($aplikasi)){
            echo "Aplikasi " . $aplikasi[$i] . "<br>";
            $i++;
            
        }
    ?>

</body>
</html>