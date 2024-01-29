<?php
     $con = mysqli_connect("localhost","root","","kios_wotosf"); 

     // cek connection
     if (mysqli_connect_errno()){
          echo "Failed to connect to MySQL: " . mysqli_connect_error();
          exit();
     }

    
?>