<div class="row col-md-12 ini_bodi">
  <div class="panel panel-info">

    <div class="panel-heading" style="display: flex; justify-content: space-between;">Daftar Hasil Tes
      
    <a href="<?= base_url("adm/monitor_hasil/".$this->monitoring->get_item_mapel()) ?>" target="_blank" class="btn btn-primary">Live Score</a>
    </div>
    <div class="panel-body">

      <table class="table table-bordered" id="datatabel">
        <thead>
          <tr>
            <th width="5%">No</th>
            <th width="5%">ID Monitor</th>
            <th width="20%">Nama Tes</th>
            <th width="25%">Nama Guru</th>
            <th width="20%">Mata Pelajaran</th>
            <th width="10%">Jumlah Soal</th>
            <th width="10%">Waktu</th>
            <th width="10%">Aksi</th>
          </tr>
        </thead>

        <tbody>
        </tbody>
      </table>
    
      </div>
    </div>
  </div>
</div>
