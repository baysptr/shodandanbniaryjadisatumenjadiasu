<!doctype html>
<html lang="en" class="h-100">
<head>
    <meta charset="utf-8">
    <title>Damara | Tools</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="https://getbootstrap.com/docs/4.3/examples/sticky-footer/sticky-footer.css" rel="stylesheet">
</head>
<body class="d-flex flex-column h-100">
<!-- Begin page content -->
<main role="main" class="flex-shrink-0">
    <div class="container">
        <div class="mt-5">
            <button type="button" class="btn btn-sm btn-warning" onclick="window.location='index.php';">Back</button><br/>
            <h3>Model / Merk perangkat Target: <strong><?= $_POST['model'] ?></strong></h3><hr/>
            <div class="accordion" id="accordionExample">
                <?php
                date_default_timezone_set("Asia/Jakarta");
                include "config.php";

                $model = strtoupper($_POST['model']);
                $id_shodan = "";

                $r = mysqli_query($conn, "select * from shodan where model = '$model'");
                $c = mysqli_num_rows($r);
                if($c > 0){
                    $h = mysqli_fetch_assoc($r);
                    $id_shodan = $h['id'];
                }else{
                    $t = date("Y-m-d H:i:s");
                    mysqli_query($conn, "insert into shodan (model, tgl_update) values ('$model', '$t')");
                    $q = mysqli_query($conn, "select * from shodan where model = '$model'");
                    $w = mysqli_num_rows($q);
                    $id_shodan = $w['id'];
                }

                $curl = curl_init();
                curl_setopt_array($curl, [
                    CURLOPT_RETURNTRANSFER => 1,
                    CURLOPT_URL => 'https://api.shodan.io/shodan/host/search?key=ON7eVr60VrpxxWlVt1pFxkcU9kGNEUqi&query='.$model
                ]);
                $resp = json_decode(curl_exec($curl), true);
                curl_close($curl);
                for($i=0; $i<4; $i++){?>
                    <div class="card">
                        <div class="card-header" id="heading<?= $i ?>">
                            <h2 class="mb-0">
                                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapse<?= $i ?>" aria-expanded="true" aria-controls="collapse<?= $i ?>">
                                    #<?= $i ?>&nbsp;&nbsp;&nbsp;&nbsp;Domains: <strong><?= ($resp['matches'][$i]['domains'][0]=="") ? "Domains not Available" : $resp['matches'][$i]['domains'][0] ?></strong> / IP: <strong><?= $resp['matches'][$i]['ip_str'] ?></strong>
                                </button>
                            </h2>
                        </div>
                        <div id="collapse<?= $i ?>" class="collapse" aria-labelledby="heading<?= $i ?>" data-parent="#accordionExample">
                            <div class="card-body">
                                <?php
                                $curls = curl_init();
                                curl_setopt_array($curls, [
                                    CURLOPT_RETURNTRANSFER => 1,
                                    CURLOPT_HTTPHEADER => ["X-Key:ce93a1c4-95f2-464b-ab21-905ac13b0d58"],
                                    CURLOPT_URL => 'https://api.binaryedge.io/v2/query/score/ip/'. $resp['matches'][$i]['ip_str']
                                ]);
                                $resps = json_decode(curl_exec($curls), true);
                                curl_close($curl);
                                ?>
                                <table class="table">
                                    <tr>
                                        <td>Score</td>
                                        <td>Open Port</td>
                                        <td>Score CVE</td>
                                        <td>Hackable</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td><?= $resps['normalized_ip_score'] ?></td>
                                        <td>
                                            <?php
                                            foreach ($resps['results_detailed']['ports']['open'] as $key => $val) {
                                                echo $val . '; ';
                                            }
                                            ?>
                                        </td>
                                        <td><?= $resps['normalized_ip_score_detailed']['cve'] ?></td>
                                        <td><?= ($resps['normalized_ip_score_detailed']['cve'] > 51) ? "POSITIVE" : "NEGATIVE" ?></td>
                                        <td><a href="get.php?ip=<?= $resp['matches'][$i]['ip_str'] ?>">Detail</a> </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div><br/>
</main>

<footer class="footer mt-auto py-3">
    <div class="container">
        <span class="text-muted">Damara Celalu Cayang Kamoe &copy; 1900 M</span>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>