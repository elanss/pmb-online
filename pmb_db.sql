-- phpMyAdmin SQL Dump
-- version 3.1.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 22. April 2014 jam 23:11
-- Versi Server: 5.1.30
-- Versi PHP: 5.2.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `u` varchar(20) NOT NULL,
  `p` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`u`, `p`) VALUES
('admin', 'ADMIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master`
--

CREATE TABLE IF NOT EXISTS `master` (
  `id_daftar` int(5) NOT NULL AUTO_INCREMENT,
  `s_nama` varchar(150) NOT NULL,
  `s_jk` int(1) NOT NULL,
  `s_agama` int(1) NOT NULL,
  `s_tmp_lahir` varchar(100) NOT NULL,
  `s_tgl_lahir` date NOT NULL,
  `s_alamat` varchar(200) NOT NULL,
  `s_stat_anak` int(1) NOT NULL,
  `s_anak_ke` int(2) NOT NULL,
  `s_jum_sdr` int(2) NOT NULL,
  `k_nama_ay` varchar(100) NOT NULL,
  `k_pend_ay` int(1) NOT NULL,
  `k_pkj_ay` int(1) NOT NULL,
  `k_nama_ib` varchar(100) NOT NULL,
  `k_pend_ib` int(1) NOT NULL,
  `k_pkj_ib` int(1) NOT NULL,
  `thn_lulus` year(4) NOT NULL,
  `no_ijazah` varchar(25) NOT NULL,
  `sc_asal_skl` varchar(100) NOT NULL,
  `sc_status` int(11) NOT NULL,
  `sc_alamat` varchar(150) NOT NULL,
  `sc_kepsek` varchar(100) NOT NULL,
  `nil_1_bing` float NOT NULL,
  `nil_2_bind` float NOT NULL,
  `nil_3_mtk` float NOT NULL,
  `nil_4_ipa` float NOT NULL,
  `nil_pres1_nama` varchar(100) NOT NULL,
  `nil_pres1_tkt` int(1) NOT NULL,
  `nil_pres1` float NOT NULL,
  `nil_pres2_nama` varchar(100) NOT NULL,
  `nil_pres2_tkt` int(11) NOT NULL,
  `nil_pres2` float NOT NULL,
  `nil_pres3_nama` varchar(100) NOT NULL,
  `nil_pres3_tkt` int(1) NOT NULL,
  `nil_pres3` float NOT NULL,
  `nil_seleksi` float NOT NULL,
  `jrsn_pil1` int(2) NOT NULL,
  `jrsn_pil2` int(2) NOT NULL,
  `status` int(2) NOT NULL,
  `tgl_daftar` datetime NOT NULL,
  `ip` varchar(50) NOT NULL,
  `u` varchar(20) NOT NULL,
  `p` varchar(20) NOT NULL,
  `nisn` varchar(15) NOT NULL,
  `s_hp` varchar(100) NOT NULL,
  `hobi` varchar(100) NOT NULL,
  `penghasilan` varchar(100) NOT NULL,
  `o_hp` varchar(100) NOT NULL,
  PRIMARY KEY (`id_daftar`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data untuk tabel `master`
--

INSERT INTO `master` (`id_daftar`, `s_nama`, `s_jk`, `s_agama`, `s_tmp_lahir`, `s_tgl_lahir`, `s_alamat`, `s_stat_anak`, `s_anak_ke`, `s_jum_sdr`, `k_nama_ay`, `k_pend_ay`, `k_pkj_ay`, `k_nama_ib`, `k_pend_ib`, `k_pkj_ib`, `thn_lulus`, `no_ijazah`, `sc_asal_skl`, `sc_status`, `sc_alamat`, `sc_kepsek`, `nil_1_bing`, `nil_2_bind`, `nil_3_mtk`, `nil_4_ipa`, `nil_pres1_nama`, `nil_pres1_tkt`, `nil_pres1`, `nil_pres2_nama`, `nil_pres2_tkt`, `nil_pres2`, `nil_pres3_nama`, `nil_pres3_tkt`, `nil_pres3`, `nil_seleksi`, `jrsn_pil1`, `jrsn_pil2`, `status`, `tgl_daftar`, `ip`, `u`, `p`, `nisn`, `s_hp`, `hobi`, `penghasilan`, `o_hp`) VALUES
(1, 'INTAN', 2, 1, 'KULON PROGO', '2010-03-03', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 0, 4, '2', 0, 4, 2010, '2001', '000kk', 0, '1', 'wates', -0, 90, 90, 90, '', 0, 0, '0', 0, 0, '0', 0, 0, 360, 3, 4, 0, '2014-04-22 19:19:10', '127.0.0.1', '123456', 'TCABj', '123456', '08989', '8989898', '10000000', '09090'),
(2, 'INTAN NUR AINI', 2, 1, 'KULON PROGO', '2010-03-03', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 0, 4, '2', 0, 4, 2010, '2001', '000kk', 0, '1', 'wates', -0, 90, 90, 90, '', 0, 0, '0', 0, 0, '0', 0, 0, 360, 3, 4, 0, '2014-04-22 19:21:30', '127.0.0.1', '129898989', 'n3A2L', '129898989', '08989', '8989898', '10000000', '09090'),
(3, 'AKHWAN', 1, 1, 'KULON PROGO', '2010-03-03', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 4, 2, 'kjljl', 4, 10, 2001, '000kk', 'sd n wates 1', 1, 'wates', '-', 90, 90, 90, 90, '', 0, 0, '0', 0, 0, '0', 0, 0, 360, 3, 4, 0, '2014-04-22 19:24:22', '127.0.0.1', '9898989', 'XDnGx', '9898989', '08989', '8989898', '10000000', '09090'),
(4, 'JONI', 1, 1, 'KULON PROGO', '2010-03-03', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 4, 2, 'kjljl', 4, 10, 2001, '000kk', 'sd n wates 1', 1, 'wates', '-', 90, 90, 90, 90, '', 0, 0, '0', 0, 0, '0', 0, 0, 360, 3, 4, 0, '2014-04-22 19:25:51', '127.0.0.1', '90909090', '5qH4A', '90909090', '08989', '8989898', '10000000', '09090'),
(5, 'AGUNG', 1, 1, 'KULON PROGO', '2010-03-03', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 4, 2, 'kjljl', 4, 10, 2001, '000kk', 'sd n wates 1', 1, 'wates', '-', 90, 90, 90, 90, '', 0, 1, '1', 0, 2, '2', 0, 3, 366, 3, 4, 0, '2014-04-22 19:27:02', '127.0.0.1', '27887878', 'Yh4Pr', '27887878', '08989', '8989898', '10000000', '09090'),
(6, 'RONALDO', 1, 1, 'KULON PROGO', '2010-03-03', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 4, 2, 'kjljl', 4, 10, 2001, '000kk', 'sd n wates 1', 1, 'wates', '-', 90, 90, 90, 90, 'PRESTASI 1', 1, 1, 'PRESTASI 2', 2, 2, 'PRESTASI 3', 3, 3, 366, 3, 4, 0, '2014-04-22 19:34:16', '127.0.0.1', '7777777', 'R7FRA', '7777777', '08989', '8989898', '10000000', '09090'),
(7, 'BENZEMA', 1, 1, 'KULON PROGO', '2011-02-02', 'Jl. mayoor raswian Kondangjajar cijulang Kab. Ciamis 46394', 1, 1, 2, 'dfdf', 2, 10, 'kjljl', 2, 10, 2001, '000kk', 'sd n wates 1', 1, 'wates', '-', 90, 90, 90, 90, 'PRESTASI 1', 2, 2, 'PRESTASI 2', 1, 1, 'PRESTASI 3', 3, 3, 366, 3, 3, 0, '2014-04-22 19:54:38', '127.0.0.1', '9999999999', '6ZX3O', '9999999999', '08989', '8989898', '10000000', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_agama`
--

CREATE TABLE IF NOT EXISTS `t_agama` (
  `id_agama` int(1) NOT NULL AUTO_INCREMENT,
  `agama` varchar(50) NOT NULL,
  PRIMARY KEY (`id_agama`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `t_agama`
--

INSERT INTO `t_agama` (`id_agama`, `agama`) VALUES
(1, 'Islam'),
(2, 'Kristen Katolik'),
(3, 'Kristen Protestan'),
(4, 'Hindu'),
(5, 'Budha'),
(6, 'Konghucu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jurusan`
--

CREATE TABLE IF NOT EXISTS `t_jurusan` (
  `id_jur` int(2) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(30) NOT NULL,
  PRIMARY KEY (`id_jur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `t_jurusan`
--

INSERT INTO `t_jurusan` (`id_jur`, `jurusan`) VALUES
(2, 'Teknik Komputer dan Jaringan'),
(3, 'Teknik Elektronika Industri'),
(4, 'Akuntansi'),
(5, 'Teknik Kendaraan Ringan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_penddk`
--

CREATE TABLE IF NOT EXISTS `t_penddk` (
  `id_penddk` int(2) NOT NULL AUTO_INCREMENT,
  `penddk` varchar(30) NOT NULL,
  PRIMARY KEY (`id_penddk`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `t_penddk`
--

INSERT INTO `t_penddk` (`id_penddk`, `penddk`) VALUES
(1, 'Tidak Sekolah'),
(2, 'SD/MI'),
(3, 'SMP/MTs'),
(4, 'SMA/SMK/MAN'),
(5, 'Diploma'),
(6, 'Sarjana'),
(7, 'S-2'),
(9, 'S-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_pkj`
--

CREATE TABLE IF NOT EXISTS `t_pkj` (
  `id_pkj` int(2) NOT NULL AUTO_INCREMENT,
  `pkj` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pkj`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `t_pkj`
--

INSERT INTO `t_pkj` (`id_pkj`, `pkj`) VALUES
(1, 'Tani'),
(2, 'Karyawan Swasta'),
(3, 'Wiraswasta'),
(4, 'PNS'),
(5, 'TNI/Polri'),
(6, 'Perangkat Desa'),
(7, 'Buruh'),
(8, 'Nelayan'),
(10, 'IRT (Ibu Rumah Tangga)'),
(11, 'Lain-lainnya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_prestasi`
--

CREATE TABLE IF NOT EXISTS `t_prestasi` (
  `id_prestasi` int(1) NOT NULL AUTO_INCREMENT,
  `prestasi` varchar(20) NOT NULL,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `t_prestasi`
--

INSERT INTO `t_prestasi` (`id_prestasi`, `prestasi`) VALUES
(1, 'Kabupaten'),
(2, 'Provinsi'),
(3, 'Nasional'),
(4, 'Internasional');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_sekolah`
--

CREATE TABLE IF NOT EXISTS `t_sekolah` (
  `nama_sekolah` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `kepsek` varchar(100) NOT NULL,
  `logo` varchar(50) NOT NULL,
  `flag` int(1) NOT NULL,
  `beranda` longtext NOT NULL,
  `prosedur` longtext NOT NULL,
  `admin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_sekolah`
--

INSERT INTO `t_sekolah` (`nama_sekolah`, `alamat`, `tahun_ajaran`, `kepsek`, `logo`, `flag`, `beranda`, `prosedur`, `admin`) VALUES
('SMKN 1 TERUSAN NUNYAI', 'Jl. Kecamatan No. 08 Gunung Batin Udik Telp.(0725)7575330', '2014/2015', 'YOS DEVERA, S.Pd', 'logo1.jpg', 1, '<font size="4"><b>Selamat Datang di Penerimaan Siswa Baru SMK Negeri 1 Terusan Nunyai, Tahun Ajaran 2014/2015</b></font>															', 'Prosedur Penerimaan Siswa baru adalah sebagai berikut :<br>1. Mengisi formulir pendaftaran secara online.<br>2. Ijazah asli dan foto copy yang dilegalisir.<br>3. SKHUN asli dan foto copy yang dilegalisir.<br>4. Pas photo 3x4<br>', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_skolah`
--

CREATE TABLE IF NOT EXISTS `t_skolah` (
  `id_skolah` int(3) NOT NULL AUTO_INCREMENT,
  `skolah` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(100) NOT NULL,
  PRIMARY KEY (`id_skolah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data untuk tabel `t_skolah`
--

INSERT INTO `t_skolah` (`id_skolah`, `skolah`, `status`, `alamat`, `kepsek`) VALUES
(8, 'SMP Astra Kstra', 2, 'Astra Kstra', 'Riki'),
(9, 'sd n wates 1', 1, 'wates', '-');
