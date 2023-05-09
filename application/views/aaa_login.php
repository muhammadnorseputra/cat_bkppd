<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html lang="zxx">

<head>
	<title>CBT BKPSDM KAB. BALANGAN</title>
	<!-- Meta-Tags -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Aplikasi Ujian Online berbasis web.">
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- //Meta-Tags -->
	<meta name="apple-mobile-web-app-capable" content="yes">
	<link href="<?php echo base_url(); ?>___/css/bootstrap.css" rel="stylesheet">
	<!-- Stylesheets -->
	<link href="<?php echo base_url(); ?>___/css/style_login.css" rel='stylesheet' type='text/css' />
	<link href="<?php echo base_url(); ?>___/plugin/jquery_notyfy/jquery.notyfy.css" rel='stylesheet' type='text/css' />
	<link href="<?php echo base_url(); ?>___/plugin/jquery_notyfy/themes/default.css" rel='stylesheet' type='text/css' />
	<!--// Stylesheets -->
	<!--online fonts-->
	<link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
	
</head>

<body>
	<h1>Login Aplikasi</h1>
	<div class="w3ls-login box">
		<img src="<?php echo base_url(); ?>___/img/bg1.png" alt="logo_img" />
		<!-- form starts here -->

		<form action="#" method="post" name="fl" id="f_login" onsubmit="return login();">
			<div id="konfirmasi" style="width:100%;"></div>
			<div class="agile-field-txt">

				<input type="text" name="username" id="username" placeholder="Masukan Nomor Peserta" required="" value="<?php echo $this->session->userdata('nik'); ?>" />
			</div>
			<div class="agile-field-txt">
				<input type="password" name="password" placeholder="Masukan PIN" required="" id="password" />
			</div>
			<div class="w3ls-bot">
				<input type="submit" value="LOGIN" style="padding: 18px">
				<!-- <hr>
				<a href="<?php echo base_url('adm/daftar') ?>" class="btn btn-lg btn-block btn-primary"> Belum punya akun ? Daftar Sekarang.</a> -->
			</div>
		</form>

	</div>
	<!-- //form ends here -->
	<!--copyright-->
	<div class="copy-wthree">
		<p><?php echo $this->config->item('nama_aplikasi').' '.$this->config->item('versi'); ?> | Badan Kepegawaian Pendidikan dan Pelatihan Daerah KAB. Balangan</p>
	</div>
	<!--//copyright-->
	<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script>
	<script src="<?php echo base_url(); ?>___/plugin/jquery_notyfy/jquery.notyfy.js"></script>
	<script type="text/javascript">
	base_url = "<?php echo base_url(); ?>";
	uri_js = "<?php echo $this->config->item('uri_js'); ?>";
	</script>
	<script src="<?php echo base_url(); ?>___/js/aplikasi.js"></script> 
</body>

</html>