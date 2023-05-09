-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 09 Bulan Mei 2023 pada 07.32
-- Versi server: 5.7.33
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cbt_bkppd`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_admin`
--

CREATE TABLE `m_admin` (
  `id` int(6) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa','monitor','registrasi') NOT NULL,
  `kon_id` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', 'YWRtaW5jYXQ=', 'admin', 0),
(37, 'pengawascat', 'YWRtaW5jYXQ=', 'guru', 10),
(82, 'minitor', 'YWRtaW5jYXQ=', 'monitor', 0),
(83, 'registrasi', 'YWRtaW5jYXQ=', 'registrasi', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_guru`
--

CREATE TABLE `m_guru` (
  `id` int(6) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(10, 'pengawascat', 'PENGAWAS SIMULASI CAT');

--
-- Trigger `m_guru`
--
DELIMITER $$
CREATE TRIGGER `hapus_guru` AFTER DELETE ON `m_guru` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_guru = OLD.id;
DELETE FROM m_admin WHERE m_admin.level = 'guru' AND m_admin.kon_id = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_guru = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_guru = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_mapel`
--

CREATE TABLE `m_mapel` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(5, 'Tes Wawasan Kebangsaan (TWK)'),
(6, 'Tes Intelegensi Umum (TIU)'),
(7, 'Tes Karakteristik Pribadi (TKP)');

--
-- Trigger `m_mapel`
--
DELIMITER $$
CREATE TRIGGER `hapus_mapel` AFTER DELETE ON `m_mapel` FOR EACH ROW BEGIN
DELETE FROM m_soal WHERE m_soal.id_mapel = OLD.id;
DELETE FROM tr_guru_mapel WHERE tr_guru_mapel.id_mapel = OLD.id;
DELETE FROM tr_guru_tes WHERE tr_guru_tes.id_mapel = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_siswa`
--

CREATE TABLE `m_siswa` (
  `id` int(6) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Trigger `m_siswa`
--
DELIMITER $$
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `m_siswa` FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `m_soal`
--

CREATE TABLE `m_soal` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `bobot` float NOT NULL,
  `file` varchar(150) DEFAULT NULL,
  `tipe_file` varchar(50) DEFAULT NULL,
  `soal` longtext NOT NULL,
  `opsi_a` longtext NOT NULL,
  `opsi_b` longtext NOT NULL,
  `opsi_c` longtext NOT NULL,
  `opsi_d` longtext NOT NULL,
  `opsi_e` longtext NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  `tgl_input` datetime NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `jml_salah` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`) VALUES
(1, 10, 5, 5, NULL, NULL, 'Ir.Soekarno dalam sidang BPUPKI pertama, mengusulkan rumusan Pancasila yaitu ....', '#####Nasionalisme internasional (peri kemanusiaan), mufakat, kesejahteraan sosial dan kutuhanan ', '#####Nasionalisme, Ketuhanan Yang Maha Esa, perikemanusiaan, kebangsaan Indonesia, mufakat dan kesejahteraan sosial. ', '#####kesejahteraan sosial, internasionalisme, nasionalisme, peri kemanusiaan dan ketuhanan ', '#####Gotong royong, ketuhanan, kerakyatan, nasionalisme dan demokrasi ', '#####internasionalisme, nasionalisme, mufakat, demokrasi dan ketuhanan ', 'D', '2023-05-09 13:01:36', 0, 0),
(2, 10, 5, 5, NULL, NULL, 'Pancasila menjadi azas dalam kehidupan bermasyarakat, berbangsa dan bernegara. Oleh karena itu, setiap warga negara hendaknya.... ', '#####Memahami Pancasila sebagai sumber hukum', '#####Memahami Pancasila sebagai dasar negara ', '#####Berperilaku sesuai nilai-nilai Pancasila ', '#####Berupaya selalu mempelajari Pancasila ', '#####Mempelajari hakikat dari Pancasila ', 'C', '2023-05-09 13:01:36', 0, 0),
(3, 10, 5, 5, NULL, NULL, 'Pancasila sebagai way of life dalam kehidupan berbangsa, bernegara, dan bermasyarakat. Dalam hal ini Pancasila memiliki makna sebagai..... ', '#####Kristalisasi nilai ', '#####Ciri-ciri warga negara ', '#####Kepribadian bangsa', '#####Pedoman hidup ', '#####Karakteristik bangsa ', 'D', '2023-05-09 13:01:36', 0, 0),
(4, 10, 5, 5, NULL, NULL, 'Pancasila tidak mengenal adanya fasisme sebab fasisme bertitik tolak pada…', '#####Pemusatan kekuasaan pada beberapa orang ', '#####Mengutamakan individualisme radikal ', '#####Material modern dan individualisme', '#####Pemusatan kekuasaan pada satu orang', '#####Memaksakan praktek liberalisme ', 'B', '2023-05-09 13:01:36', 0, 0),
(5, 10, 5, 5, NULL, NULL, 'Fungsi pembukaan UUD 1945 alinea IV, yang mencantumkan dasar negara yang tersusun secara hierarki dan piramida di Indonesia menjadi.... ', '#####Filter bagi masuknya budaya asing ', '#####Sumber budaya bangsa ', '#####Petunjuk pelaksanaan peraturan', '#####Ciri dan karakteristik bangsa ', '#####Sumber hukum yang berlaku', 'D', '2023-05-09 13:01:36', 0, 0),
(6, 10, 5, 5, NULL, NULL, 'Keunggulan demokrasi Pancasila dalam setiap pengambil keputusan ialah... ', '#####Hasil keputusan harus dapat dipertanggungjawabkan', '#####Kepentingan tiap individu didahulukan ', '#####Pengambil keputusan oleh pimpinan rapat ', '#####Keputusan diambil melalui musyawarah mufakat ', '#####Masalahharus diselesaikan dengan hati-hati ', 'D', '2023-05-09 13:01:36', 0, 0),
(7, 10, 5, 5, NULL, NULL, 'Konsekuensi dari hubungan kausial organis antara Pancasila, Pembukaan UUD 1945, dan baang Tubuh UUD 1945 yang tidak dapat dipisahkan ialah .... ', '#####tiap pasal atidak boleh saling bertentangan ', '#####nilai Pancasila harus ada dalam tiap pasal ', '#####tipa unsur tersebut harus saling mengisi ', '#####batang tubuh merupakan penjelasan Pancasila ', '#####UUD harus merangkum sila-sila pad Pancasila ', 'C', '2023-05-09 13:01:36', 0, 0),
(8, 10, 5, 5, NULL, NULL, 'Manakah pernyataan dibawah ini yangsesuai dengan sila ke-2 Pancasila? ', '#####Kaum pria memiliki derajat yang lebih tinggi. ', '#####Pemimpin dan pemuka masyarakat berkedudukan lebih tinggi. ', '#####Manusia mempunyai derajat dan martanat yangsama. ', '#####Kedudukan seseorang ditentukan oelh yang dimilikinya. ', '#####Kedudukan seseorang ditentukan pleh perbuatannya. ', 'C', '2023-05-09 13:01:36', 0, 0),
(9, 10, 5, 5, NULL, NULL, 'Perwujudan hak asasi manusia dalam kehidupan berbangsa dapat dilihat dalam bentuk ..... ', '#####Menentukan sistem perekonomian ', '#####Menentukan kerjasama dengan bangsa lain ', '#####Mengakui kebebasan beragama', '#####Menentukan ketertiban lingkungan ', '#####Menyatakan pendapat dan berorganisasi ', 'A', '2023-05-09 13:01:36', 0, 0),
(10, 10, 5, 5, NULL, NULL, 'Mana yang terkandung pada nilai patriotisme dalam kehidupan berbangsa adalah.... ', '#####Selalu berjuang untuk kepentingan negara', '#####Selalu menentang pada negara penjajah ', '#####Rela berkorban untuk kepentingan keluarga ', '#####Selalu mengupayakan persatuan bangsa', '#####Mau menyumbangkan harta untuk masyaraka', 'B', '2023-05-09 13:01:36', 0, 0),
(11, 10, 5, 5, NULL, NULL, 'Perundingan antara Indonesia dan Belanda yang dilakukan pada tanggal 10 November 1945. Dalam perundingan ini, Indonesia diwakili oleh Perdana menteri Sutan Syahrir, sedangkan Belanda diwakili oleh Prof. Schermerhorn, perundingan ini adalah…', '#####Renville', '#####Linggarjati', '#####Roem Royen', '#####Giyanti', '#####Bongaya', 'B', '2023-05-09 13:01:36', 0, 0),
(12, 10, 5, 5, NULL, NULL, 'Perjuangan bangsa Indonesia melawan penjajah pada masa sebelum dan sesudah tahun 1928 memiliki perbedaan, pperbedaan tersebut ialah…', '#####Sebelum 1928 menggunakan senjata, sesudah 1928 menggunakan diplomasi', '#####sebelum 1928 bersifat kedaerahan, sesudah 1928 bersifat nasional', '#####sebelum 1928 tidak terdapat tokoh terpelajar, sesudah 1928 terdapat tokoh terpelajar', '#####sebelum 1928 melawan Belanda, sesudah 1928 melawan Jepang', '#####sebelum 1928 melalui organisasi kepemudaan,  sesudah 1928 melalui partai politik', 'B', '2023-05-09 13:01:36', 0, 0),
(13, 10, 5, 5, NULL, NULL, 'Lambang negara burung Garuda yang bertuliskan semboyan Bhineka Tunggal Ika dirancang oleh…', '#####Ahmad Subarjo', '#####Moh Yamin', '#####H. Agus Salim', '#####A. A Maramis', '#####Sultan Hamid H', 'E', '2023-05-09 13:01:36', 0, 0),
(14, 10, 5, 5, NULL, NULL, 'Didalam wawasan Nusantara, wawasan mengandung arti….', '#####Pandangan, tinjauan, dan penglihatan', '#####Pengetahuan dan pengertian', '#####Ruang lingkup kajian', '#####Mawas diri', '#####Teliti dan cermat serta bijaksana', 'A', '2023-05-09 13:01:36', 0, 0),
(15, 10, 5, 5, NULL, NULL, 'Salah satu fungsi yang dijalankan oleh LSM ataupun kelompok-kelompok kepentingan adalah Menyusun dan mengungkapkan tuntutan politik terhadap Negara, Fungsi ini disebut…', '#####Fungsi perumusan kepentingan', '#####Fungsi pembuatan kebijakan umum', '#####Fungsi penerapan kebijakan', '#####Fungsi pengawasan pelaksanaan kebijakan', '#####Fungsi pemaduan kepentingan', 'A', '2023-05-09 13:01:36', 0, 0),
(16, 10, 5, 5, NULL, NULL, 'Toleransi kehidupan antar-umat beragama berarti…', '#####Persebaran agama dapat dilakukan kepda siapa saja dan dimana saja', '#####Setiap agama memiliki tujuan dan cara ibadah yang sama kepada Tuhan', '#####Tersedianya tempat beribadah bagi semua umat beragama dan berdekatan', '#####Setiap orang boleh berpindah dan berganti agama setiap sata, bila dikehendaki', '#####Menghargai aktifitas inter dan antar-umat beragama serta pemetintah', 'E', '2023-05-09 13:01:36', 0, 0),
(17, 10, 5, 5, NULL, NULL, 'Toleransi beragama dalam kehidupan berbangsa dan bernegara ditunagkan dalam Mewujudkan nasionalisme yang tinggi dari rakyat Indonesia, yang lebih mengutamakan kepentingan nasional daripada kepentingan golongan merupakan….', '#####Tujuan ketahanan nasional', '#####Pengertian ketahanan nasional', '#####Tujuan pembangunan nasional', '#####Pengawasan wawasan nusantara', '#####Tujuan wawasan nusantara', 'E', '2023-05-09 13:01:36', 0, 0),
(18, 10, 5, 5, NULL, NULL, 'Munculnya kesadaran berbangsa di kalangan penduduk Indonesia didorong mula-mula oleh…', '#####Kaum Intelektual belanda', '#####Kaum Intelektual Indonesia', '#####Para Ulama', '#####Para Musyafir', '#####Para pedagang', 'B', '2023-05-09 13:01:36', 0, 0),
(19, 10, 5, 5, NULL, NULL, 'Jika anda menjadi anggota yang melanggar pakta integritas, maka ketika mendapat teguran biasanya Anda….', '#####Memberi alasan yang dapat diterima mengapa saya melanggar pakta integritas', '#####Saya akan menerima teguran tersebut karena memang salah meskipun menghadapi konsekuensinya juga akan disalahkan anggota yang lain', '#####Menemui anggota sebelum mendapat teguran', '#####Menunggu dipanggil dan mempersiapkan jawaban-jawaban yang akan saya berikan', '#####Pasrah akan nasib yang saya terima', 'A', '2023-05-09 13:01:36', 0, 0),
(20, 10, 5, 5, NULL, NULL, 'Kemajemukan sosial budaya dalam masyarakat Indonesia mempunyai pengaruh positif terhadap usaha untuk meningkatkan ketahanan nasional dalam bentuk potensi…', '#####Akulturasi budaya', '#####Integritas sosial', '#####Sumber daya alam', '#####Sumber daya manusia', '#####Keberhasilan pembangunan', 'B', '2023-05-09 13:01:36', 0, 0),
(21, 10, 5, 5, NULL, NULL, 'Pancasila digunakan sebagai sumber nilai-nilai yang menjadi dasar timbulnya peraturan-peraturan hukum di negara kita merupakan fungsi dan peranan Pancasila sebagai…', '#####Dasar negara', '#####Pandangan hidup', '#####Perjanjian luhur', '#####Sumber hukum dasar nasional', '#####Kepribadian bangsa', 'D', '2023-05-09 13:01:36', 0, 0),
(22, 10, 5, 5, NULL, NULL, 'Pernyataan yang termasuk kewaspadaan terhadap ancaman bidang sosial budaya yaitu…', '#####Berlomba-lomba untuk membangun bangsa dan negara', '#####Tidak ada perbedaan antara si kaya dan si miskin', '#####Meningkatkan kesetiakawanan sosial dalam masyarakat', '#####Memberikan semangat tenggang rasa dan toleransi', '#####Berkarya untuk kepentingan bangsa dan negara', 'C', '2023-05-09 13:01:36', 0, 0),
(23, 10, 5, 5, NULL, NULL, 'Dalam proses pengambilan keputusan, sikap Anda adalah ....', '#####Melontarkan gagasan yang memancing keterlibatan anggota', '#####Mengambil alih proses pengambilan keputusan', '#####Mengusahakan agar pendapat Anda diterima', '#####Menciptakan suasana agar orang berani mengungkapkan pendapatnya', '#####Mempercayakan keputusan pada kelompok', 'E', '2023-05-09 13:01:36', 0, 0),
(24, 10, 5, 5, NULL, NULL, 'Salah satu pahlawan nasional yang merupakan jurnalis dan aktivis kemerdekaan dan Wakil Presiden Indonesia ketiga adalah….', '#####Ahmad Yusuf', '#####Sukarni', '#####Adam Malik', '#####Umar Wirahadikusumah', '#####Boediono', 'C', '2023-05-09 13:01:36', 0, 0),
(25, 10, 5, 5, NULL, NULL, 'Sidang BPUPKI pertama dilaksanakan pada 29 Mei – 1 Juni 1945 membahas mengenai perumusan Pancasila sebagai calon dasar negara. Sidang tersebut diketuai oleh….', '#####Soekarno', '#####Moh. Hatta', '#####Moh. Yamin', '#####Soetomo', '#####Radjiman Widyodiningrat', 'E', '2023-05-09 13:01:36', 0, 0),
(26, 10, 5, 5, NULL, NULL, 'Pancasila dijadikan sebagai ... dalam sumber tata hukum di Indonesia', '#####Hukum tertulis tertinggi', '#####Setingkat dengan UUD 1945', '#####Sumber dari segala sumber hukum', '#####Setingkat dengan TAP MPR', '#####Hukum tertinggi', 'C', '2023-05-09 13:01:36', 0, 0),
(27, 10, 5, 5, NULL, NULL, 'Pancasila sebagai pegangan masyarakat dalam bersikap dan berperilaku sehari-hari merupakan….', '#####Dasar negara', '#####Sumber hukum bagi bangsa dan negara', '#####Pandangan hidup bangsa', '#####Cita-cita dan tujuan bangsa', '#####Nilai-nilai luhur bangsa', 'C', '2023-05-09 13:01:36', 0, 0),
(28, 10, 5, 5, NULL, NULL, 'Fungsi DPR diatur dalam UUD 1945 pada ...', '#####Pasal 11 Ayat (2)', '#####Pasal 14 Ayat (1)', '#####Pasal 20A Ayat (1)', '#####Pasal 20A Ayat (2)', '#####Pasal 22E Ayat (1)', 'C', '2023-05-09 13:01:36', 0, 0),
(29, 10, 5, 5, NULL, NULL, 'Amandemen Undang-Undang Dasar 1945 kedua kali dilakukan pada ...', '#####18 Agustus 2000', '#####19 Oktober 2000', '#####16 Juli 2001', '#####11 Agustus 2002', '#####37204', 'A', '2023-05-09 13:01:36', 0, 0),
(30, 10, 5, 5, NULL, NULL, 'Lembaga tinggi negara yang anggotanya merupakan perwakilan dari setiap provinsi adalah …..', '#####DPR', '#####MPR', '#####MK', '#####DPD', '#####DPRD', 'D', '2023-05-09 13:01:36', 0, 0),
(31, 10, 6, 10, NULL, NULL, 'Kata depan yang ditulis secara benar terdapat pada', '#####bersembunyi dibalik pintu', '#####menjilat keatas', '#####datang kemari ', '#####pergi keluar negeri ', '#####tertera dibawah ini', 'C', '2023-05-09 13:01:56', 0, 0),
(32, 10, 6, 10, NULL, NULL, 'Tanda hubung yang digunakan secara benar terdapat pada ', '#####Adat sopan-santun ', '#####Muka merah-padam ', '#####Kaum muda-belia ', '#####Rumah porak-poranda', '#####Penuh kasih-sayang', 'C', '2023-05-09 13:01:56', 0, 0),
(33, 10, 6, 10, NULL, NULL, 'Tanda koma yang digunakan secara tepat terdapat pada', '#####Terdakwa menurut hakiM, terbukti bersalah. ', '#####Perusahaan itu bangkrut, karena ulah direktur utamanya. ', '#####Dia belum berhasil, meskipun sudah bekerja keras.', '#####Jika tidak segera diberantas, peredaran narkoba akan semakin merajalela. ', '#####Pengalaman hidup itu, guru yang baik. ', 'C', '2023-05-09 13:01:56', 0, 0),
(34, 10, 6, 10, NULL, NULL, 'Penulisan nama dengan gelar kesarjanaannya yangtepat terdapat dalam contoh', '#####Dr. Valentino Woworuntu, MBA. ', '#####DR. Lajnah Latifah, M.Pd. ', '#####Ir. Lois Lalu, MA. ', '#####I.R. Cordiva Aridho, M.M. ', '#####DRS. Saddam Husnaeni, SH. ', 'A', '2023-05-09 13:01:56', 0, 0),
(35, 10, 6, 10, NULL, NULL, 'Huruf kapital yang digunakan secara benar terdapat pada', '#####Rancangan Undang-undang itu sedang dibahas. ', '#####Beberapa Sekolah Dasar di daerah terpencil kekurangan guru. ', '#####Bahasa Indonesia ditetapkan sebagai Bahasa Negara dalam Undang-Undang Dasar kita.', '#####Makalah berjudul “Globalisasi dan Imperialisme” ', '#####Peng-Indonesiaan istilah asing perlu digalakkan. ', 'A', '2023-05-09 13:01:56', 0, 0),
(36, 10, 6, 10, NULL, NULL, 'Kata yang tidak cocok digunakan dalam komunikasi tulis resmi terdapat pada', '#####Mengubah haluan ', '#####Mengukuhkan jabatan ', '#####Memantapkan jai diri', '#####Menjajaki pendapat umum', '#####Bertekat bulat ', 'D', '2023-05-09 13:01:56', 0, 0),
(37, 10, 6, 10, NULL, NULL, 'Kata sarapan yang cocok digunakan dalam komunikasi tulis resmi terdapat \npada', '#####Azas partal ', '#####Sikap emosionil ', '#####Aktifitas anak ', '#####Segi kognitif ', '#####Sujut syukur ', 'C', '2023-05-09 13:01:56', 0, 0),
(38, 10, 6, 10, NULL, NULL, 'Susunan kalimat yang tidak janggal terdapat pada .... ', '#####Siapapun yang bersalah, ia harus dihukum.', '#####Sesudah berunding selama lima jam, putusan baru dapat diambil. ', '#####Alasannya adalah karena dia tidak patuh kepada atasan. ', '#####Krisis ekonomi terjadi disebabkan karena korupsI, kolusi, dan nepotisme merajalela. ', '#####Alasannya adalah karena dia tidak patuh kepada atasan. ', 'D', '2023-05-09 13:01:56', 0, 0),
(39, 10, 6, 10, NULL, NULL, 'Pemakaian tanda titik dua dalam kalimat-kalimat berikut yangsesuai dengan  Pedoman Umum EYD adalah ... ', '#####Ayahku sedang mencari: celana, sepatu, dan topi. ', '#####Dalam rapat itu yang hadir hanya: Mattalata, Faisol, Rogers, dan Rozi. ', '#####Saya masih memerlukan perabot rumah tangga: meja, almari, dan kursi. ', '#####Fakultas itu mempunai jurusan : Kimia, Geologi, biologi, dan Geodesi. ', '#####Sebentar lagi anak saya akan membeli :radio, jam dinding, dan tas. ', 'D', '2023-05-09 13:01:56', 0, 0),
(40, 10, 6, 10, NULL, NULL, 'Sari dan Ratih memiliki suatu pekerjaan. Waktu yang dibutuhkan oleh Sari dalam menghasilkan uang adalah 21 menit, sedangkan Ratih membutuhkan waktu 42 menit. Jika Sari dan Ratih bekerja bersama-sama untuk menghasilkan uang, waktu yang dibutuhkan adalah …', '#####14 menit', '#####21 menit', '#####28 menit', '#####35 menit', '#####42 menit', 'A', '2023-05-09 13:01:56', 0, 0),
(41, 10, 6, 10, NULL, NULL, 'Prestasi Intan lebih tinggi dari Dini dan lebih rendah dari Tina. Prestasi Cantik lebih lebih rendah dari Intan, tetapi lebih tinggi dari Dini. Prestasi Dani lebih tinggi dari Dini dan Cantik. Tiga orang berprestasi terbaik adalah …', '#####Dani, Intan, Tina', '##### Dani, Dini, Tina', '#####Intan, Tina, Cantik', '#####Intan, Dani, Cantik', '#####Tina, Cantik, Dini', 'A', '2023-05-09 13:01:56', 0, 0),
(42, 10, 6, 10, NULL, NULL, 'TANGKAI : KELOPAK : BUNGA=', '#####Tubuh : tangan : kepala', '#####Tanah : laut : air', '#####Tahun : bulan : hari', '#####Pelepah : tangkai : daun', '#####Langit : tanah : magma', 'D', '2023-05-09 13:01:56', 0, 0),
(43, 10, 6, 10, NULL, NULL, 'Dalam pemilihan ketua kelas VI, perolehan suara Ahmad tidak kurang dari Conie dan tidak lebih dari Eka. Perolehan suara Beta sama dengan Ahmad dan tidak lebih dari Eka. Perolehan suara Doddy tidak lebih dari Beta dan kurang dari Conie. Siapakah yang terpilih sebagai ketua kelas?', '#####Ahmad', '#####Conie', '#####Eka', '#####Dody', '#####Beta', 'C', '2023-05-09 13:01:56', 0, 0),
(44, 10, 6, 10, NULL, NULL, 'Ikan A hidup di air tawar.                           Ikan C hidup di air laut', '#####Ikan C ada di tempat hidup ikan A', '#####Ikan C ada di tempat hidup bukan ikan C', '#####Ikan A ada di tempat hidup bukan ikan A', '#####Ikan A ada di tempat hidup bukan ikan C', '#####Ikan A ada di tempat hidup ikan C', 'D', '2023-05-09 13:01:56', 0, 0),
(45, 10, 6, 10, NULL, NULL, 'Semua karyawan di perusahaan A mendapat Tunjangan Hari Raya. Sebagian karyawan mendapat bingkisan hari raya. Maka, …. ', '#####Semua karyawan Perusahaan A mendapat Tunjangan Hari Raya dan bingkisan Hari Raya', '#####Karyawan  Perusahaan  A  yang  mendapat  Tunjangan  Hari  Raya  selalu  mendapat bingkisan Hari Raya ', '#####Sebagian karyawan Perusahaan A mendapat Tunjangan Hari Raya selalu mendapat bingkisan Hari Raya', '#####Karyawan Perusahaan A yang mendapat gaji, tidak mendapat bingkisan Hari Raya', '#####Karyawan Perusahaan A tidak mendapat Tunjangan Hari Raya dan bingkisan Hari Raya', 'C', '2023-05-09 13:01:56', 0, 0),
(46, 10, 6, 10, NULL, NULL, 'Perbandingan jumlah kelereng Amat dengan Cemen adalah 7:5. Sedangkan perbandingan jumlah kelereng Bagio dan Amat adalah 3:4. Jika selisih jumlah kelereng Amat dan Cemen adalah 16 buah, maka banyaknya kelereng Bagio adalah… ', '#####56 ', '#####48 ', '#####42 ', '#####40', '#####28', 'C', '2023-05-09 13:01:56', 0, 0),
(47, 10, 6, 10, NULL, NULL, 'Perbandingan kelereng Egi dan Legi adalah 3 : 2. Jika selisih kelereng mereka 8, jumlah kelereng Egi dan Legi adalah… ', '#####40 ', '#####32 ', '#####24 ', '#####16 ', '#####25', 'A', '2023-05-09 13:01:56', 0, 0),
(48, 10, 6, 10, NULL, NULL, 'Untuk membuat 60 pasang pakaian, seorang penjahit memerlukan waktu selama 18 hari. Jika penjahit tersebut bekerja selama 24 hari, berapa pasang pakaian yang dapat dibuat… ', '##### 45 pasang', '#####75 pasang', '#####80 pasang ', '#####90 pasang', '#####100 pasang', 'C', '2023-05-09 13:01:56', 0, 0),
(49, 10, 6, 10, NULL, NULL, 'Bagus adalah anak tertua, Eva lebih muda daripada Intan. Intan dan Ayu sama usianya. Ayu lebih muda daripada Bagus, tetapi lebih tua daripada Irvan. Pernyataan yang benar adalah ….', '#####Irvan lebih tua daripada eva', '#####Eva lebih tua daripada irvan', '#####Eva tidak lebih tua daripada ayu', '#####Irvan tidak lebih muda daripada ayu', '#####Ayu dan Bagus sama-sama tua', 'C', '2023-05-09 13:01:56', 0, 0),
(50, 10, 6, 10, NULL, NULL, 'Semua sapi berkaki empat. Ayam bukanlah sapi. Kesimpulan dari dua kalimat tersebut', '#####Ayam tidak berkaki empat', '#####Ayam berkaki empat', '#####Sapi dan ayam berkaki dua', '#####Sapi dan ayam berkaki empat', '#####Tidak bisa ditarik kesimpulan', 'E', '2023-05-09 13:01:56', 0, 0),
(51, 10, 6, 10, NULL, NULL, 'Ada pedagang yang giat bekerja. Kebanyakan pedagang memiliki toko yang luas.', '#####Pedagang yang memiliki toko luas harus giat bekerja.', '#####Ada pedagang yang memiliki toko luas dan giat bekerja', '#####Pedagang yang giat bekerja adalah yang memiliki toko luas', '#####Kesimpulan pada pilihan A, B, dan C benar', '#####Kesimpulan pada pilihan A, B, dan C salah.', 'B', '2023-05-09 13:01:56', 0, 0),
(52, 10, 6, 10, NULL, NULL, 'Semua orang Desa Sukamaju bermata pencaharian sebagai petani.', '#####Pak Panjul tinggal di Desa Sukamaju sehingga ia bermata pencaharian sebagai petani.', '#####Semua orang yang menjadi petani umumnya tinggal di Desa Sukamaju.', '#####Penduduk Wonogiri semuabermata pencaharian seperti Pak Panjul', '#####pak Panjul adalah penduduk Desa Sukamaju dan tidak bekerja sebagai petani.', '#####Meskipun Pak prajurit berdagang pisang tetapi ia tetap bekerja sebagai petani', 'E', '2023-05-09 13:01:56', 0, 0),
(53, 10, 6, 10, NULL, NULL, '5,4,5,8, 10, 16, 15,32, 25,…, …..', '#####48, 50', '#####50, 40', '#####64.40000000000001', '#####68, 42', '#####72, 64', 'C', '2023-05-09 13:01:56', 0, 0),
(54, 10, 6, 10, NULL, NULL, 'Sebuah segitiga sama sisi dan sebuah lingkaran memiliki keliling yang sama. Jika x adalah luas segitiga sama sisi tersebut dan y adalah luas lingkaran tersebut maka...', '#####x < y>', '#####x > y', '#####x = y', '#####hubungan x dan y tidak dapat ditentukan', '#####x = 5y', 'A', '2023-05-09 13:01:56', 0, 0),
(55, 10, 6, 10, NULL, NULL, 'Jika 5% dari suatu bilangan adalah 6, maka 20% dari bilangan tersebut adalah ...', '#####1.2', '#####4.8', '#####24', '#####120', '#####600', 'C', '2023-05-09 13:01:56', 0, 0),
(56, 10, 6, 10, NULL, NULL, 'Jika 2 < x < 4, 3 < y < 5, dan w = x + y, maka nilai w berada antara nilai ...', '#####5 dan 7', '#####4 dan 9', '#####5 dan 8', '#####5 dan 9', '#####4 dan 9', 'D', '2023-05-09 13:01:56', 0, 0),
(57, 10, 6, 10, NULL, NULL, '……: ES = PELINDUNG : ...', '#####Salju - Jaket', '#####Beku - Panas', '#####Pendingin - Payung', '#####Minuman - Hujan', '#####Air - Pengaman', 'C', '2023-05-09 13:01:56', 0, 0),
(58, 10, 6, 10, NULL, NULL, 'Jika umur rata-rata dari peserta CPNS 2023 pria adalah 30 tahun, umur rata- rata dari peserta tes CPNS wanita adalah 20 tahun, dan umur rata-rata seluruh peserta adalah 26 tahun, maka perbandingan peserta wanita terhadap pria adalah ….', '#####. 02:01', '#####0.04305555555555556', '#####0.1263888888888889', '#####0.08541666666666665', '#####0.1277777777777778', 'D', '2023-05-09 13:01:56', 0, 0),
(59, 10, 6, 10, NULL, NULL, 'Pada saat ujian akhir mahasiswa, teman dekat tidak boleh berdampingan. Ada lima orang yang akan ikut ujian A,B,C,D,dan E.', '#####B', '#####C', '#####B atau D', '#####B atau C', '#####B atau C atau D', 'E', '2023-05-09 13:01:56', 0, 0),
(60, 10, 6, 10, NULL, NULL, 'Salah satu sudut pada segitiga siku-siku adalah 45°. Hubungan antara Panjang alas dan tinggi segitiga tersebut adalah …', '#####alas < tinggi', '#####alas > tinggi', '#####alas = tinggi', '#####hubungan antara alas dan tinggi tidak dapat ditentukan', '#####.3 x alas = tinggi', 'C', '2023-05-09 13:01:56', 0, 0),
(61, 10, 7, 7.5, NULL, NULL, 'Untuk mencapai target secara kelompok maka saya…', '#####Tidak peduli semua anggota bekerja atau tidak yang penting saya sudah berusaha semaksimal mungkin', '#####Memotivasi teman sesama anggota untuk berusaha semaksimal mungkin', '#####Menstimulasi anggota kelompok lain untuk membantu', '#####Meminta bantuan orang lain jika diperlukan', '#####Berusaha dengan semaksimal mungkin agar sesama anggota juga melakukan hal yang sama', 'B', '2023-05-09 13:02:16', 0, 0),
(62, 10, 7, 7.5, NULL, NULL, 'Bila ada rekan kerja yang salah menuliskan gelar Saya di dalam surat, maka Saya ...', '#####Tersinggung karena gelar tersebut Saya peroleh dengan susah payah dan merupakan kehormatan Saya.', '#####Biasa saja, tidak tersinggung sama sekali.', '#####Saya mengingatkan kekeliruannya dengan baik-baik.', '#####Saya mengingatkannya dengan tegas agar dia jera.', '#####Keliru menulis gelar bukanlah masalah yang besar bagi saya.', 'C', '2023-05-09 13:02:16', 0, 0),
(63, 10, 7, 7.5, NULL, NULL, 'Ketika ide-ide saya tidak didukung oleh pihak lain karena dianggap tidak menarik dan tidak sesuai dengan keinginan anggota lainnya saya berusaha ...', '#####Membicarakan lebih jauh dengan anggota lainnya.', '#####Mencari dukungan dari ketua.', '#####Membicarakan dengan anggota lain untuk memadukan ide.', '#####Merumuskan ide itu dengan pihak lain di luar kelompok.', '#####Menggantinya dengan ide yang lain.', 'C', '2023-05-09 13:02:16', 0, 0),
(64, 10, 7, 7.5, NULL, NULL, 'Saya dipindah ke bagian lain yang orang-orangnya tidak saya kenal sebelumnya. Sikap saya ...', '#####Menerima dengan kecewa dan bekerja dengan seadanya', '#####Segera mengerjakan tugas-tugas dibagian itu', '#####Berkenalan dan berbincang-bincang dengan orang-orang di bagian itu.', '#####Memprotes pemindahan tersebut', '#####Mogok kerja sampai saya dipindahkan kembali ke bagian saya semula', 'B', '2023-05-09 13:02:16', 0, 1),
(65, 10, 7, 7.5, NULL, NULL, 'Berita di sebuah stasiun televisi nasional sedang hangat membicarakan kondisi perekonomian Indonesia saat ini. Sampai-sampai di setiap tayangan talk show selalu dihadirkan pengamat ekonomi dengan prediksi-prediksinya bahwa bulan depan akan terjadi inflasi tinggi Indonesia. Hal ini membuat saya menjadi ...', '#####Tidak mempercayai prediksi tersebut karena prediksi yang buruk tidak perlu dipercayai.', '#####Susah tidur setiap malam memikirkan keadaan ke depan yang berat.', '#####Depresi karena inflasi erat kaitannya dengan kenaikan harga barang.', '#####Berhati-hati dan berhemat dalam membelanjakan uang.', '#####Pasrah dengan keadaan karena yang akan terjadi biarlah terjadi.', 'D', '2023-05-09 13:02:16', 0, 0),
(66, 10, 7, 7.5, NULL, NULL, 'Pimpinan memutuskan untuk memutasi Saya ke kota lain, padahal anak-anak Saya sedang dalam masa adaptasi dengan lingkungan sekolahnya. Sikap Saya adalah ...', '#####Mengusulkan pada pimpinan agar Saya digantikan oleh orang lain saja', '#####Menerima keputusan mutasi dan membuat syarat pada pimpinan agar anak dan istri Saya bisa tetap tinggal sampai mutasi selanjutnya', '#####Menanyakan terlebih dahulu pada anak dan istri Saya, jika keduanya tidak setuju maka Saya akan menolak', '#####Menerima keputusan pimpinan dengan patuh.', '#####Mengajukan keberatan mutasi dengan alasan anak.', 'D', '2023-05-09 13:02:16', 0, 0),
(67, 10, 7, 7.5, NULL, NULL, 'Saya sedang mengerjakan laporan tugas semester yang akan dikumpulkan besok pagi. Tiba-tiba sahabat Saya datang dengan wajah sedih dan ingin curhat pada Saya. Sikap saya adalah ...', '#####Terus mengerjakan laporan sambil adalah mendengarkan ceritanya.', '#####Mendengarkan ceritanya dengan penuh perhatian', '#####Meneruskan mengerjakan laporan tanpa mempedulikan teman Saya', '#####Menanggapi dan memberi berbagai alternatif solusi', '#####Dengan menyesal menolak mendengarkan keluhannya', 'A', '2023-05-09 13:02:16', 0, 0),
(68, 10, 7, 7.5, NULL, NULL, 'Bagi Anda, pekerjaan yang menyenangkan adalah pekerjaan yang ...', '#####Sesuai dengan keinginan keluarga Saya.', '#####Biasa-biasa saja.', '#####Menghasilkan pendapatan yang besar.', '#####Memicu semangat untuk berprestasi.', '#####Sesuai dengan minat dan potensi yang saya miliki.', 'D', '2023-05-09 13:02:16', 0, 0),
(69, 10, 7, 7.5, NULL, NULL, 'Jika ada kesempatan berkompetisi bidang yang saya sukai, maka Saya ...', '#####Lebih baik saya tidak mengikuti kompetisi tersebut karena takut kalah dan dibenci rekan yang lain', '#####Tidak ikut kompetisi.', '#####Mengalahkan pesaing dengan berusaha meningkatkan kemampuan di bidang tersebut.', '#####Mencari kelemahan yang ada pada pesaing yang lain.', '#####Melihat situasi sekitar dan ikut kalau ada kesempatan menang', 'C', '2023-05-09 13:02:16', 0, 0),
(70, 10, 7, 7.5, NULL, NULL, 'Semua rencana kerja yang Saya buat tadi pagi telah selesai Saya kerjakan, namun jam kerja hari ini masih ada sisa waktu. Sebaiknya Saya ...', '#####Membaca buku-buku pengembangan dan motivasi diri di sisa waktu kerja.', '#####Melakukan aktivitas mengakses berita dan situs jejaring sosial facebook.', '#####Mengobrol dengan rekan­ kerja lain untuk sekadar mengisi waktu setelah lelah bekerja hari ini.', '#####Mereview hasil pekerjaan hari ini.', '#####Percakapan online dengan kawan lama dari sosial media yang dapat diakses dari telepon genggam.', 'D', '2023-05-09 13:02:16', 0, 1),
(71, 10, 7, 7.5, NULL, NULL, 'Hampir setiap hari, saya terdaftar sebagai pegawai dengan presensi paling awal datangnya jika dibandingkan dengan rekan kerja lainnya. Setiba di kantor, Saya melakukan kegiatan ...', '#####Membaca koran dulu agar update', '#####Membuat daftar rencana kerja yang akan dilakukan dan dise­ lesaikan hari ini', '#####Santai di luar kantor menikmati udara pagi', '#####Mengobrol dengan rekan sejawat, menanyakan kabar harian mereka', '#####enyelesaikan pekerjaan yang tertunda kemarin', 'B', '2023-05-09 13:02:16', 0, 0),
(72, 10, 7, 7.5, NULL, NULL, 'Anda ditunjuk sebagai ketua kegiatan. Atasanmu memberikan tugas untuk menyiapkan pentas seni acara ulang tahun perusahaanmu yang ke-21 dikarenakan tiap-tiap kantor cabang harus menampilkan pertunjukannya. Tindakan yang anda lakukan....', '#####Bekerja keras membentuk panitia persiapan pentas seni ulang tahun perusahaan', '#####Menunjuk beberapa anggota untuk tampil pada pentas seni ulang tahun perusahaan', '#####Mengumpulkan seluruh anggota untuk membahas bersama-sama persiapan pentas seni ulang tahun perusahaan', '#####Melakukan voting untuk mengambil keputusan persiapan pentas seni ulang tahun perusahaan', '#####Menunjuk beberapa anggota untuk menampilkan pentas seni yang mengangkat kebudayaan bangsa', 'C', '2023-05-09 13:02:16', 0, 0),
(73, 10, 7, 7.5, NULL, NULL, 'Salah satu pernyataan berikut mencerminkan perilaku saya, yaitu…', '#####Membalas kebaikan orang lain', '#####Membantu untuk mendapatkan balasan dikemudian hari', '#####bantuan untuk orang yang tidak mampu sesuai kebutuhannya', '#####Tidak menanggapi suatu permintaan kalau tidak merasa nyaman', '#####Tidak membantu individu berkebutuhan khusu karena saya merasa tidak mampu', 'E', '2023-05-09 13:02:16', 0, 0),
(74, 10, 7, 7.5, NULL, NULL, 'Anda bekerja disebuah perusahaan sebagai HRD. Ketika merekrut pegawai baru yang akan bertugas pada bagian pelayanan, Anda lebih mengutamakan seorang pegawai yang…', '#####Memiliki wajah cantik/tampan', '#####Berpakaian rapi', '#####memiliki kemampuan berkomunikasi yang baik', '#####Disiplin dan tepat waktu', '#####memiliki pengetahuan umum yang tinggi', 'C', '2023-05-09 13:02:16', 1, 0),
(75, 10, 7, 7.5, NULL, NULL, 'Budi sedang berada di antrean sebuah mesin ATM. la berada tepat di belakang orang yang sedang menggunakan mesin ATM. Ketika Feri akan menggunakan mesin, tiba-tiba datang orang lain di luar antrean yang meminta agar la diberikan izin menggunakan mesin ATM lebih dahulu karena sedang terburu-buru. Apa yang sebaiknya Budi lakukan?', '#####Meminta orang tesebut agar mengikuti antrean.', '#####Pura-pura tidak mendengarkan dan segera menyelesaikan transaksi.', '#####Mengizinkan orang tersebut sebagai bentuk kepedulian.', '#####Menyarankan agar orang tersebut mencari mesin ATM lain.', '#####Memarahi orang tersebut karena tidak mau mengikuti antrean.', 'A', '2023-05-09 13:02:16', 0, 0),
(76, 10, 7, 7.5, NULL, NULL, 'Jika ada kesempatan untuk berkompetisi dalam bidang yang Anda senangi, sikap Anda adalah ....', '#####Mengalahkan pesaing dengan meningkatkan diri.', '#####Tidak ikut kompetisi.', '#####Ikut hanya kalau ada kemungkinan menang.', '#####Berusaha keras mengalahkan pesaing dengan mencari kelemahan mereka.', '#####Lebih baik tidak usah ikut karena khawatir akan kalah.', 'A', '2023-05-09 13:02:16', 0, 0),
(77, 10, 7, 7.5, NULL, NULL, 'Agar suatu kegiatan berhasil dilaksanakan, sikap Anda adalah ....', '#####Minta bimbingan guru dalam melaksanakan kegiatan tersebut', '#####Mempelajari jenis kegiatan tersebut sebelum memulai kegiatan', '#####Mencontoh orang lain yang sukses mengerjakan pekerjaan serupa', '#####Menyesuaikan dengan kondisi yang sedang berjalan.', '#####Menggunakan cara yang biasa saya pakai', 'B', '2023-05-09 13:02:16', 0, 1),
(78, 10, 7, 7.5, NULL, NULL, 'Atasan yang Anda sukai adalah ....', '#####Sangat disiplin dan selalu meminta saya menunggu keputusan yang diambilnya sebelum suatu  dilaksanakan', '#####Selalu menanyakan pendapat dan ide dari bawahan sebagai bahan masukan untuk suatu pekerjaan yang dilakukannya', '#####Senantiasa mendelegasikan wewenangnya pada bawahan', '#####Tidak terlalu membantu menyelesaikan tugas, namun sebaliknya berharap saya menyelesaikan pekerjaan tanpa sering berkonsultasi kepadanya', '#####Selalu memberi petunjuk yang jelas atas pekerjaan yang akan bawahan kerjakan.', 'B', '2023-05-09 13:02:16', 0, 0),
(79, 10, 7, 7.5, NULL, NULL, 'Menurut Anda, terlambat ke kantor adalah ....', '#####hal biasa yang dilakukan oleh para PNS', '#####hal yang mengangggu pekerjaan', '#####hal yang menyalahi aturan', '#####hal yang dapat dimaklumi', '#####hal yang tidak boleh dilakukan', 'B', '2023-05-09 13:02:16', 0, 1),
(80, 10, 7, 7.5, NULL, NULL, 'Dalam melaksanakan setiap tugas yang diberikan kepada Anda, sikap Anda adalah….', '#####Menyelesaikan dengan cepat supaya saya bisa segera mengerjakan tugas lain', '#####Mengerjakannya sesuai dengan aturan kerja', '#####Mengerjakannya sesuai dengan aturan atasan', '#####Mengerjakannya dengan baik tanpa kesalahan sedikitpun', '#####Memberikan hasil yang Memuaskan', 'B', '2023-05-09 13:02:16', 0, 0),
(81, 10, 7, 7.5, NULL, NULL, 'Jika “ada seorang rekan yang memberikan secara langsung berkas-berkas temannya untuk ditindaklanjuti oleh Anda, sikap Anda adalah ....', '#####Menindaklanjuti karena Anda tidak enak hati dengan teman Anda itu', '#####Menindaklanjuti jika ada imbalan saja', '#####Segera menindaklanjutinya', '#####Memberinya nomor urut seperti Klien lain', '#####Tidak memperdulikannya', 'D', '2023-05-09 13:02:16', 0, 1),
(82, 10, 7, 7.5, NULL, NULL, 'Menurut Anda mementingkan kepentingan umum adalah ....', '#####Melihat skala prioritas kepentingan', '#####Melihat budi kebaikan yang pernah kita terima dari orang lain', '#####Membantu dengan tulus kepada yang membutuhkan', '#####Kebaikan', '#####Perbuatan yang perlu ditanamkan sejak dini', 'C', '2023-05-09 13:02:16', 0, 0),
(83, 10, 7, 7.5, NULL, NULL, 'Jika saya flu berat …', '#####Tetap masuk kerja seperti biasa', '#####Tetap masuk tetapi segera keluar ruangan', '#####Izin secara lisan/sms/pesan instant', '#####Tidak masuk dan tidak perlu memberitahu', '#####Izin tidak masuk dengan surat dokter', 'E', '2023-05-09 13:02:16', 0, 1),
(84, 10, 7, 7.5, NULL, NULL, 'Atasan menegur saya karena akumulasi keterlambatan', '#####Memberikan alasan kenapa terlambat dan mohon keringanan', '#####Mengatakan bahwa atasan juga sering terlambat', '#####Menerima teguran dan tidak mengulangi kesalahan', '#####Mohon dimaklum karena manusia biasa salah', '#####Menolak teguran karena terlambat bukan kesengajaan', 'C', '2023-05-09 13:02:16', 1, 0),
(85, 10, 7, 7.5, NULL, NULL, 'Internet di kantor yang biasanya lancar, hari ini mati. Yang saya lakukan', '#####Tiduran karena tidak bisa browsing', '#####Izin keluar atau rileks di kantin', '#####Bekerja seperti biasa, tidak selalu memakai internet', '#####Bekerja dengan lebih santai', '#####Tetap bekerja sampai malam ', 'C', '2023-05-09 13:02:16', 0, 1),
(86, 10, 7, 7.5, NULL, NULL, 'Pada tangal yang sudah ditetapkan, seluruh pegawai diwajibkan menjalani cek kesehatan', '#####Tidak masuk pada hari pelaksanaan', '#####Mengikuti cek kesehatan dengan baik', '#####Memilih laboratorium di luar karena lebih akurat', '#####Hasil cek kesehatan tidak penting', '#####Memilih tugas ke luar daripada di kantor', 'B', '2023-05-09 13:02:16', 0, 1),
(87, 10, 7, 7.5, NULL, NULL, 'Anda ditunjuk atasan menjadi ketua panitia seminar padahal Anda belum berpengalaman menjadi panitia seminar', '#####Menolak baik-baik dengan alasan belum punya pengalaman menjadi panitia apalagi menjadi ketua seminar', '#####Menolak dengan tegas karena beresiko acara seminar berantakan', '#####Menerima dengan baik dan akan mempelajari masalah kepanitiaan dari orang-orang yang sudah berpengalaman', '#####Menerima karena ini adalah perintah atasan yang menyangkut nama baik diri sendiri', '#####Menerima baik terpaksa maupun tidak karena penunjukkan atasan adalah tugas negara', 'C', '2023-05-09 13:02:16', 0, 0),
(88, 10, 7, 7.5, NULL, NULL, 'Anda ditugaskan untuk meracik obat khusus di ruang apoteker. Rekan Anda yang bertugas sebagai pengantar obat ingin mengetahui isi resep tersebut. Sikap Anda adalah ....', '#####Berusaha menghindari rekan yang membujuk untuk mengetahui resep tersebut', '#####Dengan bangga saya akan menceritakan kepada  teman sejawat saya resep dan khasiatnya', '#####Memberitahu anggota keluarga tentang obat khusus tersebut', '#####Tidak akan membocorkan resep karena bukan wewenang saya', '#####Diam saja', 'D', '2023-05-09 13:02:16', 0, 0),
(89, 10, 7, 7.5, NULL, NULL, 'Ketika seseorang mendebat Anda, sikap Anda adalah …', '#####Membalas debatannya', '#####Menyetujui ucapannya kemudian membalasnya', '#####Diam saja', '#####Berterimakasih atas pendapatnya', '#####mendengarkannya saja hingga ia puas', 'D', '2023-05-09 13:02:16', 0, 0),
(90, 10, 7, 7.5, NULL, NULL, 'Ide-ide yang Anda kemukakan didepan orang banyak biasanya dianggap gagasan yang …', '#####Sesuai dengan zamannya', '#####Dikemukakan ke banyak orang', '#####Usang', '#####Jauh kedepan', '#####Besar', 'E', '2023-05-09 13:02:16', 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_mapel`
--

CREATE TABLE `tr_guru_mapel` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(30, 10, 5),
(31, 10, 6),
(32, 10, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_guru_tes`
--

CREATE TABLE `tr_guru_tes` (
  `id` int(6) NOT NULL,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `terlambat` datetime NOT NULL,
  `token` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(6, 10, 5, 'TES WAWASAN KEBANGSAAN (TWK)', 10, 10, 'acak', '', '2023-05-10 08:00:00', '2023-05-15 23:00:00', 'BXXHA'),
(7, 10, 6, 'TES INTELEGANSI UMUM (TIU)', 10, 10, 'acak', '', '2023-05-10 08:00:00', '2023-05-15 23:00:00', 'QZINL'),
(8, 10, 7, 'TES KARAKTERISTIK PRIBADI (TKP)', 10, 10, 'acak', '', '2023-05-09 08:00:00', '2023-05-15 23:00:00', 'EFGXU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tr_ikut_ujian`
--

CREATE TABLE `tr_ikut_ujian` (
  `id` int(6) NOT NULL,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kon_id` (`kon_id`);

--
-- Indeks untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_mapel` (`id_mapel`);

--
-- Indeks untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tes` (`id_tes`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `m_admin`
--
ALTER TABLE `m_admin`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `m_guru`
--
ALTER TABLE `m_guru`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `m_mapel`
--
ALTER TABLE `m_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `m_siswa`
--
ALTER TABLE `m_siswa`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `m_soal`
--
ALTER TABLE `m_soal`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_mapel`
--
ALTER TABLE `tr_guru_mapel`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tr_guru_tes`
--
ALTER TABLE `tr_guru_tes`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tr_ikut_ujian`
--
ALTER TABLE `tr_ikut_ujian`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
