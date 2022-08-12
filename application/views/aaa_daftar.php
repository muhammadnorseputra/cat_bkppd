
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
<link href="<?php echo base_url(); ?>___/plugin/jquery_confirm/msgbox.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/plugin/jquery_datepicker/css/bootstrap-datepicker.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/plugin/jquery_validator/theme-default.min.css" rel="stylesheet">
<link href="<?php echo base_url(); ?>___/plugin/selectizejs/public/themes/modern-v2/selectric.css" rel="stylesheet">

<link href="//fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&display=swap" rel="stylesheet"> 
<style>
	html, body, * {
		font-family: 'Open Sans', sans-serif;
		font-size: 14px;
		line-height: 1.25em;
	}
	/* Add ajax preloader when server is being requested */
  .validating-server-side {
    background: url("<?= base_url('___/img/ajax-loader.gif') ?>") no-repeat center right;
    opacity: 0.6;
    margin-right: 15px;
  }
</style>
</head>
<body>

<div class="container top15">
	<div class="col-md-4 text-center order-last">
		
		<img src="<?php echo base_url(); ?>___/img/bg1.png" alt="logo_img" />
		<div class="alert alert-default">
			<b>Selamat datang di simulasi cat versi bkppd.</b>
			<br><br>
			<p class="text-left">
				Sebelum memilai ujian, lakukan registrasi akun.
			</p>
		</div>
				
	<div class="alert alert-warning top15" role="alert">
		<i class="glyphicon glyphicon-info-sign"></i> 
		Sudah memiliki akun ? 
		<a href="<?= base_url('adm/login') ?>" class="btn btn-default btn-sm"><i class="glyphicon glyphicon-lock"></i>  Login disini</a>
		
	</div>	
	</div>
	<div class="col-md-8">


	<form action="<?php echo base_url('adm/act_daftar') ?>" method="post" id="f_daftar">
		<div class="panel panel-default top15">
			<div class="panel-heading"><h4 style="margin: 5px"><i class="glyphicon glyphicon-user"></i> &nbsp; Registrasi Akun </h4></div>
			<div class="panel-body">
				<div id="konfirmasi"></div>
				<div class="row">
					<div class="col-md-6">
						<label for="noktp">No. Registrasi Peserta</label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
							<input 
							data-validation="server|required|length|number" 
							data-validation-url="<?php echo base_url('adm/cek_nik'); ?>"
							data-validation-length="min8"
							data-validation-length="max8"  
							data-validation-error-msg-container="p.help-block-nik" data-validation-error-msg-required="Nomor registrasi wajib diisi" data-validation-error-msg-length="Nilai input minimal & maksimal 8 angka" data-validation-error-msg-number="Jenis format hanya boleh angka" 
							type="text" id="noktp" name="noktp" placeholder="No. Registrasi Peserta" class="form-control"/>
						</div> <!-- /password -->
						<p class="help-block-nik text-right"></p>
						<hr>
						<label for="namalengkap ">Nama Lengkap</label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							<input data-validation="required alphanumeric"  data-validation-allowing="._' " data-validation-error-msg-container="p.help-block-name" data-validation-error-msg-required="Nama lengkap tidak boleh kosong " type="text" id="namalengkap" name="namalengkap" value="" placeholder="Nama lengkap" class="form-control" />
						</div> <!-- /field -->
						<p class="help-block-name text-right"></p>
						<hr>
						<label for="tgllahir ">Tanggal Lahir</label>
						<div id="sandbox-container">
						<div class="input-group date">
							<span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
							<input data-validation="required|date" 
							data-validation-format="dd-mm-yyyy"  data-validation-error-msg-container="p.help-block-tgllahir" data-validation-error-msg-required="Tanggal Lahir tidak boleh kosong " type="text" id="tgllahir" name="tgllahir" placeholder="Tanggal Lahir" class="form-control" />
						</div> <!-- /field -->
						</div>
						<p class="help-block-tgllahir text-right"></p>
						<hr>
						<label for="pendidikan">Pendidikan Terakhir</label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
							<select data-validation="required" data-validation-error-msg-container="p.help-block-pendidikan"  data-validation-error-msg-required="Pendidikan terkahir belum dipilih" name="pendidikan" id="pendidikan" class="form-control">
								<option value="">-- Pilih Pendidikan --</option>
								<option value="s1">S-1</option>
								<option value="s2">S-2</option>
								<option value="s3">S-3</option>
								<option value="d1">D1</option>
								<option value="d2">D2</option>
								<option value="d3">D3</option>
								<option value="d4">D4</option>
								<option value="slta">SMA / SMK / SLTA</option>
								<option value="sltp">MADRASAH / SMP / SLTP</option>
								<option value="sd">SD Sederajat</option>
								<option value="tidaksekolah">Tidak Sekolah / Tidak Tamat Sekolah</option>
							</select>
						</div> <!-- /password -->
						<p class="help-block-pendidikan text-right"></p>
						<hr>
						<div class="input-group">
							<input data-validation="recaptcha">
						</div> <!-- /field -->
					</div>
					<div class="col-md-6">			

						<label for="provinsi">Provinsi</label>
						<div class="input-group">
							<span class="input-group-addon"><i class=" glyphicon glyphicon-home "></i></span>
							<select data-validation="required" data-validation-error-msg-container="p.help-block-provinsi"  data-validation-error-msg-required="provinsi belum dipilih" name="provinsi" id="provinsi" class="form-control">
								
							</select>
						</div> <!-- /password -->
						<p class="help-block-provinsi text-right"></p>
						<hr>	
						<label for="kabupaten">Kabupaten / Kota</label>
						<div class="input-group">
							<span class="input-group-addon"><i class=" glyphicon glyphicon-home "></i></span>
							<select data-validation="required" data-validation-error-msg-container="p.help-block-kabupaten"  data-validation-error-msg-required="kabupaten belum dipilih" name="kabupaten" id="kabupaten" class="form-control">
								<option value=''>-- Pilih kabupaten --</option>
							</select>
						</div> <!-- /password -->
						<p class="help-block-kabupaten text-right"></p>
						<hr>
						<label for="kecamatan">Ketamatan</label>
						<div class="input-group">
							<span class="input-group-addon"><i class=" glyphicon glyphicon-home "></i></span>
							<select data-validation="required" data-validation-error-msg-container="p.help-block-kecamatan"  data-validation-error-msg-required="kecamatan belum dipilih" name="kecamatan" id="kecamatan" class="form-control">
								<option value=''>-- Pilih Kecamatan --</option>
							</select>
						</div> <!-- /password -->
						<p class="help-block-kecamatan text-right"></p>
						
						<hr>
						<div class="alert alert-warning">
						<span class="text-mutted">Masukan nomor hp yang aktif. Kami akan mengirimkan sms / telpon jika anda terpilih sebagai pemenang dalam simulasi.</span><br>
						<label for="nohp">No. HP (aktif)</label>
						<div class="input-group">
							<span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
							<input data-validation="required|number|length" data-validation-error-msg-container="p.help-block-nohp" data-validation-length="max12"  data-validation-error-msg-required="Nomor hp wajib diisi" type="tel" id="nohp" name="nohp"  placeholder="No. HP" class="form-control" />
						</div> <!-- /password -->
							<p class="help-block-nohp text-left text-sm">Contoh: 0821********</p>

						</div>
						<hr>		
					</div>
				</div>
				
							
				<div class="login-actions">
					<button type="submit" class="btn btn btn-primary btn-large col-lg-12 top15"><i class="glyphicon glyphicon-saved" style="margin-right: 10px;"></i> Submit </button>
				</div> <!-- .actions -->
			</div>
		</div> <!-- /login-fields -->
		
		
	</form>
	</div>
