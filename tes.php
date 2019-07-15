<?php
include "config.php";
$q = mysqli_query($conn, "select * from edbinary where ips = '121.22.41.122'");
$w = mysqli_fetch_assoc($q);
print_r(json_decode($w['file_json']));