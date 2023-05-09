-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 09, 2023 at 02:16 AM
-- Server version: 10.3.14-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cat_dua_h1`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_admin`
--

DROP TABLE IF EXISTS `m_admin`;
CREATE TABLE IF NOT EXISTS `m_admin` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` enum('admin','guru','siswa') NOT NULL,
  `kon_id` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `kon_id` (`kon_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_admin`
--

INSERT INTO `m_admin` (`id`, `username`, `password`, `level`, `kon_id`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 0),
(37, 'tasarahnaon19', 'c31f374e76f932501f61944b1a3b5bd5', 'guru', 10),
(39, '123456', 'e10adc3949ba59abbe56e057f20f883e', 'siswa', 13),
(40, '6311072301820002', '03983700ab0cb122cef2089584d86382', 'siswa', 14),
(41, '6311045206820001', '07f8197e59aa494ea27354691c0ab0a8', 'siswa', 15),
(42, '3041996', '7c96bc8f40e7441dbe104fe0a3bdcc6b', 'siswa', 16),
(43, '17071995', 'c73e129d79d60d0213e43b119b8447dd', 'siswa', 17),
(44, '13021996', '820abab83a0a4c46a2a23b907fa50915', 'siswa', 18),
(45, '080993', '79b8b6e6301b4e0438aa3fb7584e9af4', 'siswa', 19),
(46, '63110605068990002', 'c48ae066cdf4ea0e3b9ed76a4e44a1bb', 'siswa', 20),
(47, '6311052402970001', 'e49b9a5074c96b641b228e8b0feb2850', 'siswa', 24),
(48, '6311040809000001', 'e8b49b6ec1416199e0f2048b11553259', 'siswa', 23),
(49, '6311040309990002', '186109db32b17bc1d30adadc8c98c59a', 'siswa', 22),
(50, '09021993', '0c1dc94ca3cab1141b04493050d55791', 'siswa', 21),
(51, '6311045001860003', 'dd2306d960e945c3b0add8d997ca02a5', 'siswa', 25),
(52, '6308051609850001', '97b60b0bf74634723fdfc312b2fb5444', 'siswa', 26),
(53, '3205051404810003', 'dd9a2f862a5f47cb05d85d6d6c4704c0', 'siswa', 27),
(54, '19092002', '4ab9c601c25433d5afe066190b4cca26', 'siswa', 28),
(55, '10082002', '4645123ca7696c8383d48ab7894d32ca', 'siswa', 29),
(56, '6311072908860001', 'a4eba226f3b187e6114bc7897ef7cf06', 'siswa', 30),
(57, '6311074112890002', 'b53bf0ecd2853d387a9586d4d4e8b5bd', 'siswa', 31),
(58, '6371010812930006', '072e119f7653ce6b2a20729f2e9e684e', 'siswa', 32),
(59, '6311014107950006', '7f3936e52d2f9390853efb039f9e1e73', 'siswa', 33),
(60, '6311051512910001', '614f6e4fa095ad436079cfd037668274', 'siswa', 34),
(61, '6311042304950001', 'e59ada66fed62b9ac1c3f6ad8f7e9956', 'siswa', 35),
(62, '6311041610000001', '4acd5109dd08787a37029664dd043128', 'siswa', 36),
(63, '6311052905790001', '8e6a5f2602ff72d7f8f04a7719676d89', 'siswa', 37),
(64, '6311055406870001', '1ca953c926101e912bb9c37157b3f19e', 'siswa', 38),
(65, '6311055010870001', '5703a58db3bd196687a1783f4a9b9128', 'siswa', 39),
(66, '6311051608930001', 'f20fe3c481a5a6eb17e4777ca8854040', 'siswa', 40),
(67, '04021989', 'dc205b86ca01cfaee85ff4e2441cd70d', 'siswa', 41),
(68, '6311050102990002', '31e13082f80067c76f7afa6821b5b0bd', 'siswa', 42),
(69, '6308062001920005', 'a4a6253fb5808cc92507b4e49c439163', 'siswa', 43),
(70, '6311031601970002', 'fe4b5294db6bc1b3ca4197d1101cc9bf', 'siswa', 45),
(71, '13061995', '30818f1139ce38810d92cb7cb2817993', 'siswa', 44),
(72, '19092004', '762fd6e322b0e272234b2581c64fb067', 'siswa', 46),
(73, '6311035707010001', 'fea1d33ecd67b9e20cb358c923c5b951', 'siswa', 47),
(74, '6311065305980001', 'f14d2b6c1581a3db4bc9175a4a3fcad2', 'siswa', 49),
(75, '6311025510940001', 'ebb70df5db05533b0eb44c69da7f87e6', 'siswa', 48),
(76, '14042006', '7613b348fabcf4ac2c8c09b7f11981d1', 'siswa', 50),
(77, '630703150286003', '2d3e006e5443586fd6e67d1275b8cd22', 'siswa', 51),
(78, '24111983', '6ea26c84de1f51d17d17f579e49f52c7', 'siswa', 52);

-- --------------------------------------------------------

--
-- Table structure for table `m_guru`
--

DROP TABLE IF EXISTS `m_guru`;
CREATE TABLE IF NOT EXISTS `m_guru` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nip` varchar(30) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_guru`
--

INSERT INTO `m_guru` (`id`, `nip`, `nama`) VALUES
(10, 'tasarahnaon19', 'PENGAWAS SIMULASI CAT');

--
-- Triggers `m_guru`
--
DROP TRIGGER IF EXISTS `hapus_guru`;
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
-- Table structure for table `m_mapel`
--

DROP TABLE IF EXISTS `m_mapel`;
CREATE TABLE IF NOT EXISTS `m_mapel` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_mapel`
--

INSERT INTO `m_mapel` (`id`, `nama`) VALUES
(5, 'Tes Wawasan Kebangsaan (TWK)'),
(6, 'Tes Intelegensi Umum (TIU)'),
(7, 'Tes Karakteristik Pribadi (TKP)');

--
-- Triggers `m_mapel`
--
DROP TRIGGER IF EXISTS `hapus_mapel`;
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
-- Table structure for table `m_siswa`
--

