<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>CAT BKPPD KAB. BALANGAN</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="description" content="Aplikasi Ujian Online berbasis web. Lebih Mudah dan Hemat, kayak AlfaMart">
<meta name="apple-mobile-web-app-capable" content="yes">
<link href="<?php echo base_url(); ?>___/css/bootstrap.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/css/style.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/plugin/jquery_loading/loading.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/plugin/jquery_confirm/msgbox.css" rel="stylesheet">	<link href="<?php echo base_url(); ?>___/plugin/jquery_notyfy/jquery.notyfy.css" rel='stylesheet' type='text/css' />
	<link href="<?php echo base_url(); ?>___/plugin/jquery_notyfy/themes/default.css" rel='stylesheet' type='text/css' />
<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script> 
</head>
<body>

<div class="container">
	<div class="col-md-2"></div>
	<div class="col-md-8">
	<div class="alert alert-success top25" role="alert">
		<h1 class="text-center"><i class="glyphicon glyphicon-check"></i> <br>Registrasi Berhasil.</h1>
		Anda telah sukses melakukan registrasi akun SIMULASI CAT, silahkan konfirmasi kepada admin atau panitia untuk <b>mengaktifkan</b> akun dan membuat PIN Sebagai Password anda.</u>.
		<br><br>
		<table class="table table-bordered bg-info">
			<tr>
				<th width="30%">Nomor Registrasi Peserta</th>
				<th width="5%">:</th>
				<th><?php echo $nik ?></th>
			</tr>
			<tr>
				<th>Nama Lengkap</th>
				<th>:</th>
				<th><?php echo $nama ?></th>
			</tr>
			<tr>
				<th>Status</th>
				<th>:</th>
				<th class="confirm-value">
					-
				</th>
			</tr>
		</table>
	<p class="info-confirm">
		Silahkan Cetak Kartu Peserta Terlebih dahulu sebelum konfirmasi akun !
	</p>	
	<p>
		<a target="_blank" href="<?= base_url('adm/kartupeserta_cetak/'.encrypt_decrypt('encrypt',$nik)) ?>" class="btn btn-primary btn-block top15">Cetak Kartu Peserta</a>
	</p>
	<p>
		<a onclick="konfirmasi()" href="#" id="btn-confirm" class="btn btn-warning btn-block top15">Konfirmasi Akun</a>
	</p>
	
	</div>
	</div>
	<div class="col-md-2"></div>
</div> 

<script src="<?php echo base_url(); ?>___/plugin/jquery_loading/jquery.loading.min.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/jquery_notyfy/jquery.notyfy.js"></script>
<script>
	cek_confirm_ajax();
	function cek_confirm_ajax() {
		$.getJSON('<?php echo base_url("adm/cek_confirm_ajax/".$nik) ?>', function(response) {
			if(response[0].ada == 0) { 
				var n = notyfy({text: '<b>Anda belum melakukan konfirmasi</b>, silahkan konfirmasi kepada admin atau panitia untuk mengaktifkan akun dan membuat PIN Sebagai Password anda.', type: 'warning'});
				$("tr th.confirm-value").html(`<span class="text-danger">Belum Konfirmasi</span>`);
			} else {
				$("tr th.confirm-value").html(`<span class="text-success">Aktif</span>`);
				$("a#btn-confirm, p.info-confirm").hide();
					$('body').loading({
	      			message: `<img src="<?php echo base_url('___/img/ajax-loader.gif') ?>"><br><br>Konfirmasi Sukses ...`,
	      			theme: 'light'
      				});
				
				setTimeout(() => {
					window.location.replace("<?= base_url('adm/daftar') ?>");
				}, 2000);
			}
		});
	}
	function konfirmasi() {
		// var tanya = confirm('Apakah akun sudah dikonfirmasi ke pengawas / admin ?');
		// if(tanya == true) {
		// 	window.location.replace("<?= base_url('adm/login') ?>");
		// }
		$.msgbox({ 
			'message' : 'Apakah akun sudah dikonfirmasi ke panitia / admin ?', 
			'type' : 'confirm', 
			'buttons' : [
					{'type' : 'yes', 'value': 'Ya, Sudah dikonfirmasi'}, 
					{'type' : 'no', 'value': 'Belum'}
					],
			'callback' : function(result){ 
				if(result == true) {
					cek_confirm_ajax();
				} else {
					var n = notyfy({text: 'Silahkan konfirmasi terlebih dahulu sebelum melakukan login.', type: 'error'});
				}
			} 
		}); 
	}
</script>
<script src="<?php echo base_url(); ?>___/js/bootstrap.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/jquery_confirm/msgbox.js"></script>

</body>
</html>

