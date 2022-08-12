<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Monitoring extends CI_Model {

	public function nilai_per_bidang($id_mapel, $id_user) {
		$query = $this->db->get_where('tr_ikut_ujian', array('id_tes' => $id_mapel, 'id_user' => $id_user));
		if($query->num_rows() > 0) {
			$row = $query->row();
				$cetak = $row->nilai;
		} else {
				$cetak = 0;
		}
		return $cetak;
	}	

	public function nilai_akhir($id_user) {
		// $query = $this->db->get_where('tr_ikut_ujian', array('id_user' => $id_user));
		$query = $this->db->query('select SUM(nilai) as nilaiakhir from tr_ikut_ujian where id_user = "'.$id_user.'"');
		if($query->num_rows() > 0) {
			$row = $query->row();
				$cetak = $row->nilaiakhir;
		} else {
				$cetak = 0;
		}
		return $cetak;
	}

	public function jumlahPeserta() {
		$query = $this->db->query("SELECT * FROM `tr_ikut_ujian` GROUP BY id_user");
		if($query->num_rows() > 0) {
			$cetak = $query->num_rows();
		} else {
			$cetak = 0;
		}
		return $cetak;
	}

	public function nilaiTertinggi($twk, $tiu, $tkp) {
		$nilais = $this->db->query("SELECT id_tes, id_user, nilai, SUM(nilai) as nilai_akhir FROM `tr_ikut_ujian` WHERE id_tes IN ('$twk', '$tiu', '$tkp') GROUP BY id_user ORDER BY id_user")->result_array();
		$row= '';
		foreach ($nilais as $nilai) {
			$row .= $nilai['nilai_akhir'].",";
			$baris = explode(",", $row);
		}

		return max($baris);
		// var_dump($baris);
	}

	public function get_item_mapel() {
		$q = $this->db->query("SELECT id, token FROM tr_guru_tes");
		if($q->num_rows() > 0) {
			$row = $q->result();
			$data= '';
			foreach ($row as $r) {
				# code...
				$data .= $r->id."/";
			}
		} else {
			$data = 'Mata Ujian Tidak Ditemukan';
		}
		return $data;
	}

}

/* End of file monitoring.php */
/* Location: ./application/models/monitoring.php */