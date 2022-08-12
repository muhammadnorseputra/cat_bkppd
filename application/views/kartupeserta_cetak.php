<!DOCTYPE html>
<html>
<head>
  <title>KARTU PESERTA</title>
  <link href='<?php echo base_url(); ?>___/css/style_kartupeserta.css' rel='stylesheet' media='screen' type='text/css'/>
</head>
<body onload="window.print()">
<table width="700" cellpadding="8" border="1" align="center">
  <tbody>
    <tr>
      <td align="center" valign="center" width="100" rowspan="5" style="color: #ddd;">
      <img src="<?= $qr ?>" width="150"/>
      </td>
    </tr>
    <tr>
      <td colspan="3" align="center"><strong>KARTU PESERTA SIMULASI CAT BKPSDM</strong></td>
    </tr>
    <tr>
      <td width="100">Nama</td>
      <td align="center" width="20">:</td>
      <td><?= strtoupper($data_peserta->nama) ?></td>
    </tr>
    <tr>
      <td width="100">Nomor Peserta</td>
      <td align="center" width="20">:</td>
      <td><?= strtoupper($data_peserta->nim) ?></td>
    </tr>
    <tr>
      <td align="left" bgcolor="#fcfcfc" valign="center" width="100" colspan="4" height="50" style="color: #eee; font-size:32px;">PIN :</td>
    </tr>
    <tr>
      <td align="left" valign="center" width="100" colspan="4" class="note">*) Silahkan berikan kartu ini kepada panitia seleksi CAT untuk pemberian PIN.</td>
    </tr>
    <tr>
      <td align="left" valign="center" width="100" colspan="4" class="note">Created by CAT BKPSDM :: <?= date('d-m-Y H:i:s') ?></td>
    </tr>
  </tbody>
</table>
</body>
</html>
