<?php 
error_reporting(0);
$twk = $this->uri->segment(3);
$tiu = $this->uri->segment(4);
$tkp = $this->uri->segment(5);
?>
<!DOCTYPE html>
<html>
<head>
  <title>Monitoring Hasil Ujian</title>
  <link href='<?php echo base_url(); ?>___/css/style_print.css' rel='stylesheet' media='' type='text/css'/>
  <style>
.table-responsive{
  height:65vh; width:100%;
  overflow-y: hidden;
  border:1px solid #444;
}.table-responsive:hover{border-color:red;}

table{width:100%;}
td{padding:50px; background:#eee;}
.tanggal { float:  right; }
  </style>
</head>
<body>

<span class="tanggal"><?php echo tjs(date('Y-m-d H:i:s'), 's') ?> 
<button type="button" onclick="javascript:print()">Cetak Rekapitulasi</button></span>
<h3>Monitoring Hasil Ujian CAT BKPPD Kab. Balangan</h3>
<div style="clear:both;"></div>
<hr style="border: solid 1px #000"><br>

<img src="<?php echo base_url('___/img/logokab.png') ?>" width="60" alt="logokab" style="float:right; margin-bottom:10px; margin-right: 20px;">
<h4>Detil Ujian</h4>
<table class="table-bordered" style="margin-bottom: 0px; width:50%">
  <tr>
    <td>Jumlah Soal</td>
    <td><b><?php echo $detil_tes->jmlSoal; ?></b></td>
    <td>Jumlah Peserta</td>
    <td><b><?php echo $this->monitoring->jumlahPeserta() ?> Orang</b></td>
    
  </tr>
  
  <tr>
    <td>Waktu</td>
    <td><b><?php echo $waktu_tes->waktuUjuan; ?> menit</b></td>
    <td>Nilai Tertinggi</td>
    <td><b><?php echo $this->monitoring->nilaiTertinggi($twk, $tiu, $tkp) ?></b></td>
  </tr>
  <tr>
<!--   <td>Waktu Server</td>
    <td><b><?php echo "10:10" ?></b></td>
  </tr>   -->
</table>
<br><br>
<div id="waktu" style="float:right;"></div>
<h4>Hasil Ujian</h4>
<div class="table-responsive" id="printlayer">
<table class="table-bordered">
  <thead>
    <tr>
      <th width="5%">No</th>
      <th width="10%">Status</th>
      <th width="30%">Nama Peserta</th>
      <th width="15%">TWK</th>
      <th width="15%">TIU</th>
      <th width="15%">TKP</th>
      <th width="10%">Nilai Akhir</th>
    </tr>
  </thead>

  <tbody>
    <?php 
      if (!empty($hasil)) {
        $no = 1;
        $twk = $this->uri->segment(3);
        $tiu = $this->uri->segment(4);
        $tkp = $this->uri->segment(5);
        foreach ($hasil as $d) {
          $status = $this->monitoring->nilai_per_bidang($twk, $d->id_user) != 0 && 
                    $this->monitoring->nilai_per_bidang($tiu, $d->id_user) != 0 && 
                    $this->monitoring->nilai_per_bidang($tkp, $d->id_user) != 0 ? "Selesai" : "Belum Selesai";
          // $status = $d->status == "N" ? "Selesai" : "Belum Selesai";
          echo '<tr>
                <td class="ctr">'.$no.'</td>
                <td>'.$status.'</td>
                <td>'.$d->nama.'</td>
                <td class="ctr">'.$this->monitoring->nilai_per_bidang($twk, $d->id_user).'</td>
                <td class="ctr">'.$this->monitoring->nilai_per_bidang($tiu, $d->id_user).'</td>
                <td class="ctr">'.$this->monitoring->nilai_per_bidang($tkp, $d->id_user).'</td>
                <td class="ctr">'.$this->monitoring->nilai_akhir($d->id_user).'</td>
                </tr>
                ';
        $no++;
        }
      } else {
        echo '<tr><td colspan="7">Belum ada data</td></tr>';
      }
    ?>
  </tbody>
</table>
</div>

<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script>

<script>
var $el = $(".table-responsive");
var $thead = $(".table-responsive table thead");
function anim() {
  var st = $el.scrollTop();
  var sb = $el.prop("scrollHeight")-$el.innerHeight();
  $el.animate({scrollTop: st<sb/1 ? sb : 0}, 20000, anim);
}
function stop(){
  $el.stop();
}
function refresh() {
    window.location.reload();
}
// setInterval(refresh, 20000);
anim();
$el.hover(stop, anim);

</script>
<script>
  var jml = <?php echo $this->monitoring->jumlahPeserta() ?>; // dalam detik
  if(jml == 1 || jml == 2 || jml == 3 || jml == 4 || jml == 5 || jml == 6 || jml == 7 || jml == 8 || jml == 0) {
    count = 8;
  } else {
    count = jml;
  }
  function countDown() {
      if (count > 0) {
          count--;
          var waktu = count + 1;
          $('#waktu').html('<b>Direfresh dalam: </b> ' + waktu + ' detik.');
          setTimeout("countDown()", 1000);
      } else {
          refresh();
      }
  }
  countDown();
</script>
</body>
</html>
