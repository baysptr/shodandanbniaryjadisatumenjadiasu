<?php

$ip = $_GET['ip'];

$curls = curl_init();
curl_setopt_array($curls, [
    CURLOPT_RETURNTRANSFER => 1,
    CURLOPT_HTTPHEADER => ["X-Key:ce93a1c4-95f2-464b-ab21-905ac13b0d58"],
    CURLOPT_URL => 'https://api.binaryedge.io/v2/query/score/ip/'. $ip
]);
$resps = json_decode(curl_exec($curls), true);
curl_close($curl);

echo "<pre>";
print_r($resps);
echo "</pre>";