DROP TABLE IF EXISTS `m_siswa`;
CREATE TABLE IF NOT EXISTS `m_siswa` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(50) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_siswa`
--

INSERT INTO `m_siswa` (`id`, `nama`, `nim`, `jurusan`) VALUES
(13, 'SIMULASI UJI COBA', '123456', '-'),
(14, 'CANDRA SAPUTRA GANIE', '6311072301820002', '-'),
(15, 'YULIANTI', '6311045206820001', '-'),
(16, 'LIA MAYSUFA', '3041996', '-'),
(17, 'USWATUN HASANAH', '17071995', '-'),
(18, 'SRI RUSMAYANTI', '13021996', '-'),
(19, 'SITI HABIBAH', '080993', '-'),
(20, 'RAHMADI', '63110605068990002', '-'),
(21, 'HUMAIDI', '09021993', '-'),
(22, 'MUHAMMAD IHSAN', '6311040309990002', '-'),
(23, 'MUHMMAD RAHMAN', '6311040809000001', '-'),
(24, 'MUHAMMAD AR-RAZI', '6311052402970001', '-'),
(25, 'MERY INDRIANI', '6311045001860003', '-'),
(26, 'wahyu suprianto', '6308051609850001', '-'),
(27, 'TROY SUKMA ARIESTA', '3205051404810003', '-'),
(28, 'ELFINA MUKARRAMAH', '19092002', '-'),
(29, 'SYAFITRI', '10082002', '-'),
(30, 'HIDAYATULLAH', '6311072908860001', '-'),
(31, 'WENI DESITASARI', '6311074112890002', '-'),
(32, 'M. ALFIAN NOOR', '6371010812930006', '-'),
(33, 'RIA MAULIDA', '6311014107950006', '-'),
(34, 'BARKATILAH', '6311051512910001', '-'),
(35, 'GUSTI RAHMAD HARYADI', '6311042304950001', '-'),
(36, 'DONNA YUSA', '6311041610000001', '-'),
(37, 'SUKERANI, S.Pd', '6311052905790001', '-'),
(38, 'RAHIMAH', '6311055406870001', '-'),
(39, 'MARLINA', '6311055010870001', '-'),
(40, 'IRWANDI TAUFIK', '6311051608930001', '-'),
(41, 'M. INDERA', '04021989', '-'),
(42, 'SUBEHAN', '6311050102990002', '-'),
(43, 'SARKANI', '6308062001920005', '-'),
(44, 'SIBAWJIHI', '13061995', '-'),
(45, 'MUHAMMAD FIKRIE', '6311031601970002', '-'),
(46, 'NURHALIZA', '19092004', '-'),
(47, 'MADATILAH HAYATI', '6311035707010001', '-'),
(48, 'RESTI ARIANI', '6311025510940001', '-'),
(49, 'WAHIDAH', '6311065305980001', '-'),
(50, 'MUHAMMAD FIKRI', '14042006', '-'),
(51, 'HADRIANSYAH', '630703150286003', '-'),
(52, 'SUSMITA', '24111983', '-');

--
-- Triggers `m_siswa`
--
DROP TRIGGER IF EXISTS `hapus_siswa`;
DELIMITER $$
CREATE TRIGGER `hapus_siswa` AFTER DELETE ON `m_siswa` FOR EACH ROW BEGIN
DELETE FROM tr_ikut_ujian WHERE tr_ikut_ujian.id_user = OLD.id;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `m_soal`
--

DROP TABLE IF EXISTS `m_soal`;
CREATE TABLE IF NOT EXISTS `m_soal` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
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
  `jml_salah` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_guru` (`id_guru`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `m_soal`
--

INSERT INTO `m_soal` (`id`, `id_guru`, `id_mapel`, `bobot`, `file`, `tipe_file`, `soal`, `opsi_a`, `opsi_b`, `opsi_c`, `opsi_d`, `opsi_e`, `jawaban`, `tgl_input`, `jml_benar`, `jml_salah`) VALUES
(176, 10, 5, 7.5, NULL, NULL, 'Ir.Soekarno dalam sidang BPUPKI pertama, mengusulkan rumusan Pancasila yaitu ....', '#####Nasionalisme internasional (peri kemanusiaan), mufakat, kesejahteraan sosial dan kutuhanan ', '#####Nasionalisme, Ketuhanan Yang Maha Esa, perikemanusiaan, kebangsaan Indonesia, mufakat dan kesejahteraan sosial. ', '#####kesejahteraan sosial, internasionalisme, nasionalisme, peri kemanusiaan dan ketuhanan ', '#####Gotong royong, ketuhanan, kerakyatan, nasionalisme dan demokrasi ', '#####internasionalisme, nasionalisme, mufakat, demokrasi dan ketuhanan ', 'D', '2019-08-16 20:59:10', 7, 27),
(177, 10, 5, 7.5, NULL, NULL, 'Pancasila menjadi azas dalam kehidupan bermasyarakat, berbangsa dan bernegara. Oleh karena itu, setiap warga negara hendaknya.... ', '#####Memahami Pancasila sebagai sumber hukum', '#####Memahami Pancasila sebagai dasar negara ', '#####Berperilaku sesuai nilai-nilai Pancasila ', '#####Berupaya selalu mempelajari Pancasila ', '#####Mempelajari hakikat dari Pancasila ', 'C', '2019-08-16 20:59:10', 16, 18),
(178, 10, 5, 7.5, NULL, NULL, 'Pancasila sebagai way of life dalam kehidupan berbangsa, bernegara, dan bermasyarakat. Dalam hal ini Pancasila memiliki makna sebagai..... ', '#####Kristalisasi nilai ', '#####Ciri-ciri warga negara ', '#####Kepribadian bangsa', '#####Pedoman hidup ', '#####Karakteristik bangsa ', 'D', '2019-08-16 20:59:10', 15, 19),
(179, 10, 5, 7.5, NULL, NULL, 'Pancasila tidak mengenal adanya fasisme sebab fasisme bertitik tolak pada…', '#####Pemusatan kekuasaan pada beberapa orang ', '#####Mengutamakan individualisme radikal ', '#####Material modern dan individualisme', '#####Pemusatan kekuasaan pada satu orang', '#####Memaksakan praktek liberalisme ', 'B', '2019-08-16 20:59:10', 14, 20),
(180, 10, 5, 7.5, NULL, NULL, 'Fungsi pembukaan UUD 1945 alinea IV, yang mencantumkan dasar negara yang tersusun secara hierarki dan piramida di Indonesia menjadi.... ', '#####Filter bagi masuknya budaya asing ', '#####Sumber budaya bangsa ', '#####Petunjuk pelaksanaan peraturan', '#####Ciri dan karakteristik bangsa ', '#####Sumber hukum yang berlaku', 'D', '2019-08-16 20:59:10', 17, 17),
(181, 10, 5, 7.5, NULL, NULL, 'Keunggulan demokrasi Pancasila dalam setiap pengambil keputusan ialah... ', '#####Hasil keputusan harus dapat dipertanggungjawabkan', '#####Kepentingan tiap individu didahulukan ', '#####Pengambil keputusan oleh pimpinan rapat ', '#####Keputusan diambil melalui musyawarah mufakat ', '#####Masalahharus diselesaikan dengan hati-hati ', 'D', '2019-08-16 20:59:10', 24, 10),
(182, 10, 5, 7.5, NULL, NULL, 'Konsekuensi dari hubungan kausial organis antara Pancasila, Pembukaan UUD 1945, dan baang Tubuh UUD 1945 yang tidak dapat dipisahkan ialah .... ', '#####tiap pasal atidak boleh saling bertentangan ', '#####nilai Pancasila harus ada dalam tiap pasal ', '#####tipa unsur tersebut harus saling mengisi ', '#####batang tubuh merupakan penjelasan Pancasila ', '#####UUD harus merangkum sila-sila pad Pancasila ', 'C', '2019-08-16 20:59:10', 4, 30),
(183, 10, 5, 7.5, NULL, NULL, 'Manakah pernyataan dibawah ini yangsesuai dengan sila ke-2 Pancasila? ', '#####Kaum pria memiliki derajat yang lebih tinggi. ', '#####Pemimpin dan pemuka masyarakat berkedudukan lebih tinggi. ', '#####Manusia mempunyai derajat dan martanat yangsama. ', '#####Kedudukan seseorang ditentukan oelh yang dimilikinya. ', '#####Kedudukan seseorang ditentukan pleh perbuatannya. ', 'C', '2019-08-16 20:59:10', 30, 4),
(184, 10, 5, 7.5, NULL, NULL, 'Perwujudan hak asasi manusia dalam kehidupan berbangsa dapat dilihat dalam bentuk ..... ', '#####Menentukan sistem perekonomian ', '#####Menentukan kerjasama dengan bangsa lain ', '#####Mengakui kebebasan beragama', '#####Menentukan ketertiban lingkungan ', '#####Menyatakan pendapat dan berorganisasi ', 'A', '2019-08-16 20:59:10', 5, 29),
(185, 10, 5, 7.5, NULL, NULL, 'Mana yang terkandung pada nilai patriotisme dalam kehidupan berbangsa adalah.... ', '#####Selalu berjuang untuk kepentingan negara', '#####Selalu menentang pada negara penjajah ', '#####Rela berkorban untuk kepentingan keluarga ', '#####Selalu mengupayakan persatuan bangsa', '#####Mau menyumbangkan harta untuk masyaraka', 'B', '2019-08-16 20:59:10', 1, 33),
(186, 10, 6, 8, NULL, NULL, 'Kata depan yang ditulis secara benar terdapat pada', '#####bersembunyi dibalik pintu', '#####menjilat keatas', '#####datang kemari ', '#####pergi keluar negeri ', '#####tertera dibawah ini', 'C', '2019-08-16 20:59:22', 5, 28),
(187, 10, 6, 8, NULL, NULL, 'Tanda hubung yang digunakan secara benar terdapat pada ', '#####Adat sopan-santun ', '#####Muka merah-padam ', '#####Kaum muda-belia ', '#####Rumah porak-poranda', '#####Penuh kasih-sayang', 'C', '2019-08-16 20:59:22', 0, 33),
(188, 10, 6, 8, NULL, NULL, 'Tanda koma yang digunakan secara tepat terdapat pada', '#####Terdakwa menurut hakiM, terbukti bersalah. ', '#####Perusahaan itu bangkrut, karena ulah direktur utamanya. ', '#####Dia belum berhasil, meskipun sudah bekerja keras.', '#####Jika tidak segera diberantas, peredaran narkoba akan semakin merajalela. ', '#####Pengalaman hidup itu, guru yang baik. ', 'C', '2019-08-16 20:59:22', 8, 25),
(189, 10, 6, 8, NULL, NULL, 'Penulisan nama dengan gelar kesarjanaannya yangtepat terdapat dalam contoh', '#####Dr. Valentino Woworuntu, MBA. ', '#####DR. Lajnah Latifah, M.Pd. ', '#####Ir. Lois Lalu, MA. ', '#####I.R. Cordiva Aridho, M.M. ', '#####DRS. Saddam Husnaeni, SH. ', 'A', '2019-08-16 20:59:22', 10, 23),
(190, 10, 6, 8, NULL, NULL, 'Huruf kapital yang digunakan secara benar terdapat pada', '#####Rancangan Undang-undang itu sedang dibahas. ', '#####Beberapa Sekolah Dasar di daerah terpencil kekurangan guru. ', '#####Bahasa Indonesia ditetapkan sebagai Bahasa Negara dalam Undang-Undang Dasar kita.', '#####Makalah berjudul “Globalisasi dan Imperialisme” ', '#####Peng-Indonesiaan istilah asing perlu digalakkan. ', 'A', '2019-08-16 20:59:22', 7, 26),
(191, 10, 6, 8, NULL, NULL, 'Kata yang tidak cocok digunakan dalam komunikasi tulis resmi terdapat pada', '#####Mengubah haluan ', '#####Mengukuhkan jabatan ', '#####Memantapkan jai diri', '#####Menjajaki pendapat umum', '#####Bertekat bulat ', 'D', '2019-08-16 20:59:22', 5, 28),
(192, 10, 6, 8, NULL, NULL, 'Kata sarapan yang cocok digunakan dalam komunikasi tulis resmi terdapat \npada', '#####Azas partal ', '#####Sikap emosionil ', '#####Aktifitas anak ', '#####Segi kognitif ', '#####Sujut syukur ', 'C', '2019-08-16 20:59:22', 11, 22),
(193, 10, 6, 8, NULL, NULL, 'Sudah saatnya ....peralatan militer kita segera dilakukan.  Kalimat yang tepat untuk melengkapi kalimat di atas adalah', '#####Perlengkapan ', '#####Kelengkapan ', '#####Pelengkapan', '#####Pemerlengkap', '#####pelengkap', 'A', '2019-08-16 20:59:22', 14, 19),
(194, 10, 6, 8, NULL, NULL, 'Susunan kalimat yang tidak janggal terdapat pada .... ', '#####Siapapun yang bersalah, ia harus dihukum.', '#####Sesudah berunding selama lima jam, putusan baru dapat diambil. ', '#####Alasannya adalah karena dia tidak patuh kepada atasan. ', '#####Krisis ekonomi terjadi disebabkan karena korupsI, kolusi, dan nepotisme merajalela. ', '#####Alasannya adalah karena dia tidak patuh kepada atasan. ', 'D', '2019-08-16 20:59:22', 6, 27),
(195, 10, 6, 8, NULL, NULL, 'Pemakaian tanda titik dua dalam kalimat-kalimat berikut yangsesuai dengan  Pedoman Umum EYD adalah ... ', '#####Ayahku sedang mencari: celana, sepatu, dan topi. ', '#####Dalam rapat itu yang hadir hanya: Mattalata, Faisol, Rogers, dan Rozi. ', '#####Saya masih memerlukan perabot rumah tangga: meja, almari, dan kursi. ', '#####Fakultas itu mempunai jurusan : Kimia, Geologi, biologi, dan Geodesi. ', '#####Sebentar lagi anak saya akan membeli :radio, jam dinding, dan tas. ', 'D', '2019-08-16 20:59:22', 16, 17),
(196, 10, 7, 14.3, NULL, NULL, 'Untuk mencapai target secara kelompok maka saya…', '#####Tidak peduli semua anggota bekerja atau tidak yang penting saya sudah berusaha semaksimal mungkin', '#####Memotivasi teman sesama anggota untuk berusaha semaksimal mungkin', '#####Menstimulasi anggota kelompok lain untuk membantu', '#####Meminta bantuan orang lain jika diperlukan', '#####Berusaha dengan semaksimal mungkin agar sesama anggota juga melakukan hal yang sama', 'B', '2019-08-16 20:59:32', 28, 5),
(197, 10, 7, 14.3, NULL, NULL, 'Bila ada rekan kerja yang salah menuliskan gelar Saya di dalam surat, maka Saya ...', '#####Tersinggung karena gelar tersebut Saya peroleh dengan susah payah dan merupakan kehormatan Saya.', '#####Biasa saja, tidak tersinggung sama sekali.', '#####Saya mengingatkan kekeliruannya dengan baik-baik.', '#####Saya mengingatkannya dengan tegas agar dia jera.', '#####Keliru menulis gelar bukanlah masalah yang besar bagi saya.', 'C', '2019-08-16 20:59:32', 30, 5),
(198, 10, 7, 14.3, NULL, NULL, 'Ketika ide-ide saya tidak didukung oleh pihak lain karena dianggap tidak menarik dan tidak sesuai dengan keinginan anggota lainnya saya berusaha ...', '#####Membicarakan lebih jauh dengan anggota lainnya.', '#####Mencari dukungan dari ketua.', '#####Membicarakan dengan anggota lain untuk memadukan ide.', '#####Merumuskan ide itu dengan pihak lain di luar kelompok.', '#####Menggantinya dengan ide yang lain.', 'C', '2019-08-16 20:59:32', 26, 7),
(199, 10, 7, 14.3, NULL, NULL, 'Saya dipindah ke bagian lain yang orang-orangnya tidak saya kenal sebelumnya. Sikap saya ...', '#####Menerima dengan kecewa dan bekerja dengan seadanya', '#####Segera mengerjakan tugas-tugas dibagian itu', '#####Berkenalan dan berbincang-bincang dengan orang-orang di bagian itu.', '#####Memprotes pemindahan tersebut', '#####Mogok kerja sampai saya dipindahkan kembali ke bagian saya semula', 'B', '2019-08-16 20:59:32', 10, 23),
(200, 10, 7, 14.3, NULL, NULL, 'Berita di sebuah stasiun televisi nasional sedang hangat membicarakan kondisi perekonomian Indonesia saat ini. Sampai-sampai di setiap tayangan talk show selalu dihadirkan pengamat ekonomi dengan prediksi-prediksinya bahwa bulan depan akan terjadi inflasi tinggi Indonesia. Hal ini membuat saya menjadi ...', '#####Tidak mempercayai prediksi tersebut karena prediksi yang buruk tidak perlu dipercayai.', '#####Susah tidur setiap malam memikirkan keadaan ke depan yang berat.', '#####Depresi karena inflasi erat kaitannya dengan kenaikan harga barang.', '#####Berhati-hati dan berhemat dalam membelanjakan uang.', '#####Pasrah dengan keadaan karena yang akan terjadi biarlah terjadi.', 'D', '2019-08-16 20:59:32', 21, 14),
(201, 10, 7, 14.3, NULL, NULL, 'Pimpinan memutuskan untuk memutasi Saya ke kota lain, padahal anak-anak Saya sedang dalam masa adaptasi dengan lingkungan sekolahnya. Sikap Saya adalah ...', '#####Mengusulkan pada pimpinan agar Saya digantikan oleh orang lain saja', '#####Menerima keputusan mutasi dan membuat syarat pada pimpinan agar anak dan istri Saya bisa tetap tinggal sampai mutasi selanjutnya', '#####Menanyakan terlebih dahulu pada anak dan istri Saya, jika keduanya tidak setuju maka Saya akan menolak', '#####Menerima keputusan pimpinan dengan patuh.', '#####Mengajukan keberatan mutasi dengan alasan anak.', 'D', '2019-08-16 20:59:32', 8, 25),
(202, 10, 7, 14.3, NULL, NULL, 'Saya sedang mengerjakan laporan tugas semester yang akan dikumpulkan besok pagi. Tiba-tiba sahabat Saya datang dengan wajah sedih dan ingin curhat pada Saya. Sikap saya adalah ...', '#####Terus mengerjakan laporan sambil adalah mendengarkan ceritanya.', '#####Mendengarkan ceritanya dengan penuh perhatian', '#####Meneruskan mengerjakan laporan tanpa mempedulikan teman Saya', '#####Menanggapi dan memberi berbagai alternatif solusi', '#####Dengan menyesal menolak mendengarkan keluhannya', 'A', '2019-08-16 20:59:32', 12, 22),
(203, 10, 7, 14.3, NULL, NULL, 'Bagi Anda, pekerjaan yang menyenangkan adalah pekerjaan yang ...', '#####Sesuai dengan keinginan keluarga Saya.', '#####Biasa-biasa saja.', '#####Menghasilkan pendapatan yang besar.', '#####Memicu semangat untuk berprestasi.', '#####Sesuai dengan minat dan potensi yang saya miliki.', 'D', '2019-08-16 20:59:32', 32, 1),
(204, 10, 7, 14.3, NULL, NULL, 'Jika ada kesempatan berkompetisi bidang yang saya sukai, maka Saya ...', '#####Lebih baik saya tidak mengikuti kompetisi tersebut karena takut kalah dan dibenci rekan yang lain', '#####Tidak ikut kompetisi.', '#####Mengalahkan pesaing dengan berusaha meningkatkan kemampuan di bidang tersebut.', '#####Mencari kelemahan yang ada pada pesaing yang lain.', '#####Melihat situasi sekitar dan ikut kalau ada kesempatan menang', 'C', '2019-08-16 20:59:32', 29, 6),
(205, 10, 7, 14.3, NULL, NULL, 'Semua rencana kerja yang Saya buat tadi pagi telah selesai Saya kerjakan, namun jam kerja hari ini masih ada sisa waktu. Sebaiknya Saya ...', '#####Membaca buku-buku pengembangan dan motivasi diri di sisa waktu kerja.', '#####Melakukan aktivitas mengakses berita dan situs jejaring sosial facebook.', '#####Mengobrol dengan rekan­ kerja lain untuk sekadar mengisi waktu setelah lelah bekerja hari ini.', '#####Mereview hasil pekerjaan hari ini.', '#####Percakapan online dengan kawan lama dari sosial media yang dapat diakses dari telepon genggam.', 'D', '2019-08-16 20:59:32', 24, 8),
(206, 10, 7, 14.3, NULL, NULL, 'Hampir setiap hari, saya terdaftar sebagai pegawai dengan presensi paling awal datangnya jika dibandingkan dengan rekan kerja lainnya. Setiba di kantor, Saya melakukan kegiatan ...', '#####Membaca koran dulu agar update', '#####Membuat daftar rencana kerja yang akan dilakukan dan dise­ lesaikan hari ini', '#####Santai di luar kantor menikmati udara pagi', '#####Mengobrol dengan rekan sejawat, menanyakan kabar harian mereka', '#####enyelesaikan pekerjaan yang tertunda kemarin', 'B', '2019-08-16 20:59:32', 29, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_mapel`
--

DROP TABLE IF EXISTS `tr_guru_mapel`;
CREATE TABLE IF NOT EXISTS `tr_guru_mapel` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_guru` (`id_guru`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_mapel`
--

INSERT INTO `tr_guru_mapel` (`id`, `id_guru`, `id_mapel`) VALUES
(30, 10, 5),
(31, 10, 6),
(32, 10, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tr_guru_tes`
--

DROP TABLE IF EXISTS `tr_guru_tes`;
CREATE TABLE IF NOT EXISTS `tr_guru_tes` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_guru` int(6) NOT NULL,
  `id_mapel` int(6) NOT NULL,
  `nama_ujian` varchar(200) NOT NULL,
  `jumlah_soal` int(6) NOT NULL,
  `waktu` int(6) NOT NULL,
  `jenis` enum('acak','set') NOT NULL,
  `detil_jenis` varchar(500) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `terlambat` datetime NOT NULL,
  `token` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_guru` (`id_guru`),
  KEY `id_mapel` (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_guru_tes`
--

INSERT INTO `tr_guru_tes` (`id`, `id_guru`, `id_mapel`, `nama_ujian`, `jumlah_soal`, `waktu`, `jenis`, `detil_jenis`, `tgl_mulai`, `terlambat`, `token`) VALUES
(6, 10, 5, 'TES WAWASAN KEBANGSAAN (TWK)', 10, 10, 'acak', '', '2019-08-17 10:00:00', '2019-08-23 23:00:00', 'BXXHA'),
(7, 10, 6, 'TES INTELEGANSI UMUM (TIU)', 10, 10, 'acak', '', '2019-08-17 10:00:00', '2019-08-23 23:00:00', 'QZINL'),
(8, 10, 7, 'TES KARAKTERISTIK PRIBADI (TKP)', 10, 10, 'acak', '', '2019-08-17 10:00:00', '2019-08-23 23:00:00', 'EFGXU');

-- --------------------------------------------------------

--
-- Table structure for table `tr_ikut_ujian`
--

DROP TABLE IF EXISTS `tr_ikut_ujian`;
CREATE TABLE IF NOT EXISTS `tr_ikut_ujian` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_tes` int(6) NOT NULL,
  `id_user` int(6) NOT NULL,
  `list_soal` longtext NOT NULL,
  `list_jawaban` longtext NOT NULL,
  `jml_benar` int(6) NOT NULL,
  `nilai` decimal(10,2) NOT NULL,
  `nilai_bobot` decimal(10,2) NOT NULL,
  `tgl_mulai` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `status` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_tes` (`id_tes`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tr_ikut_ujian`
--

INSERT INTO `tr_ikut_ujian` (`id`, `id_tes`, `id_user`, `list_soal`, `list_jawaban`, `jml_benar`, `nilai`, `nilai_bobot`, `tgl_mulai`, `tgl_selesai`, `status`) VALUES
(21, 6, 14, '182,179,183,177,185,180,181,176,178,184', '182:A:N,179:D:N,183:C:N,177:C:N,185:D:N,180:D:N,181:D:N,176:B:N,178:C:N,184:C:N', 4, '30.00', '3.00', '2019-08-17 11:25:20', '2019-08-17 11:35:20', 'N'),
(22, 7, 14, '191,189,187,195,190,193,194,188,186,192', '191:D:N,189:C:N,187::N,195::N,190::N,193::N,194::N,188::N,186::N,192::N', 0, '0.00', '0.00', '2019-08-17 11:34:23', '2019-08-17 11:44:23', 'Y'),
(23, 6, 16, '181,177,182,183,185,180,176,184,179,178', '181:D:N,177:B:N,182:A:N,183:C:N,185:A:N,180:A:N,176:A:N,184:C:N,179:A:N,178:D:N', 3, '22.50', '2.25', '2019-08-17 13:17:20', '2019-08-17 13:27:20', 'N'),
(24, 6, 17, '181,179,184,177,176,180,182,183,178,185', '181:A:N,179:C:N,184:B:N,177:B:N,176:C:N,180:D:N,182:B:N,183:D:N,178:B:N,185:A:Y', 1, '7.50', '0.75', '2019-08-17 13:17:26', '2019-08-17 13:27:26', 'N'),
(25, 7, 16, '187,193,186,191,195,188,194,189,190,192', '187:D:N,193:C:N,186:B:N,191:A:N,195:A:N,188:D:N,194:A:N,189:A:N,190:D:N,192:D:N', 1, '8.00', '0.80', '2019-08-17 13:21:15', '2019-08-17 13:31:15', 'N'),
(26, 7, 17, '190,188,192,191,194,193,195,186,189,187', '190:C:N,188:B:N,192:C:N,191:C:N,194:A:N,193:B:N,195:D:N,186:A:N,189:C:N,187:A:N', 2, '16.00', '1.60', '2019-08-17 13:22:57', '2019-08-17 13:32:57', 'N'),
(27, 8, 16, '201,203,205,197,206,198,196,202,204,200', '201:D:N,203:D:N,205:D:N,197:C:N,206:D:N,198:C:N,196:B:N,202:D:N,204:C:N,200:D:N', 8, '114.40', '11.44', '2019-08-17 13:25:13', '2019-08-17 13:35:13', 'N'),
(28, 8, 17, '202,205,199,196,206,198,200,204,203,201', '202:A:N,205:C:N,199:C:N,196:B:N,206:D:N,198:C:N,200:A:N,204:D:N,203:D:N,201:C:N', 4, '57.20', '5.72', '2019-08-17 13:27:22', '2019-08-17 13:37:22', 'N'),
(29, 6, 18, '176,184,178,179,182,180,183,185,177,181', '176:C:N,184:C:N,178:C:N,179:D:N,182:D:N,180:D:N,183:C:N,185:A:N,177:B:N,181:D:N', 3, '22.50', '2.25', '2019-08-17 13:48:37', '2019-08-17 13:58:37', 'N'),
(30, 6, 19, '184,179,182,185,178,180,183,176,177,181', '184:A:N,179:B:N,182:D:N,185:A:N,178:D:N,180:D:N,183:C:N,176:D:N,177:B:N,181:D:N', 7, '52.50', '5.25', '2019-08-17 13:48:58', '2019-08-17 13:58:58', 'N'),
(31, 7, 19, '186,194,193,189,188,191,192,187,195,190', '186:A:N,194:A:N,193:B:N,189:D:N,188:C:N,191:A:N,192:D:N,187:D:N,195:D:N,190:A:N', 3, '24.00', '2.40', '2019-08-17 13:54:26', '2019-08-17 14:04:26', 'N'),
(32, 7, 18, '195,190,193,191,186,189,194,192,188,187', '195:D:N,190:C:N,193:C:N,191:C:N,186:C:N,189:A:N,194:A:N,192:C:N,188:D:N,187:A:N', 4, '32.00', '3.20', '2019-08-17 13:55:31', '2019-08-17 14:05:31', 'N'),
(35, 8, 19, '202,201,200,199,197,205,204,198,206,196', '202:D:N,201:D:N,200:D:N,199:C:N,197:C:N,205:D:N,204:C:N,198:C:N,206:B:N,196:B:N', 8, '114.40', '11.44', '2019-08-17 14:28:25', '2019-08-17 14:38:25', 'N'),
(36, 8, 18, '201,196,199,197,202,206,203,205,200,198', '201:D:N,196:B:N,199:C:N,197:C:N,202:A:N,206:B:N,203:D:N,205:D:N,200:D:N,198:C:N', 9, '128.70', '12.87', '2019-08-17 14:28:29', '2019-08-17 14:38:29', 'N'),
(37, 8, 24, '196,197,204,199,201,200,198,206,202,203', '196:B:N,197:C:N,204:C:N,199:C:N,201:B:N,200:D:N,198:C:N,206:B:N,202:D:N,203:D:N', 7, '100.10', '10.01', '2019-08-17 14:35:50', '2019-08-17 14:45:50', 'N'),
(38, 6, 23, '182,179,183,181,184,180,178,176,177,185', '182:A:N,179:C:N,183:C:N,181:A:N,184:C:N,180:B:N,178:D:N,176:B:N,177:A:N,185:A:N', 2, '15.00', '1.50', '2019-08-17 14:35:53', '2019-08-17 14:45:53', 'N'),
(39, 7, 24, '194,190,193,186,191,188,189,195,192,187', '194:C:N,190:D:N,193:B:N,186:D:N,191:A:N,188:C:N,189:B:N,195:D:N,192:C:N,187:D:Y', 3, '24.00', '2.40', '2019-08-17 14:40:59', '2019-08-17 14:50:59', 'N'),
(40, 7, 23, '189,187,191,194,186,188,190,193,192,195', '189:C:N,187:A:N,191:A:N,194:C:N,186:C:N,188:B:N,190:A:N,193:A:N,192:C:N,195:D:N', 5, '40.00', '4.00', '2019-08-17 14:41:20', '2019-08-17 14:51:20', 'N'),
(41, 6, 24, '185,178,181,180,182,177,179,183,184,176', '185:B:N,178:C:N,181:C:N,180:C:N,182:D:N,177:B:N,179:B:N,183:C:N,184:B:N,176:B:N', 3, '22.50', '2.25', '2019-08-17 14:46:38', '2019-08-17 14:56:38', 'N'),
(42, 8, 23, '205,197,196,204,202,206,198,203,201,200', '205:D:N,197:C:N,196:B:N,204:C:N,202:A:N,206:B:N,198:A:N,203:D:N,201:C:N,200:D:N', 8, '114.40', '11.44', '2019-08-17 14:48:15', '2019-08-17 14:58:15', 'N'),
(43, 6, 22, '176,185,178,182,179,184,181,177,183,180', '176:B:N,185:D:N,178:D:N,182:D:N,179:A:N,184:C:N,181:D:N,177:C:N,183:C:N,180:C:N', 4, '30.00', '3.00', '2019-08-17 14:57:19', '2019-08-17 15:07:19', 'N'),
(44, 8, 21, '197,205,200,199,198,201,206,204,203,202', '197:C:N,205:D:N,200:D:N,199:C:N,198:C:N,201:D:N,206:B:N,204:C:N,203:D:N,202:A:N', 9, '128.70', '12.87', '2019-08-17 14:58:24', '2019-08-17 15:08:24', 'N'),
(45, 7, 22, '190,191,193,188,189,192,187,194,195,186', '190:D:N,191:D:N,193:A:N,188:C:N,189:B:N,192:C:N,187:D:N,194:D:N,195:D:N,186:D:N', 6, '48.00', '4.80', '2019-08-17 15:02:55', '2019-08-17 15:12:55', 'N'),
(46, 7, 21, '192,195,194,189,191,193,186,187,190,188', '192:A:N,195:D:N,194:D:N,189:C:N,191:C:N,193:B:N,186:C:N,187:D:N,190:D:N,188:D:N', 3, '24.00', '2.40', '2019-08-17 15:05:23', '2019-08-17 15:15:23', 'N'),
(47, 8, 22, '196,203,205,199,200,201,206,202,197,204', '196:B:N,203:D:N,205:D:N,199:C:N,200:D:N,201:B:N,206:B:N,202:A:N,197:C:N,204:C:N', 8, '114.40', '11.44', '2019-08-17 15:08:34', '2019-08-17 15:18:34', 'N'),
(48, 6, 21, '176,182,183,181,177,180,179,184,185,178', '176:D:N,182:D:N,183:C:N,181:D:N,177:C:N,180:D:N,179:B:N,184:C:N,185:D:N,178:D:N', 7, '52.50', '5.25', '2019-08-17 15:13:39', '2019-08-17 15:23:39', 'N'),
(49, 6, 25, '181,184,179,182,176,180,178,185,183,177', '181:D:N,184:C:N,179:A:N,182:D:N,176:B:N,180:B:N,178:C:N,185:A:N,183:C:N,177:C:N', 3, '22.50', '2.25', '2019-08-17 15:27:04', '2019-08-17 15:37:04', 'N'),
(50, 7, 25, '186,195,191,187,189,193,194,192,188,190', '186:A:N,195:D:N,191:A:N,187:A:N,189:C:N,193:A:N,194:A:N,192:C:N,188:B:N,190:C:N', 3, '24.00', '2.40', '2019-08-17 15:32:06', '2019-08-17 15:42:06', 'N'),
(51, 8, 25, '202,205,198,203,199,196,204,197,200,206', '202:A:N,205:D:N,198:C:N,203:D:N,199:B:N,196:B:N,204:C:N,197:C:N,200:A:N,206:B:N', 9, '128.70', '12.87', '2019-08-17 15:36:15', '2019-08-17 15:46:15', 'N'),
(52, 6, 26, '184,177,176,180,181,185,179,178,183,182', '184:B:N,177:B:N,176:B:N,180:C:N,181:D:N,185:A:N,179:B:N,178:C:N,183:C:N,182:B:N', 3, '22.50', '2.25', '2019-08-17 15:43:41', '2019-08-17 15:53:41', 'N'),
(53, 6, 27, '176,180,183,178,177,181,184,185,179,182', '176:B:N,180:D:N,183:C:N,178:D:N,177:C:N,181:D:N,184:C:N,185:D:N,179:B:N,182:A:N', 6, '45.00', '4.50', '2019-08-17 15:45:38', '2019-08-17 15:55:38', 'N'),
(54, 8, 26, '201,199,204,203,202,197,206,205,196,200', '201:B:N,199:B:N,204:C:N,203:D:N,202:A:N,197:C:N,206:B:N,205:D:N,196:B:N,200:D:N', 9, '128.70', '12.87', '2019-08-17 15:47:14', '2019-08-17 15:57:14', 'N'),
(55, 7, 26, '190,193,186,189,187,192,194,191,188,195', '190:C:N,193:A:N,186:D:N,189:C:N,187:A:N,192:B:N,194:C:N,191:C:N,188:B:N,195:D:N', 2, '16.00', '1.60', '2019-08-17 15:51:06', '2019-08-17 16:01:06', 'N'),
(56, 8, 27, '197,198,206,199,205,201,200,203,204,196', '197:C:N,198:C:N,206:B:N,199:B:N,205:D:N,201:D:N,200:D:N,203:D:N,204:C:N,196:B:N', 10, '143.00', '14.30', '2019-08-17 15:52:29', '2019-08-17 16:02:29', 'N'),
(57, 6, 28, '182,180,178,181,183,179,176,185,184,177', '182:B:N,180:D:N,178:D:N,181:A:N,183:C:N,179:D:N,176:B:N,185:A:N,184:C:N,177:B:N', 3, '22.50', '2.25', '2019-08-17 15:56:04', '2019-08-17 16:06:04', 'N'),
(58, 7, 27, '191,195,190,189,188,193,192,187,194,186', '191:C:N,195:D:N,190:C:N,189:A:N,188:D:N,193:C:N,192:D:N,187:D:N,194:A:N,186:A:N', 2, '16.00', '1.60', '2019-08-17 15:57:19', '2019-08-17 16:07:19', 'N'),
(59, 7, 28, '190,192,193,195,194,188,186,187,189,191', '190:D:N,192:A:N,193:C:N,195:A:N,194:A:N,188:B:N,186:D:N,187:A:N,189:C:N,191:D:N', 1, '8.00', '0.80', '2019-08-17 16:03:11', '2019-08-17 16:13:11', 'N'),
(60, 6, 29, '182,179,180,183,178,185,184,176,181,177', '182:B:N,179:B:N,180:B:N,183:C:N,178:D:N,185:A:N,184:A:N,176:B:N,181:A:N,177:B:Y', 4, '30.00', '3.00', '2019-08-17 16:07:07', '2019-08-17 16:17:07', 'N'),
(61, 8, 28, '196,200,198,201,206,204,202,199,197,203', '196:B:N,200:A:N,198:C:N,201:C:N,206:B:N,204:C:N,202:A:N,199:C:N,197:C:N,203:D:N', 7, '100.10', '10.01', '2019-08-17 16:08:38', '2019-08-17 16:18:38', 'N'),
(62, 7, 29, '194,189,186,193,188,192,195,191,187,190', '194:A:N,189:D:N,186:D:N,193:A:N,188:D:N,192:B:N,195:A:N,191:C:N,187:A:N,190:C:N', 1, '8.00', '0.80', '2019-08-17 16:12:36', '2019-08-17 16:22:36', 'N'),
(63, 8, 29, '202,196,200,198,201,197,199,203,206,204', '202:A:N,196:B:N,200:D:N,198:C:N,201:B:N,197:C:N,199:C:N,203:D:N,206:B:N,204:D:N', 7, '100.10', '10.01', '2019-08-17 16:18:03', '2019-08-17 16:28:03', 'N'),
(64, 6, 30, '183,185,177,176,179,181,182,184,178,180', '183:A:N,185:D:N,177:C:N,176:B:N,179:B:N,181:A:N,182:D:N,184:C:N,178:D:N,180:B:N', 3, '22.50', '2.25', '2019-08-17 16:35:24', '2019-08-17 16:45:24', 'N'),
(65, 8, 31, '200,199,201,206,196,197,198,204,202,203', '200:A:N,199:B:N,201:B:N,206:B:N,196:C:N,197:C:N,198:C:N,204:C:N,202:D:N,203:D:N', 6, '85.80', '8.58', '2019-08-17 16:38:21', '2019-08-17 16:48:21', 'N'),
(66, 7, 30, '186,194,191,189,188,187,195,192,190,193', '186:D:N,194:D:N,191:B:N,189:C:N,188:B:N,187:D:N,195:A:N,192:B:N,190:C:N,193:B:N', 1, '8.00', '0.80', '2019-08-17 16:40:02', '2019-08-17 16:50:02', 'N'),
(67, 6, 31, '182,177,178,184,185,181,180,179,176,183', '182:B:N,177:C:N,178:C:N,184:C:N,185:D:N,181:D:N,180:B:N,179:D:N,176:D:Y,183:C:N', 4, '30.00', '3.00', '2019-08-17 16:43:00', '2019-08-17 16:53:00', 'N'),
(68, 8, 30, '200,196,197,206,201,204,205,202,199,198', '200:D:N,196:B:N,197:C:N,206:B:N,201:B:N,204:D:N,205:D:N,202:B:N,199:C:N,198:A:N', 5, '71.50', '7.15', '2019-08-17 16:44:35', '2019-08-17 16:54:35', 'N'),
(69, 7, 31, '194,186,193,189,192,188,190,191,195,187', '194:B:N,186:C:N,193:B:N,189:C:N,192:B:N,188:D:N,190:C:N,191:C:N,195:C:N,187:D:N', 1, '8.00', '0.80', '2019-08-17 16:47:26', '2019-08-17 16:57:26', 'N'),
(70, 6, 32, '180,179,177,183,184,182,176,178,181,185', '180:D:N,179:B:N,177:C:N,183:C:N,184:C:N,182:A:N,176:B:N,178:C:N,181:D:N,185:A:N', 5, '37.50', '3.75', '2019-08-17 16:51:19', '2019-08-17 17:01:19', 'N'),
(71, 6, 33, '184,185,183,180,176,182,181,177,178,179', '184:C:N,185:A:N,183:C:N,180:B:N,176:B:N,182:D:N,181:D:N,177:A:N,178:D:N,179:B:N', 4, '30.00', '3.00', '2019-08-17 16:55:34', '2019-08-17 17:05:34', 'N'),
(72, 7, 32, '192,195,188,189,193,191,187,190,186,194', '192:D:N,195:D:N,188:C:N,189:A:N,193:C:N,191:D:N,187:A:N,190:D:N,186:B:N,194:B:N', 4, '32.00', '3.20', '2019-08-17 16:56:18', '2019-08-17 17:06:18', 'N'),
(73, 8, 33, '200,196,202,197,204,206,201,203,205,198', '200:B:N,196:B:N,202:C:N,197:C:N,204:C:N,206:B:N,201:D:N,203:D:N,205:D:N,198:C:N', 8, '114.40', '11.44', '2019-08-17 16:59:32', '2019-08-17 17:09:32', 'N'),
(74, 7, 33, '195,192,186,189,190,188,187,194,193,191', '195:D:N,192:D:N,186:A:N,189:A:N,190:A:N,188:B:N,187:D:N,194:C:N,193:B:N,191:C:N', 3, '24.00', '2.40', '2019-08-17 17:03:51', '2019-08-17 17:13:51', 'N'),
(75, 8, 32, '202,205,198,204,201,196,197,200,203,199', '202:D:N,205:D:N,198:C:N,204:C:N,201:D:N,196:C:N,197:C:N,200:D:N,203:D:N,199:C:N', 7, '100.10', '10.01', '2019-08-17 17:04:05', '2019-08-17 17:14:05', 'N'),
(76, 6, 34, '179,177,185,178,181,182,176,183,184,180', '179:B:N,177:C:N,185:A:N,178:B:N,181:D:N,182:D:N,176:C:N,183:C:N,184:C:N,180:D:N', 5, '37.50', '3.75', '2019-08-17 17:11:03', '2019-08-17 17:21:03', 'N'),
(77, 6, 35, '184,177,178,181,176,179,183,185,180,182', '184:C:N,177:B:N,178:C:N,181:D:N,176:B:N,179:B:N,183:C:N,185:D:N,180:D:N,182:C:N', 5, '37.50', '3.75', '2019-08-17 17:14:19', '2019-08-17 17:24:19', 'N'),
(78, 7, 34, '190,192,187,193,194,188,189,191,186,195', '190:D:N,192:A:N,187:D:N,193:A:N,194:D:N,188:C:N,189:B:N,191:A:N,186:D:N,195:D:N', 4, '32.00', '3.20', '2019-08-17 17:17:18', '2019-08-17 17:27:18', 'N'),
(79, 7, 35, '188,190,191,192,187,189,194,193,195,186', '188:D:N,190:A:N,191:A:N,192:C:N,187:D:N,189:A:N,194:C:N,193:B:N,195:D:N,186:A:N', 4, '32.00', '3.20', '2019-08-17 17:19:31', '2019-08-17 17:29:31', 'N'),
(80, 8, 34, '199,198,203,201,206,205,197,196,202,204', '199:C:N,198:C:N,203:D:N,201:B:N,206:B:N,205:D:N,197:C:N,196:B:N,202:D:N,204:C:N', 7, '100.10', '10.01', '2019-08-17 17:23:54', '2019-08-17 17:33:54', 'N'),
(81, 8, 35, '198,196,202,205,200,197,203,204,199,206', '198:C:N,196:B:N,202:A:N,205:B:N,200:D:N,197:C:N,203:D:N,204:C:N,199:C:N,206:B:N', 8, '114.40', '11.44', '2019-08-17 17:26:36', '2019-08-17 17:36:36', 'N'),
(82, 6, 36, '179,176,183,185,182,178,180,181,184,177', '179:A:N,176:D:N,183:C:N,185:A:N,182:A:N,178:A:N,180:D:N,181:D:N,184:C:N,177:C:N', 5, '37.50', '3.75', '2019-08-17 17:32:48', '2019-08-17 17:42:48', 'N'),
(83, 7, 36, '191,194,192,187,195,188,190,193,186,189', '191:A:N,194:A:N,192:A:N,187:A:N,195:A:N,188:A:N,190:A:N,193:A:N,186:A:N,189:A:N', 3, '24.00', '2.40', '2019-08-17 17:39:40', '2019-08-17 17:49:40', 'N'),
(84, 8, 36, '205,203,206,202,197,199,200,198,204,196', '205:D:N,203:D:N,206:D:N,202:D:N,197:C:N,199:C:N,200:C:N,198:C:N,204:C:N,196:B:N', 6, '85.80', '8.58', '2019-08-17 17:40:51', '2019-08-17 17:50:51', 'N'),
(85, 6, 38, '183,180,176,184,185,179,182,178,177,181', '183:C:N,180:A:N,176:A:N,184:C:N,185:A:N,179:B:N,182:D:N,178:A:N,177:C:N,181:D:Y', 4, '30.00', '3.00', '2019-08-17 17:48:42', '2019-08-17 17:58:42', 'N'),
(86, 6, 39, '183,185,178,176,180,177,181,182,179,184', '183:C:N,185:A:N,178:A:N,176:B:N,180:D:N,177:B:N,181:D:N,182:B:N,179:C:N,184:A:N', 4, '30.00', '3.00', '2019-08-17 17:51:22', '2019-08-17 18:01:22', 'N'),
(87, 7, 38, '186,194,193,190,188,189,195,192,187,191', '186:A:N,194:A:N,193:A:N,190:A:N,188:B:N,189:D:N,195:B:N,192:C:N,187:B:N,191:C:N', 3, '24.00', '2.40', '2019-08-17 17:56:20', '2019-08-17 18:06:20', 'N'),
(88, 7, 39, '188,187,186,190,192,195,194,193,191,189', '188:A:N,187:A:N,186:A:N,190:C:N,192:A:N,195:A:N,194:A:N,193:A:N,191:A:N,189:A:N', 2, '16.00', '1.60', '2019-08-17 17:56:31', '2019-08-17 18:06:31', 'N'),
(89, 8, 39, '201,196,197,203,205,199,206,200,198,202', '201:C:N,196:A:N,197:C:N,203:D:N,205:B:N,199:B:N,206:B:N,200:A:N,198:A:N,202:D:N', 4, '57.20', '5.72', '2019-08-17 17:59:41', '2019-08-17 18:09:41', 'N'),
(90, 8, 38, '200,196,201,197,199,198,205,202,203,204', '200:A:N,196:B:N,201:B:N,197:C:N,199:B:N,198:C:N,205:D:N,202:D:N,203:D:N,204:C:N', 7, '100.10', '10.01', '2019-08-17 18:01:11', '2019-08-17 18:11:11', 'N'),
(91, 6, 40, '183,177,184,180,178,179,176,181,182,185', '183:B:N,177:C:N,184:A:N,180:D:N,178:C:N,179:D:N,176:D:N,181:A:N,182:B:N,185:D:N', 4, '30.00', '3.00', '2019-08-17 18:06:53', '2019-08-17 18:16:53', 'N'),
(92, 7, 40, '193,188,194,195,189,190,187,186,191,192', '193:B:N,188:B:N,194:C:N,195:B:N,189:A:N,190:D:N,187:D:N,186:D:N,191:D:N,192:A:N', 2, '16.00', '1.60', '2019-08-17 18:08:54', '2019-08-17 18:18:54', 'N'),
(93, 8, 40, '198,206,204,197,201,200,203,199,202,205', '198:A:N,206:B:N,204:C:N,197:D:N,201:C:N,200:B:N,203:D:N,199:D:N,202:B:N,205:D:N', 4, '57.20', '5.72', '2019-08-17 18:11:56', '2019-08-17 18:21:56', 'N'),
(94, 6, 41, '181,178,177,176,182,179,180,184,183,185', '181:A:N,178:D:N,177:B:N,176:D:N,182:B:N,179:B:N,180:C:N,184:D:N,183:B:N,185:A:N', 3, '22.50', '2.25', '2019-08-17 18:39:03', '2019-08-17 18:49:03', 'N'),
(95, 7, 41, '187,189,195,194,193,190,192,186,188,191', '187:D:N,189:C:N,195:D:N,194:A:N,193:A:N,190:C:N,192:B:N,186:D:N,188:B:N,191:B:N', 2, '16.00', '1.60', '2019-08-17 18:45:10', '2019-08-17 18:55:10', 'N'),
(96, 6, 42, '180,177,182,181,184,185,179,176,178,183', '180:B:N,177:A:N,182:C:N,181:C:N,184:B:N,185:D:N,179:C:N,176:B:N,178:B:N,183:C:Y', 2, '15.00', '1.50', '2019-08-17 18:52:05', '2019-08-17 19:02:05', 'N'),
(97, 8, 41, '203,204,205,200,198,197,201,196,199,206', '203:D:N,204:C:N,205:A:N,200:D:N,198:C:N,197:C:N,201:B:N,196:B:N,199:B:N,206:B:N', 8, '114.40', '11.44', '2019-08-17 18:53:19', '2019-08-17 19:03:19', 'N'),
(98, 7, 42, '186,189,194,193,192,195,187,190,188,191', '186:C:N,189:B:N,194:C:N,193:C:N,192:C:N,195::N,187::N,190::N,188::N,191::N', 2, '16.00', '1.60', '2019-08-17 19:02:19', '2019-08-17 19:12:19', 'N'),
(99, 8, 42, '196,202,199,204,201,200,203,197,205,206', '196:B:N,202:D:N,199:C:N,204:C:N,201:A:N,200:A:N,203:C:N,197:B:N,205:D:N,206:B:N', 4, '57.20', '5.72', '2019-08-17 19:09:00', '2019-08-17 19:19:00', 'N'),
(100, 6, 43, '184,178,183,179,182,176,181,185,180,177', '184:B:N,178:B:N,183:C:N,179:D:N,182:A:N,176:B:N,181:D:N,185:A:N,180:D:N,177:B:N', 3, '22.50', '2.25', '2019-08-17 19:19:21', '2019-08-17 19:29:21', 'N'),
(101, 7, 43, '190,194,188,186,192,193,187,189,191,195', '190:D:N,194:A:N,188:C:N,186:A:N,192:D:N,193:B:N,187:A:N,189:D:N,191:D:N,195:D:N', 3, '24.00', '2.40', '2019-08-17 19:23:25', '2019-08-17 19:33:25', 'N'),
(102, 8, 43, '204,201,196,202,199,203,205,200,197,198', '204:C:N,201:C:N,196:B:N,202:B:N,199:C:N,203:D:N,205:D:N,200:D:N,197:C:N,198:C:N', 7, '100.10', '10.01', '2019-08-17 19:29:42', '2019-08-17 19:39:42', 'N'),
(103, 6, 44, '184,182,177,176,185,179,178,181,180,183', '184:C:N,182:D:N,177:C:N,176:D:N,185:D:N,179:D:N,178:C:N,181:D:N,180:C:N,183:C:N', 4, '30.00', '3.00', '2019-08-17 19:54:42', '2019-08-17 20:04:42', 'N'),
(104, 6, 45, '182,177,179,176,184,183,181,178,180,185', '182:C:N,177:C:N,179:A:N,176:B:N,184:C:N,183:C:N,181:D:N,178:D:N,180:D:Y,185:D:N', 6, '45.00', '4.50', '2019-08-17 19:55:13', '2019-08-17 20:05:13', 'N'),
(105, 7, 44, '194,188,191,192,193,186,187,195,190,189', '194:D:N,188:B:N,191:B:N,192:B:N,193:A:N,186:A:N,187:D:N,195:B:N,190:B:N,189:C:N', 2, '16.00', '1.60', '2019-08-17 19:59:32', '2019-08-17 20:09:32', 'N'),
(106, 7, 45, '191,193,192,189,187,186,188,195,190,194', '191:A:N,193:B:N,192:C:N,189:C:N,187:D:N,186:A:N,188:C:N,195:A:N,190:C:N,194:B:N', 2, '16.00', '1.60', '2019-08-17 19:59:47', '2019-08-17 20:09:47', 'N'),
(107, 8, 45, '197,203,196,204,200,199,202,198,206,201', '197:C:N,203:D:N,196:B:N,204:D:N,200:D:N,199:C:N,202:B:N,198:C:N,206:B:N,201:C:N', 6, '85.80', '8.58', '2019-08-17 20:05:14', '2019-08-17 20:15:14', 'N'),
(108, 8, 44, '202,206,196,205,203,199,197,198,200,204', '202:D:N,206:B:N,196:B:N,205:D:N,203:D:N,199:C:N,197:B:N,198:C:N,200:C:N,204:C:N', 6, '85.80', '8.58', '2019-08-17 20:06:10', '2019-08-17 20:16:10', 'N'),
(109, 6, 46, '181,185,176,179,182,183,178,177,184,180', '181:C:N,185:C:N,176:B:N,179:C:N,182:B:N,183:C:N,178:D:N,177:A:N,184:B:N,180:C:N', 2, '15.00', '1.50', '2019-08-17 20:10:30', '2019-08-17 20:20:30', 'N'),
(110, 7, 46, '194,191,192,186,189,193,195,190,188,187', '194:D:N,191:B:N,192:D:N,186:D:N,189:B:N,193:A:N,195:A:N,190:C:N,188:B:N,187:D:N', 2, '16.00', '1.60', '2019-08-17 20:13:52', '2019-08-17 20:23:52', 'N'),
(111, 6, 47, '177,179,184,180,183,185,178,176,182,181', '177:B:N,179:B:N,184:A:N,180:D:N,183:C:N,185:A:N,178:C:N,176:C:N,182:B:N,181:D:N', 5, '37.50', '3.75', '2019-08-17 20:14:09', '2019-08-17 20:24:09', 'N'),
(112, 8, 46, '197,205,196,201,203,202,206,204,199,200', '197:C:N,205:D:N,196:B:N,201:B:N,203:D:N,202:D:N,206:B:N,204:C:N,199:C:N,200:D:N', 7, '100.10', '10.01', '2019-08-17 20:16:33', '2019-08-17 20:26:33', 'N'),
(113, 7, 47, '187,190,189,186,191,195,193,192,188,194', '187:A:N,190:D:N,189:A:N,186:A:N,191:A:N,195:C:N,193:B:N,192:D:N,188:D:N,194:B:N', 1, '8.00', '0.80', '2019-08-17 20:20:56', '2019-08-17 20:30:56', 'N'),
(114, 8, 47, '201,198,199,205,206,203,202,196,200,204', '201:B:N,198:C:N,199:B:N,205:A:N,206:B:N,203:D:N,202:A:N,196:B:N,200:A:N,204:C:N', 7, '100.10', '10.01', '2019-08-17 20:24:23', '2019-08-17 20:34:23', 'N'),
(115, 6, 48, '182,176,183,178,184,185,179,177,180,181', '182:B:N,176:B:N,183:C:N,178:C:N,184:C:N,185:A:N,179:B:Y,177:B:N,180:A:N,181:A:N', 0, '0.00', '0.00', '2019-08-17 20:25:49', '2019-08-17 20:35:49', 'Y'),
(116, 6, 50, '185,181,184,177,183,176,178,182,179,180', '185:D:N,181:D:N,184:C:N,177:C:N,183:C:N,176:B:N,178:C:N,182:D:N,179:C:Y,180:A:N', 3, '22.50', '2.25', '2019-08-17 20:43:35', '2019-08-17 20:53:35', 'N'),
(117, 7, 50, '190,187,195,194,193,191,192,189,188,186', '190:B:N,187:A:N,195:C:N,194:A:N,193:A:N,191:A:N,192:C:N,189:B:N,188:B:N,186:D:N', 2, '16.00', '1.60', '2019-08-17 20:46:36', '2019-08-17 20:56:36', 'N'),
(118, 8, 50, '199,201,197,196,206,203,205,202,204,198', '199:C:N,201:C:N,197:C:N,196:B:N,206:B:N,203:D:N,205:A:N,202:A:N,204:C:N,198:C:N', 7, '100.10', '10.01', '2019-08-17 20:49:45', '2019-08-17 20:59:45', 'N'),
(119, 6, 51, '182,181,185,179,178,177,183,176,184,180', '182:C:N,181:D:N,185:A:N,179:D:N,178:D:N,177:B:N,183:C:N,176:B:N,184:B:N,180:D:N', 5, '37.50', '3.75', '2019-08-17 20:50:29', '2019-08-17 21:00:29', 'N'),
(120, 7, 51, '188,186,190,192,189,194,191,193,187,195', '188:D:N,186:A:N,190:C:N,192:B:N,189:C:N,194:C:N,191:C:N,193:B:N,187:A:N,195:A:N', 0, '0.00', '0.00', '2019-08-17 20:54:46', '2019-08-17 21:04:46', 'N'),
(121, 6, 52, '183,184,176,185,178,177,182,180,181,179', '183:C:N,184:C:N,176:B:N,185:A:N,178:D:N,177:C:N,182:B:N,180:C:N,181:D:N,179:A:N', 4, '30.00', '3.00', '2019-08-17 20:56:23', '2019-08-17 21:06:23', 'N'),
(122, 8, 51, '206,204,200,205,202,203,197,201,198,196', '206:B:N,204:C:N,200:D:N,205:D:N,202:B:N,203:D:N,197:C:N,201:D:N,198:A:N,196:B:N', 8, '114.40', '11.44', '2019-08-17 20:59:51', '2019-08-17 21:09:51', 'N'),
(123, 7, 52, '191,188,194,186,192,190,187,195,193,189', '191:C:N,188:C:N,194:C:N,186:B:N,192:B:N,190:A:N,187:D:N,195:C:N,193:A:N,189:B:Y', 3, '24.00', '2.40', '2019-08-17 21:01:31', '2019-08-17 21:11:31', 'N'),
(124, 8, 52, '196,198,197,204,203,200,206,199,201,205', '196:B:N,198:C:N,197:C:N,204:C:N,203:D:N,200:D:N,206:B:N,199:C:N,201:B:N,205:D:N', 8, '114.40', '11.44', '2019-08-17 21:07:28', '2019-08-17 21:17:28', 'N');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