</div> 


<script src="<?php echo base_url(); ?>___/js/jquery-1.11.3.min.js"></script> 
<script src="<?php echo base_url(); ?>___/js/bootstrap.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/inputmask/dist/jquery.inputmask.min.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/inputmask/dist/bindings/inputmask.binding.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/jquery_loading/jquery.loading.min.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/jquery_confirm/msgbox.js"></script>

<script src="<?php echo base_url(); ?>___/plugin/jquery_validator/jquery.form-validator.min.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/jquery_validator/security.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/selectizejs/public/jquery.selectric.min.js"></script>

<script src="<?php echo base_url(); ?>___/plugin/jquery_datepicker/js/bootstrap-datepicker.min.js"></script>
<script src="<?php echo base_url(); ?>___/plugin/jquery_datepicker/locales/bootstrap-datepicker.id.min.js"></script>

<script type="text/javascript">

	base_url = "<?php echo base_url(); ?>";
	uri_js = "<?php echo $this->config->item('uri_js'); ?>";

	$(document).ready(function(){
    // Datepicker
    $('#sandbox-container .input-group.date').datepicker({
        format: "dd-mm-yyyy",
        todayBtn: "linked",
        language: "id",
        clearBtn: true,
        todayHighlight: true,
        toggleActive: true
    });
    // Select JS
	$("select").selectric();
	$.get('<?php echo base_url("adm/list_provinsi") ?>', function(result) {
		$("select[name='provinsi']").html(result).selectric();
	});	
	
	$("select[name='provinsi']").on('change', function() {
		// alert(this.value);
		$.get('<?php echo base_url("adm/list_kabupaten") ?>', {id: this.value}, function(result) {
			$("select[name='kabupaten']").html(result).selectric('refresh');
		}, 'html').then(() => {
			$('body').loading({
				message: `<img src="<?php echo base_url('___/img/ajax-loader.gif') ?>"><br><br>Mencari Kabupaten / Kota ...`,
			});
		}).done(() => {
			$('body').loading('stop');
		});		
	});

	$("select[name='kabupaten']").on('change', function() {
		// alert(this.value);
		$.get('<?php echo base_url("adm/list_kecamatan") ?>', {id: this.value}, function(result) {
			$("select[name='kecamatan']").html(result).selectric('refresh');
			// alert(result);
		}, 'html').then(() => {
			$('body').loading({
				message: `<img src="<?php echo base_url('___/img/ajax-loader.gif') ?>"><br><br>Mencari Kecamatan ...`,
			});
		}).done(() => {
			$('body').loading('stop');
		});
	});

	// Mask JS
	$("input[name='noktp']").inputmask({ mask: "*{0,18}", 
	   	greedy: true, 
	   	"placeholder": "_",
	    showMaskOnHover: false,
  		showMaskOnFocus: false,});
	   $("input[name='nohp']").inputmask("*{0,12}", {
	   	showMaskOnHover: false,
  		showMaskOnFocus: false,
	   });
	  $("input[name='tgllahir']").inputmask("99-99-9999",{ "placeholder": "dd-mm-yyyy" });
	});

	// Validator Language
	var myLanguage = { 
        errorTitle : ' Pengiriman formulir gagal!' , 
        requiredFields : 'Anda belum menjawab semua bidang wajib' , 
        required: 'Bidang ini tidak boleh kosong'
    };
    // Validator Form
	$.validate({
    form : '#f_daftar',
    modules : 'security, toggleDisabled',
    reCaptchaSiteKey: '6Lc75uIUAAAAAOhP7ufQji3xLzMA6beOh07UqUJI',
    reCaptchaTheme: 'dark',
    disabledFormFilter : 'form.toggle-disabled',
    showErrorDialogs : false,
    language : myLanguage,
    onError : function($form) {
      // alert('Formulir tidak lengkap !');
      $.msgbox({ 'message' : 'Formulir tidak lengkap', 'type' : 'error', 'buttons' : [{'type': 'close', 'value': 'Exit'}], }); 
    },
    onSuccess : function($form) {

      $.ajax({
      	url: $form.attr('action'),
      	method: 'POST',
      	data: $form.serialize(),
      	beforeSend: function() {
      		$('body').loading({
      			message: `<img src="<?php echo base_url('___/img/ajax-loader.gif') ?>"><br><br>Mendaftarkan Mohon Tunggu ...`,
      			theme: 'dark'
      		});
      	},
      	dataType: 'json',
      	success: function(response) {
      		if(response.msg === 200) {
      			window.location.replace("<?= base_url('adm/daftar_sukses') ?>");
      			$form.get(0).reset();
      			$('body').loading('stop');
      		} 
      	},
      	error: function(error) {
      		alert('error');
      	}	
      });
      return false; // Will stop the submission of the form
    }
  });

    
</script>
</body>
</html>