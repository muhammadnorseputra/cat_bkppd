<div class="row col-md-12 ini_bodi">
  <div class="panel panel-info">
    <div class="panel-heading">Data Siswa
      <?php if($this->session->userdata('admin_level') == 'admin' || $this->session->userdata('admin_level') == 'registrasi'): ?>
      <div class="tombol-kanan">
        <a class="btn btn-success btn-sm tombol-kanan" href="#" onclick="return m_siswa_e(0);"><i class="glyphicon glyphicon-plus"></i> &nbsp;&nbsp;Tambah</a>        
        <a class="btn btn-warning btn-sm tombol-kanan" href="<?php echo base_url(); ?>upload/format_import_siswa.xlsx" ><i class="glyphicon glyphicon-download"></i> &nbsp;&nbsp;Download Format Import</a>
        <a class="btn btn-info btn-sm tombol-kanan" href="<?php echo base_url(); ?>adm/m_siswa/import" ><i class="glyphicon glyphicon-upload"></i> &nbsp;&nbsp;Import</a>
      </div>
    <?php endif; ?>
    </div>
    <div class="panel-body">
      <a href="#" onclick="reloadTable();" class="btn btn-info" style="margin-bottom: 10px"><i class="fa fa-users"></i> Reload Table</a>
      <table class="table table-bordered" id="datatabel">
        <thead>
          <tr>
            <th width="5%">No</th>
            <th width="10%">Pin</th>
            <th width="25%">Nama</th>

            <th width="20">No.Peserta</th>
            <th width="5%">Pendidikan</th>

            <th width="35%">Aksi</th>
          </tr>
        </thead>

        <tbody></tbody>
      </table>
    
      </div>
    </div>
  </div>
</div>
                    
<div class="modal fade" id="m_siswa" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 id="myModalLabel">Data Siswa</h4>
      </div>
      <div class="modal-body">
          <form name="f_siswa" id="f_siswa" onsubmit="return m_siswa_s();">
            <input type="hidden" name="id" id="id" value="0">
              <table class="table table-form">
                <tr><td style="width: 25%">No. Peserta</td><td style="width: 75%"><input type="text" class="form-control" name="nim" id="nim" required></td></tr>
                <tr><td style="width: 25%">Nama</td><td style="width: 75%"><input type="text" class="form-control" name="nama" id="nama" required></td></tr>
                <tr><input type="hidden" class="form-control" name="jurusan" id="jurusan"></tr>
              </table>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary"><i class="fa fa-check"></i> Simpan</button>
        <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="fa fa-minus-circle"></i> Tutup</button>
      </div>
        </form>
    </div>
  </div>
</div>

<div class="modal fade" id="m_scan_qrcode" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 id="myModalLabel">SCAN QR</h4>
      </div>
      <div class="modal-body">
        <!-- <video id="preview" style="max-width: 100%"></video>
        <div id="data_peserta"></div> -->
        <div id="qr-reader" style="width:100%"></div>
        <div id="qr-reader-results"></div>
      </div>
      <div class="modal-footer">
        <button class="btn btn-primary" type="button" id="repeatScan"><i class="fa fa-check"></i> Ulangi</button>
        <button class="btn" data-dismiss="modal" aria-hidden="true"><i class="fa fa-minus-circle"></i> Tutup</button>
      </div>
        </form>
    </div>
  </div>
</div>

