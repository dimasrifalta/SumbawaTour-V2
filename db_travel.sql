-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Agu 2020 pada 13.30
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_travel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac_messages`
--

CREATE TABLE `ac_messages` (
  `id` int(11) NOT NULL,
  `m_from` int(11) NOT NULL DEFAULT 0,
  `m_to` int(11) NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `m_from_delete` tinyint(1) NOT NULL DEFAULT 0,
  `m_to_delete` tinyint(1) NOT NULL DEFAULT 0,
  `dt_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ac_messages`
--

INSERT INTO `ac_messages` (`id`, `m_from`, `m_to`, `message`, `is_read`, `m_from_delete`, `m_to_delete`, `dt_updated`) VALUES
(1, 53, 1, 'test', 1, 0, 0, '2020-07-05 11:12:42'),
(2, 53, 1, 'P', 1, 0, 0, '2020-07-05 14:22:42'),
(3, 53, 1, 'P', 1, 0, 0, '2020-07-05 14:24:50'),
(4, 53, 1, 'Hi  admin bole kenalan gak? Aku Pevita Pearce loh', 1, 0, 0, '2020-07-05 14:25:43'),
(5, 51, 1, 'Hi gimana kamu apa kabar?', 1, 0, 0, '2020-07-05 14:27:19'),
(6, 1, 53, 'hi juga kayen ya??', 1, 0, 0, '2020-07-05 14:29:38'),
(7, 1, 51, 'atuh boos kabar baik boos. kanu gima??', 1, 0, 0, '2020-07-05 14:30:07'),
(8, 51, 1, 'hai i love you', 1, 0, 0, '2020-07-09 16:34:51'),
(9, 1, 51, 'luv you to', 1, 0, 0, '2020-07-09 16:50:37'),
(10, 1, 53, 'halo', 0, 0, 0, '2020-07-10 08:54:19'),
(11, 51, 1, 'halo', 1, 0, 0, '2020-07-10 08:55:08'),
(12, 62, 1, 'halo admin', 1, 0, 0, '2020-07-10 09:08:57'),
(13, 1, 62, 'hi  tolol', 1, 0, 0, '2020-07-11 04:18:06'),
(14, 62, 1, 'Halo', 1, 0, 0, '2020-07-19 11:09:00'),
(15, 1, 62, 'hi', 1, 0, 0, '2020-07-19 11:37:12'),
(16, 62, 1, 'Halllo', 1, 0, 0, '2020-07-19 11:38:09'),
(17, 1, 62, 'hi', 1, 0, 0, '2020-07-19 11:38:33'),
(18, 65, 1, 'admin saya mau ke sumbawa', 1, 0, 0, '2020-07-23 15:29:47'),
(19, 65, 1, 'tes', 1, 0, 0, '2020-07-24 17:08:11'),
(20, 1, 65, '1', 1, 0, 0, '2020-07-24 17:09:13'),
(21, 64, 1, '1', 1, 0, 0, '2020-07-25 01:40:22'),
(22, 1, 64, 'aaf', 1, 0, 0, '2020-07-25 01:40:47'),
(23, 64, 1, 'fwfwgw', 1, 0, 0, '2020-07-25 01:41:04'),
(24, 64, 1, '222', 1, 0, 0, '2020-07-25 06:47:34'),
(25, 65, 1, 'Hi', 1, 0, 0, '2020-08-04 21:11:11'),
(26, 65, 1, 'tes', 1, 0, 0, '2020-08-13 08:59:28'),
(27, 67, 1, 'Hai admin mau menanyakan mengenai packet tour tracking Tambora', 1, 0, 0, '2020-08-30 16:44:12'),
(28, 1, 67, 'Ok saya akan mengrimkan list mengenai tracking tambora', 1, 0, 0, '2020-08-30 16:45:47'),
(29, 67, 1, 'Ok ????', 1, 0, 0, '2020-08-30 16:46:39'),
(30, 1, 67, 'kk', 1, 0, 0, '2020-08-30 16:46:47'),
(31, 67, 1, 'Fjfjf', 1, 0, 0, '2020-08-30 16:46:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac_profiles`
--

CREATE TABLE `ac_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `fullname` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:offline;1:online;2:away;3:busy',
  `dt_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ac_profiles`
--

INSERT INTO `ac_profiles` (`id`, `user_id`, `fullname`, `avatar`, `status`, `dt_updated`) VALUES
(1, 1, 'adminsumbawatour', '1594303611700.png', 0, '2020-07-09 16:06:51'),
(2, 53, 'pevitapearce', '1593951438349.jpg', 0, '2020-07-05 14:17:19'),
(3, 51, 'chelseaislan', '1593951577782.jpg', 1, '2020-07-09 16:50:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac_settings`
--

CREATE TABLE `ac_settings` (
  `id` int(11) NOT NULL,
  `s_name` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dt_updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ac_settings`
--

INSERT INTO `ac_settings` (`id`, `s_name`, `s_value`, `dt_updated`) VALUES
(1, 'admin_user_id', '1', '2020-07-19 11:37:50'),
(2, 'pagination_limit', '5', '2020-07-19 11:37:50'),
(3, 'img_upload_path', 'upload', '2020-07-19 11:37:50'),
(4, 'assets_path', 'assets', '2020-07-19 11:37:50'),
(5, 'users_table', 'user', '2020-07-19 11:37:50'),
(6, 'users_col_id', 'id', '2020-07-19 11:37:50'),
(7, 'users_col_email', 'email', '2020-07-19 11:37:50'),
(8, 'site_name', 'AddChat', '2020-07-19 11:37:50'),
(9, 'site_logo', '', '2020-07-05 12:43:28'),
(10, 'chat_icon', '1594303824154.png', '2020-07-09 16:10:24'),
(11, 'notification_type', '0', '2020-07-19 11:37:50'),
(12, 'footer_text', 'SumbawaTour Travel Agnecy', '2020-07-19 11:37:50'),
(13, 'footer_url', 'http://192.168.1.5/SumbawaTour-V2/', '2020-07-19 11:37:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ac_users_messages`
--

CREATE TABLE `ac_users_messages` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `buddy_id` int(11) NOT NULL,
  `messages_count` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `ac_users_messages`
--

INSERT INTO `ac_users_messages` (`id`, `users_id`, `buddy_id`, `messages_count`) VALUES
(8, 1, 53, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `level` varchar(3) DEFAULT NULL,
  `photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `nama`, `username`, `password`, `level`, `photo`) VALUES
(2, 'Admin.dimas', 'sumbawaislandtour@gmail.com', '202cb962ac59075b964b07152d234b70', '1', '9ff6127f058d57731cc367f3de09c5e3.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `idalbum` int(11) NOT NULL,
  `jdl_album` varchar(200) DEFAULT NULL,
  `cover` varchar(40) DEFAULT NULL,
  `jml` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`idalbum`, `jdl_album`, `cover`, `jml`) VALUES
(19, 'Tambora', '0a6200b5ae55f0df042a680f33bdb117.jpg', 8),
(20, 'Kenawa Island', '06f04fbd63542e4c2da976af2df4fab2.jpg', 13),
(21, 'Pantai Sumbawa', 'f67509c7373e5c40423785ef918cab46.jpg', 21),
(22, 'Bukit Galau', 'a327c173805d31e598572bead8f78245.jpg', 0),
(23, 'Pink Beach Bima', '442e93dc5e89bf7d261832a8d0cea20a.jpg', 0),
(24, 'Bukit Tani', 'f0bfa4fcafe3d9a2998ded38ca6221e7.jpg', 0),
(25, 'Air Terjun ', '00cccf5318f8ef6975c1861ca6d3e12b.jpg', 0),
(27, 'Snorkeling', '521364b9f04fc6da360ab265f3f28a03.jpg', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `available_tour`
--

CREATE TABLE `available_tour` (
  `id` int(11) NOT NULL,
  `id_paket_tour` int(11) NOT NULL,
  `tgl_awal` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `jumlah_ketersedian` int(11) NOT NULL,
  `id_operator` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `available_tour`
--

INSERT INTO `available_tour` (`id`, `id_paket_tour`, `tgl_awal`, `tgl_akhir`, `jumlah_ketersedian`, `id_operator`, `status`) VALUES
(5, 5, '2020-06-24', '2020-08-02', 19, 1, 0),
(6, 5, '2020-01-24', '2020-01-25', 30, 3, 0),
(7, 3, '2020-01-31', '2020-01-31', 30, 4, 0),
(8, 3, '2020-01-26', '2020-02-12', 30, 6, 0),
(9, 5, '2020-02-08', '2020-02-08', 22, 2, 0),
(10, 6, '2020-01-28', '2020-02-01', 25, 1, 0),
(11, 7, '2020-01-26', '2020-01-29', 16, 3, 0),
(12, 3, '2020-07-26', '2020-07-29', 10, 4, 0),
(13, 3, '2020-08-05', '2020-08-08', 6, 0, 0),
(14, 3, '2020-09-18', '2020-09-21', 10, 0, 1),
(15, 5, '2020-09-02', '2020-09-03', 10, 0, 1),
(16, 6, '2020-09-01', '2020-09-04', 20, 0, 1),
(17, 7, '2020-09-02', '2020-09-05', 7, 0, 1),
(18, 5, '2020-09-12', '2020-09-13', 10, 0, 1),
(19, 3, '2020-10-02', '2020-10-05', 10, 0, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `batal_token`
--

CREATE TABLE `batal_token` (
  `id` int(11) NOT NULL,
  `id_order` varchar(15) NOT NULL,
  `email` varchar(60) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `batal_token`
--

INSERT INTO `batal_token` (`id`, `id_order`, `email`, `date_created`) VALUES
(3, 'INV161119000001', 'dimasrifalta9@gmail.com', 1574211024),
(4, 'INV161119000002', 'dimasrifalta9@gmail.com', 1574390449),
(5, 'INV221119000001', 'dimasrifalta9@gmail.com', 1574392596),
(6, 'INV221119000002', 'dimasrifalta9@gmail.com', 1574393692),
(7, 'INV221119000002', 'dimasrifalta9@gmail.com', 1574393854),
(8, 'INV221119000002', 'dimasrifalta9@gmail.com', 1574393871),
(9, 'INV221119000001', 'dimasrifalta9@gmail.com', 1574395546),
(10, 'INV131219000004', 'dimasrifalta9@gmail.com', 1576246307),
(11, 'INV131219000004', 'dimasrifalta9@gmail.com', 1576246312),
(12, 'INV131219000004', 'dimasrifalta9@gmail.com', 1576246313),
(13, 'INV131219000004', 'dimasrifalta9@gmail.com', 1576246313),
(14, 'INV131219000004', 'dimasrifalta9@gmail.com', 1576246313),
(15, 'INV141219000001', 'dimasrifalta9@gmail.com', 1576315960),
(16, 'INV141219000001', 'dimasrifalta9@gmail.com', 1576318112),
(17, 'INV141219000001', 'dimasrifalta9@gmail.com', 1576318249),
(18, 'INV060120000001', 'dimasrifalta9@gmail.com', 1578374269),
(19, 'INV170120000001', 'dimascloud3@gmail.com', 1579226412),
(20, 'INV150820000001', 'dimasrifalta@gmail.com', 1597495062),
(21, 'INV150820000001', 'dimasrifalta@gmail.com', 1597496713),
(22, 'INV300820000003', 'dimasrifalta9@gmail.com', 1598780126);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `idberita` int(11) NOT NULL,
  `judul` varchar(200) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `tglpost` datetime DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `tgl_last_update` datetime DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `views` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(1, '7 Tips Penting Mengatasi Kritik', '<p>Kritik bisa menjadi hal yang menyakitkan. Namun jika kritik yang diberikan memang beralasan, kritik bisa memberikan anda masukan baru untuk diri anda dan kehidupan anda.</p>\r\n<p>Kebanyakan tips di artikel ini dapat digunakan untuk mengatasi kritik yang ditujukan pada anda dengan cara yang lebih baik. Namun disini saya juga ingin menunjukkan bahwa sangatlah berguna untuk memeriksa kembali tujuan anda pada saat anda merasa anda harus mengkritik seseorang. Dengan memeriksa diri anda, anda bisa semakin mengenal kehidupan anda saat ini dan pendapat anda mengenai diri anda sendiri.</p>\r\n<p><strong>1. Mengerti Melalui Pengalaman</strong></p>\r\n<p><em>&rdquo;Jangan mengkritik apa yang tak kau pahami. Kau tidak akan pernah berada pada posisi orang itu.&rdquo;</em><br /> - Elvis Presley -</p>\r\n<p><em>&rdquo;Setiap orang bodoh bisa mengkritik, menuduh dan mengeluh; dan kebanyakan orang bodoh melakukan hal itu.&rdquo;</em><br /> - Benjamin Franklin -</p>\r\n<p>Sangatlah mudah untuk jatuh dalam perangkap untuk selalu mengkritik. Namun apakah anda benar-benar mengerti apa yang anda kritik?</p>\r\n<p>Berdasarkan pengalaman pribadi, saya menemukan bahwa seseorang cenderung tidak mengkritik jika ia telah mengalaminya sendiri dan memahaminya. Berbeda jika orang tersebut hanya memiliki pengetahuan saja dan tidak pernah mengalaminya sendiri.</p>\r\n<p>Sangatlah mudah untuk bertindak seperti seorang bos, selalu mengetahui apa yang benar sesuai dengan pandangan anda sendiri. Mengkritik membuat anda merasa enak dan seakan-akan andalah yang benar.</p>\r\n<p>Namun pada akhirnya, orang yang mengkritik tidak akan memperoleh keuntungan atau manfaat apapun.</p>\r\n<p><strong>2. Ingatlah Siapa yang Akhirnya Memperoleh Manfaat</strong></p>\r\n<p><em>&ldquo;Bukanlah kritik yang anda berikan untuk diperhitungkan; bukan orang yang menjatuhkan seseorang yang kuat atau seseorang yang hanya berniat untuk melakukan yang lebih baik namun tidak melakukannya. Manfaat dari kritik akan diterima oleh orang yang sedang berada di arena; yang wajahnya dipenuhi oleh debu, keringat, dan darah, yang berjuang, yang melakukan kesalahan dan gagal berulang kali; karena tidak ada usaha tanpa adanya kegagalan dan kesalahan. Namun manfaat terbesar diterima oleh seseorang yang meraih keberhasilan; seseorang yang memiliki antusiasme, dedikasi, seseorang yang menghabiskan waktu melakukan sesuatu yang berharga; seseorang yang mengetahui bahwa pada akhirnya ia akan memperoleh kemenangan. Dan kalaupun ia gagal, setidaknya ia gagal setelah berusaha dengan sangat keras. Sehingga tempat ia berada bukanlah bersama dengan orang-orang yang negatif dan penakut yang tidak pernah mengenal apa arti kemenangan atau kekalahan.&rdquo;</em><br /> - Theodore Roosevelt -</p>\r\n<p>Kalimat luar biasa dan pemikiran yang perlu anda selalu ingat. Terutama bagi mereka yang berada diluar sana dan memilih untuk bekerja keras. Pilihan yang tidak diambil oleh semua orang. Anda bisa saja berdiri di samping dan mengktitik, yang tentunya merupakan pilihan yang lebih mudah.</p>\r\n<p>Namun hanya berdiam diri menyaksikan <a href=\"http://www.akuinginsukses.com/10-hukum-kehidupan-paling-populer/\">kehidupan</a> dan tidak menjalaninya bukanlah keputusan terbaik. Karena setiap kali anda berdiri di samping dan hanya menyaksikan kehidupan berjalan; anda mungkin tidak melakukan hal-hal yang anda rasakan. Sikap seperti ini membuat anda merasa tidak nyaman dengan diri anda sendiri atau terhadap kehidupan anda.</p>\r\n<p><strong>3. Fokuslah Pada Hal-Hal Yang Membantu Anda</strong></p>\r\n<p><em>&rdquo;Seorang artis tidak memiliki waktu untuk mendengarkan kritik. Seseorang yang ingin menjadi penulis membaca ulasan, sementara seseorang yang ingin menulis tidak memiliki waktu untuk membaca ulasan.&rdquo;</em><br /> - William Faulkner -</p>\r\n<p>Jika anda sedang mengerjakan apa yang anda ingin kerjakan, mengalami kegagalan, mempelajarinya dan mengulanginya terus menerus; berarti anda melakukan sesuatu yang menurut anda berharga.</p>\r\n<p><em>Keep your eyes on the ball</em>. Istilah ini sangatlah bermanfaat bagi anda untuk tetap berfokus. Jika anda sedang bertanding dan melihat ke bagian samping lapangan, anda mungkin melihat orang mengejek dan sebagian menyemangati anda. Namun untuk memperoleh hasil yang anda inginkan, anda harus fokus. Fokuslah pada apa yang sedang anda lakukan di lapangan.</p>\r\n<p>Masalahnya adalah jika anda mendengarkan suara-suara positif tersebut, maka anda mau tidak mau juga harus mendengarkan suara-suara negatif nya. Bagaimana anda bisa melalui masalah ini? Jangan tentukan diri anda berdasarkan pendapat orang lain. Daripada melakukan hal itu, jadilah diri anda sendiri dengan memfokuskan pada hal-hal positif yang anda pikirkan dan lakukan. Serta kenalilah diri anda sendiri, bukan apa yang orang lain pikirkan mengenai diri anda.</p>\r\n<p>Pendapat saya mengenai pujian &ndash; pendapat yang selalu saya jadikan pegangan &ndash; adalah pujian merupakan sesuatu hal yang baik dan saya sangat menghargainya. Sangatlah baik untuk memperoleh pujian, namun seringkali saya menjadi terlalu senang sampai saya lupa diri.</p>\r\n<p>Kebalikan dari pemikiran ini adalah ketika anda menerima kritik negatif. Anda bisa mencerna kritik semacam ini tanpa terlalu banyak emosi negatif menghalangi pikiran anda. Hal ini memungkinkan anda menghargai kritik yang diberikan (jika memang ada sesuatu yang bisa anda pelajari).</p>\r\n<p>Pada dasarnya pemikiran ini bekerja dengan tidak mempedulikan apa pendapat orang lain mengenai diri anda. Jika anda memikirkan pendapat orang lain, anda akan menjadi seseorang yang bergantung pada orang lain dan membiarkan pendapat orang lain mengendalikan anda.</p>\r\n<p><strong>4. Jangan Terima Kritik</strong></p>\r\n<p><em>&ldquo;Seorang pria menyela kuliah yang diberikan Buddha dengan sejumlah makian. Buddha menunggu sampai pria tersebut selesai lalu bertanya, &ldquo;Jika seorang menawarkan sebuah hadiah namun hadiah tersebut ditolak; siapa yang menjadi pemilik hadiah tersebut?&rdquo;</em></p>\r\n<p><em>&ldquo;Milik orang yang menawarkan hadiah tersebut,&rdquo; kata sang pria.</em></p>\r\n<p><em>&rdquo;Nah,&rdquo; kata sang Buddha, &ldquo;Saya menolak makian serta permintaan anda.&rdquo;</em></p>\r\n<p>Jangan terima kritik yang ditujukan pada anda. Anda tidak harus menerimanya. Maka kritik tersebut akan menjadi milik orang yang mengkritik.</p>\r\n<p>Hal ini tentunya lebih mudah dikatakan daripada dilakukan; membiarkan orang lain menyimpan perasaan serta pendapat mereka sendiri daripada membiarkan perasaan dan pendapat tersebut menjadi bagian diri anda. Bahkan merasa bertanggung jawab atas pendapat serta pikiran orang lain tersebut.</p>\r\n<p>Namun, seseorang bisa melakukannya jika ia menyadari apa yang Buddha deskripsikan. Lalu anda bisa menolak hadiah yang diberikan daripada memikirkan bahwa anda harus menerima hadiah tersebut. Hal ini mungkin tidak selalu berhasil setiap saat, terutama jika anda sedang emosional dan rapuh. Namun, hal ini tetap perlu anda ingat.</p>\r\n<p><strong>5. Siapa Yang Sedang Anda Bicarakan?</strong></p>\r\n<p><em>&rdquo;Ketika kita menghakimi atau mengkritik orang lain, kritik tersebut tidak tertuju pada orang yang anda kritik; kritik tersebut mengatakan sesuatu tentang kebutuhan pribadi kita untuk menjadi kritis.&rdquo;</em><br /> - Anonim -</p>\r\n<p>Ketika anda mengkritik seseorang, apa arti kritik tersebut bagi anda? Dan ketika seseorang mengkritik anda, siapa yang sedang menunjukkan dirinya yang sebenarnya?</p>\r\n<p>Jika seseorang menyerang anda secara pribadi atau melepaskan kata-kata yang menghancurkan; ingatlah bahwa kritik yang ia utarakan tidak selalu mengenai diri anda. Kritik menjadi sarana bagi orang yang memberikan kritik untuk melepaskan atau menyalurkan <a href=\"http://www.akuinginsukses.com/10-cara-praktis-mengatasi-rasa-marah/\">rasa marah</a>, frustrasi atau kecemburuannya. Atau sebuah cara untuk memaksakan sudut pandang atau pahamnya sebagai hal yang benar. Atau ia mungkin memiliki kebiasaan untuk memancing emosi orang lain untuk mengundang perdebatan, perkelahian atau untuk mendapatkan perhatian. Dalam hal ini yang menjadi masalah adalah orang tersebut. Bukan karena apa yang anda lakukan.</p>\r\n<p>Ingatlah bahwa orang tersebut hanyalah manusia dan mungkin saja ia sedang mengalami hari atau minggu yang buruk.</p>\r\n<p>Hal ini tidak hanya berlaku bagi orang lain, namun juga berlaku bagi anda. Ketika anda merasa harus mengkritik; tanyakan alasannya pada diri anda terlebih dahulu. Ketika anda mengkritik orang yang sebenarnya tidak perlu anda kritik, ingatlah bahwa anda menyakiti diri anda sendiri dan memaksakan pemikiran serta ego anda dengan sikap semacam ini.</p>\r\n<p><strong>6. Ada Pilihan Yang Lebih Baik</strong></p>\r\n<p><em>&rdquo;Saya belum menemukan seorang pun, terlepas dari apapun kedudukannya, yang tidak bekerja dengan lebih baik bahkan memberikan segenap kemampuannya jika ia mendapatkan pengakuan dibandingkan dengan jika ia bekerja dibawah kritik.&rdquo;</em><br /> - Charles Schwab -</p>\r\n<p>Jadi, apa yang bisa dilakukan seseorang selain mengkritik orang lain agar mereka memperbaiki diri? Salah satunya adalah dengan menyemangati mereka; dengan memfokuskan diri pada hal-hal baik yang mereka lakukan dan bagaimana mereka bisa terus memperbaiki diri dan tidak mengacaukan segalanya.</p>\r\n<p>Seperti yang dikatakan Schwab, dan sama halnya dengan yang sudah anda pahami dari kehidupan anda, dengan memberikan semangat pada orang lain, contohnya memberikan semangat pada seseorang di tempat kerja akan memiliki dampak positif bagi mood, <a href=\"http://www.akuinginsukses.com/gandakan-produktivitas-stop-lakukan-25-hal-ini/\">produktivitas</a>, antusiasme dan motivasi.</p>\r\n<p>Energi akan mengalir ke tempat perhatian anda tertuju. Jadi kemanapun perhatian anda tertuju &ndash; kritik atau memberi semangat pada orang lain &ndash; energi anda akan bertambah kuat. Seseorang mungkin berpendapat bahwa kritik tajam akan membantu dan memberikan hasil. Namun sebenarnya kritik akan mengecewakan orang lain dan mengganggu emosinya.</p>\r\n<p><strong>7. Terimalah Fakta Bahwa Kritik Akan Selalu Ada</strong></p>\r\n<p><em>&rdquo;Kritik bukanlah sesuatu yang bisa kita hindari dengan mudah dengan tidak mengatakan sesuatu, dan tidak menjadi diri anda sendiri.&rdquo;</em><br /> - Aristoteles -</p>\r\n<p>Karena kritik seringkali merupakan salah satu bentuk ekspresi diri sendiri dari orang yang memberi kritik atau karena berdasarkan kurangnya pemahaman terhadap sesuatu, maka tidak ada banyak hal yang bisa anda lakukan untuk menjauhi kritik. Namun anda bisa mengurangi interaksi dengan orang-orang yang sangat negatif dan suka mengkritik. Atau tetaplah fokus pada hal-hal yang sedang anda kerjakan daripada kritik yang ada.</p>\r\n<p>Namun apapun yang anda lakukan, beberapa orang memiliki kebutuhan untuk mengkritik.<br /> Apapun yang anda kerjakan, akan selalu ada orang-orang yang tidak menyukai hal-hal yang anda kerjakan, dan hal itu merupakan sesuatu yang wajar.</p>\r\n<p>Seperti yang dikatakan oleh Eleanor Roosevelt:<br /> <em>&rdquo;Lakukan sesuai dengan apa yang hati anda katakan &ndash; karena anda akan tetap menerima kritikan. Anda akan dikutuk jika anda melakukannya, dan dikutuk jika anda tidak melakukannya.&rdquo;</em></p>', '2016-04-09 16:52:44', 'file_1460210206.jpg', '2016-04-09 20:56:46', 'admin', 0),
(2, '7 Kebiasaan Manusia yang Sangat TIDAK Efektif', '<p style=\"text-align: justify;\">Anda mungkin sudah pernah membaca buku karangan Stephen R. Covey yang berjudul 7 Kebiasaan Manusia yang Sangat Efektif, yang juga merupakan salah satu buku best seller international. Jika anda belum pernah membacanya, saya sangat merekomendasikan buku tersebut kepada anda. Buku wajib yang perlu anda miliki jika anda ingin mengembangkan kepribadian anda. Anda bisa mendapatkannya di toko-toko buku favorit anda.</p>\r\n<p style=\"text-align: justify;\">Pada kesempatan kali ini saya akan mensharingkan kepada anda kebiasaan-kebiasaan manusia dari sudut pandang yang berlawanan, yaitu 7 Kebiasaan Manusia yang Sangat TIDAK Efektif.</p>\r\n<p style=\"text-align: justify;\">Tujuh kebiasaan ini harus anda hindari. Mungkin anda sendiri tidak menyadarinya karena sudah menjadi kebiasaan anda sehari-hari.</p>\r\n<p style=\"text-align: justify;\">Apa saja 7 kebiasaan tersebut, mari kita lihat bersama-sama :</p>\r\n<p style=\"text-align: justify;\"><strong>1. Tidak &rsquo;menampakkan diri&rsquo;</strong></p>\r\n<p style=\"text-align: justify;\">Salah satu hal paling sederhana namun memiliki efek yang sangat besar untuk anda dalam meraih <a href=\"http://www.akuinginsukses.com/apa-arti-sukses-bagi-anda/\">kesuksesan</a> &ndash; entah itu dalam kehidupan sosial, karir, keuangan ataupun kesehatan &ndash; adalah tampakkan diri anda lebih sering.</p>\r\n<p style=\"text-align: justify;\">Apa maksud &rsquo;menampakkan diri&rsquo; disini? Saya akan memberikan sebuah ilustrasi : Jika anda ingin memperbaiki kesehatan anda, maka salah satu hal terpenting dan terefektif adalah anda menampakkan diri di tempat kebugaran sesuai dengan jadwal latihan anda.<br /> Mungkin saat itu cuaca sedang tidak mendukung sehingga anda merasa enggan sekali keluar dari rumah. Namun jika anda tetap memaksakan diri untuk pergi meskipun anda malas, maka anda sudah memperbaiki mental anda jauh lebih cepat dibanding anda hanya duduk di sofa sambil menonton tv.</p>\r\n<p style=\"text-align: justify;\">Saya rasa ini berlaku di semua area dalam hidup anda. Jika anda menulis lebih sering, maka suatu saat anda akan menjadi penulis top dimana hasil tulisan anda akan selalu ditunggu orang untuk dibaca. Jika anda sering bertemu atau berkumpul dengan teman-teman, maka kemungkinan anda bertemu dengan seseorang yang spesial bertambah besar.</p>\r\n<p style=\"text-align: justify;\">Hanya dengan anda &rsquo;menampakkan diri&rsquo; lebih sering akan membuat sebuah perbedaan yang sangat besar untuk kesuksesan anda. Jika tidak, anda tidak akan pergi kemana-mana.</p>\r\n<p style=\"text-align: justify;\"><strong>2. Menunda pekerjaan</strong></p>\r\n<p style=\"text-align: justify;\">Ada 2 kondisi yang menyebabkan seseorang menunda pekerjaannya :</p>\r\n<p style=\"text-align: justify;\">- Pertama, dia memiliki pekerjaan yang sangat menumpuk. Dia bingung apa yang harus dia kerjakan terlebih dahulu. Akhirnya dia tidak mengerjakan apa-apa.</p>\r\n<p style=\"text-align: justify;\">- Kedua, dia hanya memiliki sedikit pekerjaan, sehingga dia berpikir untuk menundanya terlebih dahulu.</p>\r\n<p style=\"text-align: justify;\">Terlepas dari apapun kondisi anda, dibawah ini adalah beberapa cara yang bisa anda lakukan agar anda dapat keluar dari kebiasaan menunda ini :</p>\r\n<p style=\"text-align: justify;\">- Lakukanlah tugas terberat dan terpenting terlebih dahulu di pagi hari. Awal yang baik di pagi hari akan membuat momentum yang positif sehingga anda akan menjalani sisa hari anda dengan lebih bersemangat.</p>\r\n<p style=\"text-align: justify;\">- Anda mungkin sering mendengar sebuah joke : bagaimana caranya makan seekor gajah? &hellip;.. Jangan memakannya dalam sekali gigit! Jika anda hanya berpikir tugas yang menumpuk sedang menanti anda, kepala anda dapat menjadi penat, akhirnya akan membawa anda pada penundaan. Pecahlah tugas anda menjadi langkah-langkah kecil, dan fokuslah pada langkah pertama. Setelah selesai, anda bisa melanjutkan ke langkah kecil berikutnya. (saya pernah mengulas juga di artikel <a href=\"http://www.akuinginsukses.com/bagaimana-tetap-termotivasi-untuk-menyelesaikan-apa-yang-telah-anda-mulai/\">Bagaimana Tetap Termotivasi Untuk Menyelesaikan Apa yang Telah Anda Mulai</a>)</p>\r\n<p style=\"text-align: justify;\">- Jika anda berpikir untuk menunda pekerjaan karena anda hanya memiliki sedikit pekerjaan, sebaiknya anda mulai berpikir bagaimana jika tiba-tiba anda mendapatkan tugas baru sementara tugas yang lama belum anda kerjakan. Gunakan selalu prinsip : &rsquo;lakukan sekarang juga hal-hal yang bisa anda lakukan sekarang&rsquo;.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>3. Anda melakukan sesuatu yang sebetulnya tidak penting</strong></p>\r\n<p style=\"text-align: justify;\">Kebiasaan lainnya yang tidak produktif, selain menunda, adalah anda menyibukkan diri dengan hal-hal yang tidak penting.<br /> Untuk menghindari hal ini, tuliskan 3 hal penting yang harus anda lakukan setiap hari, entah itu diatas kertas atau di notebook anda, dan mulailah mengerjakannya dari urutan teratas. Meskipun anda hanya sanggup menyelesaikan 1 pekerjaan saja, namun setidaknya anda telah melakukan hal terpenting yang perlu anda lakukan di hari tersebut.</p>\r\n<p style=\"text-align: justify;\">Apapun cara yang anda gunakan dalam mengatur pekerjaan anda, prioritas utama tetaplah menemukan hal-hal terpenting yang perlu anda lakukan setiap harinya. Teknik ini juga merupakan bagian dari manajemen waktu yang efektif, sehingga anda tidak menghabiskan hari-hari anda dengan melakukan hal-hal yang tidak penting. Menyelesaikan suatu pekerjaan dengan cepat tetap tidak akan berarti jika anda melakukan hal yang tidak penting.</p>\r\n<p style=\"text-align: justify;\">Saya akan coba memberikan contoh sederhana. Misalkan anda adalah seorang manajer sebuah departemen produksi. Suatu ketika anak buah anda melakukan kesalahan sehingga produk yang dihasilkan mengalami cacat. Mana yang akan anda pilih :</p>\r\n<p style=\"text-align: justify;\">1. Anda bersama anak buah anda memperbaiki produk yang cacat tersebut; atau</p>\r\n<p style=\"text-align: justify;\">2. Anda mencari solusi agar kejadian tersebut tidak terulang kembali.</p>\r\n<p style=\"text-align: justify;\">Saya rasa anda sudah menangkap maksud saya mengenai hal yang penting dan tidak penting.</p>\r\n<p style=\"text-align: justify;\"><strong>4. Berpikir terlalu lama</strong></p>\r\n<p style=\"text-align: justify;\">Orang yang berpikir terlalu lama, otomatis akan membuatnya kurang mengambil tindakan. Terjebak dalam analisa yang berlebihan dapat membuang waktu-waktu berharga dalam hidup anda. Tidak ada yang salah dengan berpikir sebelum melakukan tindakan, bahkan sangat diperlukan hal semacam itu. Melakukan penelitian, membuat rencana, menggali potensi-potensi keuntungan serta masalah yang mungkin terjadi.</p>\r\n<p style=\"text-align: justify;\">Namun berpikir, berpikir dan terus berpikir adalah cara lain mensia-siakan hidup anda. Anda tidak perlu menganalisa semua hal dari setiap sudut. Anda tidak bisa menunggu waktu yang betul-betul tepat untuk menjalankan aksi anda. Percayalah waktu tersebut tidak akan datang. Anda juga tidak perlu merisaukan bagaimana jika <a href=\"http://www.akuinginsukses.com/mengapa-anda-tidak-perlu-khawatir-dengan-kegagalan/\">kegagalan</a> menghampiri anda. Jika anda tetap berpikir dan terus berpikir semakin dalam, maka anda akan semakin sulit untuk mengambil tindakan.</p>\r\n<p style=\"text-align: justify;\">Berhentilah berpikir, lakukan sekarang juga apapun yang perlu anda lakukan, pergilah kemanapun anda perlu pergi.</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n<p style=\"text-align: justify;\"><strong>5. Melihat sisi negatif dari setiap hal</strong></p>\r\n<p style=\"text-align: justify;\">Ketika anda melihat segala hal dari sudut yang negatif, maka sebetulnya anda telah menjatuhkan motivasi anda sendiri. Anda menemukan kekurangan dimana-mana dan masalah-masalah yang mungkin tidak betul-betul ada, contohnya ketika anda mencari alasan untuk tidak melakukan sesuatu. Saya yakin dari sudut yang negatif anda setidaknya akan menemukan 10 alasan.</p>\r\n<p style=\"text-align: justify;\">Contoh yang lain, anda mencari seseorang yang mau mendengarkan keluh kesah anda &ndash; padahal sebetulnya tidak ada yang mau mendengarkan keluhan anda &ndash; tentang pekerjaan dan kehidupan anda yang menjenuhkan atau atasan anda yang menyebalkan. Ketahuilah bahwa anda akan menciptakan hidup anda sesuai dengan apa yang anda pikirkan dan bagaimana anda memandang lingkungan anda. Jika anda memandang kehidupan anda begitu menjemukan, anda akan memiliki kehidupan yang benar-benar menjemukkan.</p>\r\n<p style=\"text-align: justify;\">Yang perlu anda lakukan tidak lain adalah anda menantang pada diri anda sendiri untuk selalu berpikir positif selama 7 hari kedepan. Lihatlah nanti hasil luar biasa yang akan anda dapat.</p>\r\n<p style=\"text-align: justify;\"><strong>6. Keras kepala pada pendirian anda sendiri dan menolak pendapat orang lain</strong></p>\r\n<p style=\"text-align: justify;\">Memang sulit untuk mengakui atau berjiwa besar bahwa pendapat anda bukanlah pilihan yang terbaik. Sehingga anda ngotot pada pendapat anda dan menutup pikiran anda dari pengaruh orang lain. Kondisi ini dapat menyebabkan anda sulit untuk berkembang menjadi pribadi yang lebih efektif.</p>\r\n<p style=\"text-align: justify;\">Saran untuk mengatasi permasalah ini adalah anda menyadari bahwa manusia mempunyai batas atas hal-hal yang ia ketahui. Anda harus terbuka untuk menerima pelajaran atas kesalahan anda sendiri, kesalahan orang lain atau sumber-sumber lainnya seperti buku.</p>\r\n<p style=\"text-align: justify;\">Ketika otak anda selalu dikosongkan untuk menerima hal-hal baru, secara tidak sadar level anda telah naik ke level yang lebih tinggi, begitu seterusnya. Namun perlu diingat, jangan pula anda terjebak seperti dijelaskan di no.4. Pengetahuan baru yang anda terima, perlu anda terapkan dan coba dalam kehidupan anda, jangan hanya menjadi pengetahuan semata saja.</p>\r\n<p style=\"text-align: justify;\"><strong>7. Membiarkan informasi membanjiri otak anda</strong></p>\r\n<p style=\"text-align: justify;\">Kebalikan dari poin 6 diatas, di poin 7 ini anda justru membiarkan seluruh informasi mengalir ke otak anda tanpa penyaringan. Jika anda melakukan ini, maka akan sulit bagi anda untuk berpikir dengan jernih. Beberapa kondisi yang menyebabkan anda seperti ini adalah :</p>\r\n<p style=\"text-align: justify;\">- Banyak informasi yang anda terima adalah negatif. Media-media dan lingkungan di sekeliling anda sering memberikan informasi-informasi negatif, seperti : penipuan, perampokan, pembunuhan, gosip dsb. Jika anda tidak selektif dalam memilih berita, anda dapat terpengaruh secara negatif juga, entah itu secara pikiran, perasaan maupun tindakan.</p>\r\n<p style=\"text-align: justify;\">- Ada suatu dorongan dalam diri anda untuk selalu mengetahui informasi terkini, namun seberapa cepat anda mengikuti perkembangan dengan berbagai alat yang anda miliki, akan selalu ada puluhan bahkan ratusan hal baru yang terjadi yang tidak bisa anda ikuti. Hali ini justru dapat membuat anda menjadi stress.</p>\r\n<p style=\"text-align: justify;\">Sulit untuk membuat keputusan dan mengambil tindakan jika otak anda terus dibanjiri dengan informasi-informasi. Bahkan anda dapat terjebak melakukan kebiasaan seperti disebutkan di poin 3. Anda sibuk dan sibuk terus melakukan pekerjaan namun sebetulnya pekerjaan yang tidak penting.</p>\r\n<p style=\"text-align: justify;\">Untuk dapat fokus, berpikir jernih dan mengambil tindakan, perlu sekali untuk anda menseleksi bahkan jika perlu membatasi akses informasi yang masuk ke otak anda, misalkan ketika anda sedang menyelesaikan suatu pekerjaan, anda melakukan hal-hal seperti : mematikan telepon anda, internet dan pintu ruangan anda. Anda akan melihat hasil yang menakjubkan ketika anda tidak diinterupsi setiap 10 menit oleh email atau website-website favorit anda.</p>', '2016-04-09 19:10:22', 'file_1460203822.jpg', NULL, 'admin', 0),
(3, '8 Racun Dalam Kehidupan Kita', '<p>Hilary Bergsieker profesor ilmu perilaku sosial dari Psychology Department Universitas Waterloo, Canada, mengatakan kerusakan dalam berpikir dan bersikap dikarenakan &ldquo;racun&rdquo; dan energi negatif dalam pikiran kita. Pribadi yang sehat adalah amazing people yakni pribadi yang menarik, disukai, memiliki hubungan win-win dan bermanfaat bagi orang lain. Sebaliknya perilaku yang rusak dan beracun atau toxic behavior, akan menimbulkan gesekan, persinggungan, pertengkaran dan rasa tidak nyaman kepada orang lain.</p>\r\n<p>Hilary Bergsieker menggaris bawahi perilaku buruk dan beracun atau toxic behavior yang terjadi dalam hubungan antar manusia yang sering menyebabkan perilaku seseorang membuat pihak lain menderita dan terbebani. Perilaku dan sikap buruk diterjemahkan penulis sebagai 8 &ldquo;racun&rdquo; dalam kehidupan kita yang dapat mengancam relasi hubungan dan pergaulan antar individu maupun kelompok dalam ruang lingkup organisasi, perusahaan, teman, rumah tangga, relasi dll.</p>\r\n<p><strong>1. Arrogance = Kesombongan</strong></p>\r\n<p>Kalau kita bertindak sombong terhadap orang lain maka adrenalin negatif akan menumpuk dalam pikiran dan hati kita. Badan kita akan menghasilkan energi negatif yang cenderung kuat menolak hal-hal yang baik, sekalipun datang dari orang yang kita anggap benar. Kesombongan adalah racun terbesar yang menutup daya pikir, akal sehat dan nalar kita terhadap hal positif dan menolak pembangunan hubungan antar manusia atas dasar keseimbangan, harmonisasi, dan manfaat bagi semua orang.</p>\r\n<p>Kesombongan bisa terjadi karena sikap keakuan yang kuat dan memandang dirinya lebih superior dan sukses dibanding orang lain. Orang yang bersikap seperti ini karena kurang memiliki sikap empati terhadap pemahaman bahwa pada dasarnya setiap orang adalah subjek dan bukan objek dalam ruang lingkup kehidupan.</p>\r\n<p>Contoh: ketika kita sukses maka kita menganggap bahwa prestasi tersebut adalah semata-mata karena kerja keras diri sendiri, dan bukan karena bantuan dan peranan dari teman, bawahan atau anggota keluarga dll, yang sebenarnya turut memiiiki andil.</p>\r\n<p><strong>2. Ignorance = Ketidakpedulian</strong></p>\r\n<p>Ignorance terjadi karena tidak peka dan ketidakpedulian terhadap apa yang terjadi di sekeliling kita.</p>\r\n<p>Contoh: kalau ada orang sedang kesusahan, kelaparan, berduka atau menderita, maka empati atau rasa kasihan tidak akan muncul dari diri kita.</p>\r\n<p>Ketidakpedulian melahirkan kekacauan dalam relasi antar manusia. Ignorance muncul karena kita takut berbagi perhatian dan kepedulian, dan menilai orang lain yang menderita semata-mata karena faktor nasib. Bukan karena faktor situasi yang mungkin bisa dirubah karena bantuan dan perhatian kita.</p>\r\n<p>Hati nurani bisa timbul karena persepsi yang benar dalam pikiran kita dan membawa hati dan perasaan kita dalam bentuk simpati dan empati. Ketidakpedulian melahirkan penyakit dan racun sosial dalam pikiran dan hati kita.</p>\r\n<p><strong>3. Denial = Penyangkalan</strong></p>\r\n<p>Seberapa sering kita menyangkal terhadap apa yang telah kita perbuat dan merugikan pihak lain. Penyangkalan disebabkan karena kita tidak memiliki &ldquo;jiwa dalam pikiran kita&rdquo;. Kita kehilangan kesadaran untuk berani mempertanggungjawabkan atas apa yang kita lakukan.</p>\r\n<p>Penyangkalan kerap membuat kita buta terhadap realitas yang sebenarnya. Ketika kebanyakan orang lain mengatakan warna putih adalah putih, maka kita tetap mengatakan hitam. Penyangkalan terjadi karena kita tidak peduli dengan perasaan orang lain.</p>\r\n<p>Contoh: jika tim kerja kita mengalami kemerosotan kinerja, maka kita melepas tanggung jawab dan kenyataan sebenarnya, dan menyangkal dengan memberikan argumentasi dan pembelaan diri bahwa semuanya tetap berjalan baik.</p>\r\n<p><strong>4. Tinkering = Mengerjakan sesuatu tanpa keahlian</strong></p>\r\n<p>Banyak kisah nyata sukses yang terjadi di masyarakat yang dimulai dengan tindakan dan cara berpikir hal-hal kecil dan sederhana. Dari situ kita dapat memupuk, melatih dan mengasah secara bertahap dan menjadikannya suatu keahlian yang kita kuasai. Untuk menjalankan suatu pekerjaan apa pun kita dituntut memiliki kemampuan dan keahlian baik secara praktik, teori dan pengetahuan yang cukup dan seimbang.</p>\r\n<p>Tinkering bisa terjadi karena kita tidak mau belajar dan melatih diri agar menjadi lebih cakap. Akibatnya sering menjadi hambatan bagi orang lain. Kalaupun kita telah merasa pandai dan tidak mau terus belajar, maka kualitas keahlian akan menurun. Maka kemampuan kita bukan menjadi obat, tetapi dapat menjadi racun bagi orang lain.</p>\r\n<p>Untuk mengubah keadaan, kita hendaknya berani memberikan pengorbanan melalui tenaga, pikiran, waktu, bahkan biaya, agar kita semakin berilmu dan tidak menjadi beban pihak lain.</p>\r\n<p>Contoh tinkering: seorang penjual tidak mau belajar dari penjual yang sukses, membaca buku-buku penjualan atau mempraktekkan secara konsisten, disiplin dan teratur. Akibatnya prestasi penjualan tidak pernah dicapai dan merugikan perusahaan serta dirinya sendiri.</p>\r\n<p><strong>5. Losing focus = Kehilangan fokus</strong></p>\r\n<p>Fokus adalah sebuah kata motivasi untuk melakukan sesuatu pekerjaan mulai dari perencanaan, penyusunan, tindakan, evaluasi hasil dan dampak dari tujuan yang akan kita capai. Ketidakmampuan kita untuk <a href=\"http://www.akuinginsukses.com/kekuatan-fokus/\">fokus</a> sering disebabkan karena memikirkan dan bertindak pada hal-hal yang sepele dan kurang bermanfaat. Bahkan cenderung menjalankan sesuatu pekerjaan yang seharusnya prioritas menjadi kabur, kehilangan arah, dan pegangan.</p>\r\n<p>Pribadi yang kehilangan fokus dalam hidup dan pekerjaan adalah pribadi yang kehilangan arah dan disorientasi dalam berpikir. Seperti unsur-unsur kimia yang tidak lagi selaras pada susunan molekul dan atom dalam tubuh dan pikiran kita. Fokus memerlukan latihan yang teratur, konsistensi dalam cara berpikir dan tegas dalam menentukan sikap kita. Kehilangan fokus sering menjadi beban besar pada diri sendiri dan orang lain yang terlibat langsung maupun tidak langsung dalam aktivitas kita sehari-hari.</p>\r\n<p>Contoh: Pada saat kita harus menyelesaikan suatu tugas penting, maka kita lupa pada target waktu, ukuran dan standar pencapaian hasil kerja dan perhatian terhadap anggota tim kerja yang terlibat didaiamnya.</p>\r\n<p><strong>6. Permissive = Toleransi negatif</strong></p>\r\n<p>Konsistensi sangat dibutuhkan agar kita bisa mengikuti dan menjalankan standar pekerjaan dengan benar. Membuat setiap orang yang terkait langsung maupun tidak langsung dengan aktivitas kita memiliki daya ungkit dalam memberikan kinerja terbaiknya dan mendapatkan manfaat luas. Lawan dari konsistensi adalah permisif yakni toleransi yang negatif. Permisif sering menciptakan keadaan yang kacau dan tidak beraturan atau inkonsistensi dalam berpikir, berucap maupun bertindak.</p>\r\n<p>Dalam sebuah survei tentang tingkah laku, cara berpikir dan berucap kepada sekelompok karyawan beberapa perusahaan, diambil sebuah kesimpulan ternyata semua orang sepakat baik lisan dan tertulis bahwa korupsi, manipulasi dan indisipliner tidak diterima oleh akal sehat dan norma yang berlaku. Ada jembatan keseimbangan persepsi perilaku yang benar dan salah. Toleransi negatif adalah racun dalam tindakan dan merugikan kebanyakan orang atau perusahaan&nbsp;secara psikologi dan materi.</p>\r\n<p>Contoh: peraturan setiap orang dilarang terlambat masuk kerja, maka ketika kita membiarkan segelintir orang melanggar karena &ldquo;unsur suka dan pilih kasih&rdquo;, maka akan merusak tatanan, standar dan aturan yang berlaku.</p>\r\n<p><strong>7. Egoism = Keakuan &ndash; egoisme</strong></p>\r\n<p>Sering dalam pergumulan hidup kita bertanya: saya yang lebih penting atau orang lain yang harus saya seimbangkan dalam hubungan sosial. Kita sering menempatkan diri kita lebih berharga dan berarti dibanding yang lain. Kesalahan terbesar dalam menempatkan diri kita &ldquo;sebagai yang paling berarti&rdquo; menyebabkan kehilangan sikap dalam berbagi dan berempati kepada orang lain.</p>\r\n<p>Egoisme atau keakuan muncul karena kita takut menghadapi realitas bahwa hidup dan hasil yang baik harus diperjuangkan dan diperebutkan dengan cara yang elegan dan benar. Efek dari racun pikiran dan hati membuat tindakan kita tidak merefleksikan kepentingan bersama. Tindakan kita akan lebih didominasi oleh imajinasi dalam pikiran kita yang keliru dan buruk karena mementingkan diri sendiri Maka egoisme adalah bahaya besar yang membuat kita bersikap apatis terhadap kebutuhan yang seimbang dalam hubungan dengan orang lain.</p>\r\n<p>Contoh: ketika kita membuang sampah sembarangan, maka kita hanya mementingkan diri sendiri dan tidak peduli terhadap <a href=\"http://www.akuinginsukses.com/16-cara-mudah-meningkatkan-kesehatan-anda/\">kesehatan</a>, keselamatan dan kebersihan lingkungan dan orang lain.</p>\r\n<p><strong>8. Conflict = Pertikaian</strong></p>\r\n<p>Mengapa konflik sering muncul di sekitar kita? Akumulasi dari racun persoalan hidup kita di atas akan menyebabkan timbulnya pertikaian dengan orang lain. Dalam hubungan pribadi, rumah tangga, pekerjaan, bisnis, dan relasi dengan pihak mana pun sering timbul kecenderungan terjadinya pertikaian, debat, permusuhan, saling menyalahkan dan menghindarkan tanggung jawab kita. Konflik akan melahirkan luka perasaan dan dendam pada semua pihak yang terlibat. Dan pertikaian akan menimbulkan suasana tegang pada semua pihak. Karena itu pertikaian adalah racun dari emosi kita yang tidak terkendali.</p>\r\n<p>Konflik atau pertikaian timbul karena tidak mampu mengelola emosi dan egoisme yang menguasai diri kita. Konflik bisa terjadi secara mental, psikologis dan fisik yang tentunya akan merugikan semua pihak.</p>\r\n<p>Meredakan dan mengurangi &ldquo;racun-racun&rdquo; dalam kehidupan kita akan berdampak positif kepada cara berpikir, berucap dan bertingkah laku. Merefleksikan diri bahwa pada hakekatnya setiap pikiran dan tubuh manusia memiliki unsur-unsur positif yang lebih dominan daripada unsur-unsur negatif. Tantangan terbesar bagi kita adalah mengelola dan mengembangkan kemampuan dalam mengikis secara bertahap semua unsur-unsur &ldquo;racun&rdquo;yang ada dalam diri kita, agar mampu menempatkan diri kita berguna dan bernilai dalam pergaulan dan hubungan dengan orang lain.</p>\r\n<p><em>&ldquo;There is an island of opportunity in the middle of every difficulties.&rdquo;</em></p>', '2016-04-09 19:12:07', 'file_1460203927.jpg', NULL, 'admin', 0),
(4, '9 Kesalahan yang Dapat Menghentikan Perkembangan Diri Anda', '<p>Ketika anda mencoba untuk berkembang, sangatlah mudah untuk jatuh lebih dari satu kali dan membuat diri anda terluka dalam perjalanan menuju kesuksesan, kebahagiaan, dan semua hal yang ingin anda raih. Tentunya terdapat beberapa lubang dalam yang harus anda perhatikan dan berhati-hati tentu saja.</p>\r\n<p>Di bawah ini merupakan 9 kesalahan yang sering dilakukan ketika anda sedang berkembang. Saya telah melakukan kesalahan-kesalahan tersebut. Bahkan lebih dari satu kali.</p>\r\n<p>Dengan sharing saya ini, harapan saya semoga anda tidak jatuh ke lubang yang sama seperti yang saya alami.</p>\r\n<p>Sekarang marilah kita bahas 9 kesalahan tersebut :</p>\r\n<p><strong>1. Berpikir Bahwa Anda Telah Mengetahui Segalanya </strong></p>\r\n<p>Hal ini merupakan masalah besar dan dapat menghentikan perkembangan diri anda untuk waktu yang cukup lama. Pikiran-pikiran seperti: &ldquo;Saya mengerti bagaimana hal-hal bekerja di dunia ini. Saya tidak membutuhkan salesman itu untuk meningkatkan kualitas hidup saya. Mereka tidak memiliki sesuatu yang baru yang bisa mereka tawarkan. Hanya orang-orang putus asa yang membutuhkan buku tersebut. Ini hanya masalah kesadaran diri saja.&rdquo;</p>\r\n<p>Pemikiran dan sikap semacam inilah yang akan membuat anda sulit untuk berkembang. Ketika anda membaca buku-buku pengembangan diri dari penulis seperti Anthony Robbins, Brian Tracy atau Stephen Covey; anda akan menyadari dengan cepat bahwa nasihat terbaik yang mereka berikan tidak sepenuhnya berhubungan dengan kesadaran diri. Bahkan, seringkali nasihat yang mereka berikan bertolak belakang dengan kebenaran yang selama ini kita peroleh dari pelajaran-palajaran di sekolah, media dan orang-orang lain di sekitar kita.</p>\r\n<p><strong>2. Dipusingkan Oleh Hal-Hal Yang Sedang Tren </strong></p>\r\n<p><a href=\"http://www.akuinginsukses.com/bagaimana-membentuk-pola-pikir-yang-baru/\">Pola pikir</a> seperti poin pertama diatas tidak sepenuhnya salah. Terdapat banyak salesman yang menawarkan banyak hal pada anda diluar sana. Dan karena penulis atau pembicara motivasi paling sukses memahami bagaimana caranya untuk berkomunikasi, terdapat banyak teknik penjualan high-pressure yang bisa anda peroleh dengan membaca buku-buku pemasaran. Teknik seperti menawarkan bingkisan kecil dan gratis bagi konsumen, atau dengan mengatakan bahwa hanya ada 500 buah produk sejenis dan tawaran ini hanya berlaku 1 minggu.</p>\r\n<p>Namun meskipun beberapa teknik pemasaran terkesan sangat optimistis atau cenderung agresif, bukan berarti produk yang ditawarkan tidak memiliki nilai. Bedakan antara teknik penjualan dengan produk yang ditawarakan.</p>\r\n<p>Menurut saya, mulailah dengan merk-merk atau produk-produk yang memiliki ulasan yang baik. Lakukan sedikit penelitian melalui google dan carilah informasi mengenai produk tersebut.</p>\r\n<p><strong>3. Tidak Mengambil Tindakan</strong></p>\r\n<p>Berpikir bahwa dengan membaca buku atau blog akan mengubah hidup anda secara otomatis merupakan pemikiran yang keliru. Pengetahuan tanpa tindakan tidak akan menghasilkan apapun. Dan hanya andalah yang bisa merubah diri anda sendiri. Orang lain bisa memberi anda nasihat, dukungan, serta motivasi. Namun pada akhirnya, anda harus mengambil tindakan.</p>\r\n<p>Jika anda mengalami masalah dengan mengambil tindakan, seringkali hal ini disebabkan oleh rasa takut (baca juga&nbsp;<a title=\"Mengatasi Rasa Takut Mengambil Peluang\" href=\"http://www.akuinginsukses.com/mengatasi-rasa-takut-mengambil-peluang/\">Mengatasi Rasa Takut Mengambil Peluang</a>)</p>\r\n<p><strong>4. Menyerah</strong></p>\r\n<p>Ketika anda mengalami kegagalan pertama kali, kedua atau ketiga, anda biasanya berpikir &ldquo;Hal ini tidak ada artinya. Inilah diri saya dan saya tidak dapat berubah. Saya harus membiasakan diri saya berpikir bahwa saya memang seperti itu.&rdquo;<br /> Jangan menyerah. Satu atau lima atau 20 kegagalan tidak akan ada artinya dalam jangka panjang. Anda harus gagal supaya anda menguasai sesuatu dan berkembang.</p>\r\n<p><strong>5. Khawatir terhadap atau mendengarkan perkataan orang lain</strong></p>\r\n<p>Anda mungkin takut orang-orang akan bereaksi negatif terhadap perubahan yang anda lakukan, dan mereka memang cenderung berbuat demikian. Mungkin mereka berbuat demikian karena mereka <a href=\"http://www.akuinginsukses.com/bagaimana-untuk-berhenti-merasa-khawatir/\">khawatir</a> anda akan menjauhi mereka dan akan kehilangan anda selamanya. Atau mungkin juga mereka tidak ingin anda berubah karena perubahan tersebut akan membuat mereka merasa diam di tempat. Mereka mungkin juga memberikan anda sejumlah opini negatif terhadap perkembangan diri anda; bahwa semua yang anda lakukan hanyalah sia-sia, buang waktu dan kehidupan nyata sangatlah berbeda dibandingkan dengan yang tertulis di buku.</p>\r\n<p>Jika anda menemui jalan buntu, hal ini mungkin karena anda merasa anda memerlukan persetujuan dari orang lain dan anda harus mulai melepaskan diri dari pengaruh orang-orang ini. Jika tidak, anda akan selamanya hidup dalam bayang-bayang orang lain dan anda tidak akan pernah berkembang.</p>\r\n<p><strong>6. Bereksperimen Dengan Cara Anda Sendiri</strong></p>\r\n<p>Bereksperimen dengan materi perkembangan diri anda; tidak berkomitmen untuk mempelajari atau mempraktekkan serta mengembangkannya secara konsisten sebagai bagian keseharian anda. Mungkin anda merasa perubahan yang sedang anda coba lakukan terlalu sulit, atau tidak layak untuk anda lakukan, sehingga anda tidak berkomitmen untuk melakukannya.</p>\r\n<p>Sulitkah melakukan perubahan tersebut? Terkadang ya. Namun saya merasa bahwa pertumbuhan memiliki lebih banyak nilai positif dibandingkan dengan negatif, dan saya berpendapat bahwa dari sudut pandang orang awam &ndash; orang yang belum mengikuti program pengembangan diri apapun &ndash; terkesan bahwa orang-orang yang sedang mencoba untuk melakukan perkembangan diri terlihat lebih bekerja keras, mengeluarkan lebih banyak uang dan waktu dibandingkan jika anda melihat dari sisi orang yang mencoba melakukan perubahan tersebut. Kerja keras bukanlah sesuatu yang sulit jika anda merasa anda berkembang dan menyukai apa yang sedang anda kerjakan.</p>\r\n<p>Apakah perubahan tersebut layak untuk dilakukan? Tentunya perubahan tersebut lebih baik dibandingkan dengan alternatif lain; hanya berlarian kesana kemari setiap hari dan dipenuhi dengan kemarahan, <a href=\"http://www.akuinginsukses.com/7-cara-mengurangi-stress-hari-ini/\">stress</a> dan kurangnya penghargaan diri.<br /> Kunci bagi semua hal dalam kehidupan adalah konsistensi dan kesabaran. Berkomitmenlah untuk perkembangan diri anda.</p>\r\n<p><strong>7. Memiliki Ekspektasi yang Tidak Beralasan</strong></p>\r\n<p>Hal ini mungkin terjadi karena kurangnya informasi. Kadang dalam jumlah informasi serta kualitas informasi yang anda miliki. Ketika pertama kali anda memulai, anda mungkin merasa bahwa hanya dengan membaca sebuah buku akan menyelesaikan semua masalah anda. Tidak memiliki gambaran yang jelas mengenai apa yang bisa anda peroleh akan membuat anda kecewa dan seperti seorang pecundang tanpa alasan yang baik, hingga akhirnya anda menyerah.</p>\r\n<p>Salah satu metode yang saya gunakan untuk mengeluarkan diri saya dari kondisi tersebut adalah dengan mengembangkan kebiasaan &ldquo;mengkonsumsi&rdquo; materi motivasi setiap saat, baik dalam bentuk buku, blog atau CD audio. Saya membangun perpustakaan kecil milik saya sendiri dan mengisinya dengan materi-materi pengembangan diri.</p>\r\n<p>Mendengarkan kembali sebuah CD milik Andrie Wongso misalnya tidak hanya membuat saya termotivasi lagi, tapi juga menyediakan saya dengan solusi atas masalah saya. Kebiasaan ini &ndash; dikombinasikan dengan tindakan &ndash; akan memperjelas hal-hal yang anda inginkan, metode apa yang terbaik bagi anda dan semua peluang serta batasan dalam perkembangan diri anda.</p>\r\n<p><strong>8. Kegagalan Untuk Atau Tidak Berkeinginan Untuk Memahami Diri Anda Sendiri</strong></p>\r\n<p>Untuk mengubah diri anda; anda harus memahami proses yang terjadi di dalam diri anda. Bagaimana emosi anda bekerja, ego anda bekerja, bagaimana pengalaman masa lalu serta kebiasaan anda dapat mempengaruhi anda. Serta apa yang bisa anda lakukan mengenai hal-hal tersebut. Bagaimana anda bisa membantu diri anda sendiri. Bahkan jika anda berusaha mengubah bagian diri anda yang benar-benar ingin anda ubah.</p>\r\n<p>Jadi menurut pendapat saya, jangan hanya berpegang pada 1 orang guru serta 1 pemikiran. Bacalah buku atau dengarkan materi-materi lain yang berasal dari penulis ternama untuk memperluas wawasan anda dan memberikan anda sejumlah solusi atas masalah-masalah anda.</p>\r\n<p>Cobalah menjadi lebih mawas diri; sadari proses yang terjadi dalam diri anda ketika anda menjadi marah, merasa <a href=\"http://www.akuinginsukses.com/bagaimana-mengatasi-depresi-dan-mengubah-hidup-anda/\">depresi</a>, cemburu atau iri hati. Cobalah untuk bertindak berbeda dari yang biasa anda lakukan.</p>\r\n<p>Daripada mengambil tindakan seperti yang biasa anda lakukan, terapkanlah apa yang telah anda pelajari untuk menangani kebiasaan anda. Jika anda gagal &ndash; sama halnya dengan kebanyakan orang, paculah terus diri anda &ndash; luangkan waktu untuk menganalisa mengapa anda merasakan atau melakukan tindakan negatif tersebut.</p>\r\n<p>Jika anda tidak memiliki kendali atas tindakan anda, akan sangat sulit untuk membantu diri anda dan orang lain. Anda akan menemukan solusi yang tidak efektif, menjadi tidak bersemangat, dan pada akhirnya berhenti untuk terus berkembang.</p>\r\n<p><strong>9. Tidak Mengambil Tanggung Jawab Atas Diri Anda Sendiri</strong></p>\r\n<p>Hal ini sangatlah penting. Jangan salahkan orang lain. Andalah yang dapat melakukan perubahan tersebut.</p>\r\n<p>Itulah 9 hal yang dapat menghambat perkembangan diri anda dan saya yakin masih banyak ha-hal lainnya. Namun saya akan tambahkan poin-poin lain pada lain kesempatan.</p>', '2016-04-09 19:13:14', 'file_1460203994.jpg', NULL, 'admin', 0);
INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(6, '14 Teknik Komunikasi Yang Paling Efektif', '<p>Menurut berbagai survei, sekitar 85% persen dari kesuksesan dalam hidup berkaitan secara langsung dengan kemampuan berkomunikasi dan keterampilan membina hubungan.</p>\r\n<p>Hal itu menandakan bahwa tidak peduli seberapa ambisius seseorang atau berapa banyak mereka mengatasi ketakutan mereka atau seberapa tinggi tingkat pendidikan, mereka masih memiliki kemungkinan yang rendah untuk melangkah lebih jauh dalam hidup mereka tanpa kemampuan komunikasi yang efektif yang diperlukan dalam berhubungan dengan orang-orang.</p>\r\n<p>Dan ketika saya mengatakan berhubungan dengan orang-orang, hal ini tentu saja bukan orang-orang yang secara natural memiliki kemiripan karakter dengan anda, karena berhubungan dengan orang-orang tersebut tidak membutuhkan banyak usaha atau kemampuan dalam berkomunikasi.</p>\r\n<p>Saya mengacu pada orang-orang yang anda sukai namun anda seringkali menemukan kesulitan untuk membina hubungan dengan mereka karena anda tidak yakin apa yang akan anda katakan atau lakukan.</p>\r\n<p>Dibutuhkan keterampilan untuk memperluas hubungan dari lingkaran kecil orang-orang dimana anda berada saat ini menuju lingkaran besar orang-orang yang akan anda temui. Keterampilan semacam ini yang menjamin akan melontarkan keberhasilan Anda dalam kehidupan.</p>\r\n<p><strong>Mengembangkan kemampuan komunikasi Anda</strong></p>\r\n<p>Bila anda mencoba untuk terhubung dengan lingkaran orang-orang yang lebih besar, anda perlu menanyakan 5 pertanyaan ini pada diri anda sendiri :<br /> - Apakah anda menemukan kesamaan antara anda berdua?<br /> - Apakah anda membuat mereka merasa nyaman?<br /> - Apakah anda membuat mereka merasa dimengerti?<br /> - Apakah hubungan anda dengan jelas didefinisikan?<br /> - Apakah mereka merasakan emosi yang positif akibat berinteraksi dengan Anda?</p>\r\n<p>Untuk menjawab pertanyaan-pertanyaan tersebut, anda harus mempertimbangkan penjelasan dibawah ini &hellip;&hellip;</p>\r\n<p><strong>14 Kemampuan Komunikasi Yang Efektif</strong></p>\r\n<p>1. <strong>Berikan kesan bahwa anda antusias berbicara dengan mereka</strong> &ndash; Beri mereka kesan bahwa anda lebih suka berbicara dengan mereka daripada orang lain di muka bumi ini. Ketika anda memberi mereka kesan bahwa anda sangat antusias berbicara dengan mereka dan bahwa anda peduli kepada mereka, anda membuat perasaan mereka lebih <a href=\"http://www.akuinginsukses.com/9-langkah-menuju-sikap-mental-positif/\">positif</a> dan percaya diri. Mereka akan lebih terbuka kepada anda dan sangat mungkin memiliki percakapan yang mendalam dengan anda.</p>\r\n<p>2. <strong>Ajukan pertanyaan tentang minat mereka</strong> &ndash; Ajukan pertanyaan terbuka yang akan membuat mereka berbicara tentang minat dan kehidupan mereka. Galilah sedetail mungkin sehingga akan membantu mereka memperoleh perspektif baru tentang diri mereka sendiri dan tujuan hidup mereka.</p>\r\n<p>3. <strong>Beradaptasi dengan bahasa tubuh dan perasaan mereka</strong> &ndash; Rasakan bagaimana perasaan mereka pada saat ini dengan mengamati <a href=\"http://www.akuinginsukses.com/16-cara-menggunakan-bahasa-tubuh-yang-baik/\">bahasa tubuh</a> dan nada suara. Dari sudut pandang ini, anda dapat menyesuaikan kata-kata, bahasa tubuh, dan nada suara anda sehingga mereka akan merespon lebih positif.</p>\r\n<p>4. <strong>Tunjukkan rasa persetujuan: Katakan kepada mereka apa yang anda kagumi tentang mereka dan mengapa</strong> &ndash; Salah satu cara terbaik untuk segera berhubungan dengan orang adalah dengan menjadi jujur dan memberitahu mereka mengapa anda menyukai atau mengagumi mereka. Jika menyatakan secara langsung dirasakan kurang tepat, cobalah dengan pernyataan tidak langsung. Kedua pendekatan tersebut bisa sama-sama efektif.</p>\r\n<p>5. <strong>Dengarkan dengan penuh perhatian semua yang mereka katakan</strong> &ndash; Jangan terlalu berfokus pada apa yang akan Anda katakan selanjutnya selagi mereka berbicara. Sebaliknya, dengarkan setiap kata yang mereka katakan dan responlah serelevan mungkin. Hal ini menunjukkan bahwa anda benar-benar mendengarkan apa yang mereka katakan dan anda sepenuhnya terlibat di dalam suasana bersama dengan mereka. Juga pastikan untuk bertanya setiap kali ada sesuatu yang tidak mengerti pada hal-hal yang mereka katakan. Anda tentu saja ingin menghindari semua penyimpangan yang mungkin terjadi dalam komunikasi jika anda ingin mengembangkan hubungan yang sepenuhnya dengan orang tersebut.</p>\r\n<p>6. <strong>Beri mereka kontak mata yang lama</strong> &ndash; kontak mata yang kuat mengkomunikasikan kepada orang lain bahwa anda tidak hanya terpikat oleh mereka dan apa yang mereka katakan tetapi juga menunjukkan bahwa anda dapat dipercaya. Ketika dilakukan dengan tidak berlebihan, mereka juga akan menganggap anda yakin pada diri anda sendiri karena kesediaan anda untuk bertemu mereka secara langsung. Akibatnya, orang secara alami akan lebih memperhatikan anda dan apa yang anda katakan.</p>\r\n<p>7. <strong>Ungkapkan diri anda sebanyak mungkin</strong> &ndash; Salah satu cara terbaik untuk mendapatkan <a href=\"http://www.akuinginsukses.com/11-kunci-untuk-membangun-kepercayaan/\">kepercayaan</a> seseorang adalah dengan mengungkapkan diri seterbuka mungkin. Bercerita tentang kejadian yang menarik dari hidup anda atau hanya menggambarkan contoh lucu dari kehidupan normal sehari-hari. Ketika anda bercerita tentang diri anda, pastikan untuk tidak menyebutkan hal-hal yang menyimpang terlalu jauh dari minat mereka atau bahkan berlebihan. Anda dapat membiarkan mereka mengetahui lebih jauh tentang diri anda seiring berjalannya waktu.</p>\r\n<p>8. <strong>Berikan kesan bahwa anda berdua berada di tim yang sama</strong> &ndash; Gunakan kata-kata seperti &ldquo;kami, kita &rdquo; untuk segera membangun sebuah ikatan. Bila anda menggunakan kata-kata tersebut, anda membuatnya tampak seperti anda dan mereka berada di tim yang sama, sementara orang lain berada di tim yang berbeda.</p>\r\n<p>9. <strong>Berikan mereka senyuman terbaik anda</strong> &ndash; Ketika anda <a href=\"http://www.akuinginsukses.com/5-alasan-mengapa-anda-harus-banyak-tersenyum/\">tersenyum</a> pada orang, anda menyampaikan pesan bahwa anda menyukai mereka dan kehadiran mereka membawa anda kebahagiaan. Tersenyum pada mereka akan menyebabkan mereka sadar ingin tersenyum kembali pada anda yang secara langsung akan membangun hubungan antara anda berdua.</p>\r\n<p>10. <strong>Menawarkan saran yang bermanfaat</strong> &ndash; Kenalkan tempat makan yang pernah anda kunjungi, film yang anda tonton, orang-orang baik yang mereka ingin temui, buku yang anda baca, peluang karir atau apa pun yang terpikirkan oleh anda. Jelaskan apa yang menarik dari orang-orang, tempat atau hal-hal tersebut. Jika anda memberi ide yang cukup menarik perhatian mereka, mereka akan mencari anda ketika mereka memerlukan seseorang untuk membantu membuat keputusan tentang apa yang harus dilakukan selanjutnya.</p>\r\n<p>11. <strong>Beri mereka motivasi</strong> &ndash; Jika orang yang anda hadapi lebih muda atau dalam posisi yang lebih sulit dari anda, mereka mungkin ingin mendengar beberapa kata motivasi dari anda karena anda lebih berpengalaman atau anda tampaknya menjalani kehidupan dengan baik . Jika anda ingin memiliki hubungan yang sehat dengan orang tersebut, anda tentu saja tidak ingin tampak seperti anda memiliki semuanya sementara mereka tidak. Yakinkan mereka bahwa mereka dapat melampaui masalah dan keterbatasan mereka, sehingga mereka akan berharap menjadikan anda sebagai teman yang enak untuk diajak bicara.</p>\r\n<p>12. <strong>Tampil dengan tingkat energi yang sedikit lebih tinggi dibanding orang lain</strong> &ndash; Umumnya, orang ingin berada di sekitar orang-orang yang akan mengangkat mereka, bukannya membawa mereka ke bawah. Jika anda secara konsisten memiliki tingkat energi yang lebih rendah daripada orang lain, mereka secara alami akan menjauh dari Anda menuju seseorang yang lebih energik. Untuk mencegah hal ini terjadi, secara konsisten tunjukkan dengan suara dan bahasa tubuh anda bahwa anda memiliki tingkat energi yang sedikit lebih tinggi sehingga mereka akan merasa lebih bersemangat dan positif berada di sekitar Anda. Namun jangan juga anda terlalu berlebihan berenergik sehingga menyebabkan orang-orang tampak seperti tidak berdaya. Energi dan gairah yang tepat akan membangun antusiasme mereka.</p>\r\n<p>13. <strong>Sebut nama mereka dengan cara yang menyenangkan telinga mereka</strong> &ndash; nama seseorang adalah salah satu kata yang memiliki emosional yang sangat kuat bagi mereka. Tapi hal itu belum tentu seberapa sering anda katakan nama seseorang, namun lebih pada bagaimana anda mengatakannya. Hal ini dapat terbantu dengan cara anda berlatih mengatakan nama seseorang untuk satu atau dua menit sampai anda merasakan adanya emosional yang kuat. Ketika anda menyebutkan nama mereka lebih menyentuh dibanding orang lain yang mereka kenal, mereka akan menemukan bahwa anda lah yang paling berkesan.</p>\r\n<p>14. <strong>Tawarkan untuk menjalani hubungan selangkah lebih maju</strong> &ndash; Ada beberapa hal yang dapat anda lakukan untuk memajukan persahabatan anda dengan seseorang: tawaran untuk makan dengan mereka, berbicara sambil <a href=\"http://www.akuinginsukses.com/fakta-sebenarnya-tentang-mitos-minum-kopi/\">minum kopi</a>, melihat pertandingan olahraga, dll. Meskipun jika orang tersebut tidak menerima tawaran anda, mereka akan tetap tersanjung bahwa anda ingin mereka menjalani persahabatan ke tingkat yang lebih dalam. Di satu sisi, mereka akan memandang anda karena anda memiliki keberanian untuk membangun persahabatan bukan mengharapkan persahabatan yang instan.</p>\r\n<p><strong>Menjadi Seorang Komunikator yang Terampil</strong></p>\r\n<p>Jika anda dapat mengembangkan beberapa saja dari teknik ini, anda secara dramatis akan meningkatkan kemampuan anda untuk berhubungan dengan orang dari semua lapisan dalam hidup anda. Luangkan waktu untuk mengamati orang yang paling sosial dalam kehidupan anda dan anda akan melihat banyak dari metode-metode diatas yang diaplikasikan. Mereka tidak melakukan dengan cara yang kaku, mereka melakukannya secara alami dan dengan cara yang cocok dengan situasi saat itu.</p>\r\n<p>Untuk hasil terbaik, santai saja dan biarkan teknik ini mengalir dari dalam diri anda secara alami. Pilih teknik-teknik yang paling cocok dengan kepribadian anda dan apa tujuan anda ketika berinteraksi dengan orang. Belajarlah untuk bisa merasakan teknik mana yang cocok ataupun tidak cocok dengan berbagai macam karakter orang dan situasi sesuai dengan kepridadian anda.</p>\r\n<p>Ketika anda berhasil mengembangkan kemampuan anda berkomunikasi dengan orang-orang, maka akan membawa anda pada banyak sekali peluang baru yang tidak tersedia untuk anda sebelumnya. Itulah kekuatan dari keterampilan komunikasi yang efektif.</p>', '2016-04-09 19:15:21', 'file_1460204121.jpg', NULL, 'admin', 3),
(7, '101 Pertanyaan Hebat Untuk Membuat Hidup Anda Luar Biasa', '<p>Anthony Robbins pernah mengatakan dalam salah satu bukunya bahwa berpikir sebetulnya adalah proses bertanya dan menjawab pertanyaan-pertanyaan. Beliau kemudian menambahkan bahwa orang-orang yang sukses adalah mereka yang selalu bertanya pada dirinya sendiri.</p>\r\n<p>Berikut adalah 101 pertanyaan untuk membuat hidup anda luar biasa :</p>\r\n<p>1. Apa yang saya inginkan?</p>\r\n<p>2. Untuk hal-hal apa saja saya berterima kasih?</p>\r\n<p>3. Apakah yang hilang dalam hidup saya?</p>\r\n<p>4. Apakah saya melihat hal-hal baru di dunia ini setiap hari?</p>\r\n<p>5. Apakah saya menyediakan sedikit waktu untuk mendengarkan orang lain?</p>\r\n<p>6. Apakah saya cukup bersenang-senang?</p>\r\n<p>7. Bagaimana saya <a href=\"http://www.akuinginsukses.com/9-tips-untuk-hidup-lebih-bahagia/\">menjadikan hidup ini lebih ceria</a>?</p>\r\n<p>8. Apa yang saya inginkan lebih dalam hidup?</p>\r\n<p>9. Apa yang tidak terlalu saya inginkan dalam hidup?</p>\r\n<p>10. Apakah saya selalu mencari peluang-peluang?</p>\r\n<p>11. Apakah saya menangkap peluang-peluang yang ada?</p>\r\n<p>12. Apakah saya mempunyai pikiran yang terbuka?</p>\r\n<p>13. Apakah saya cukup fleksibel?</p>\r\n<p>14. Apakah saya cepat menghakimi orang lain?</p>\r\n<p>15. Apakah saya selalu memperhitungkan resiko?</p>\r\n<p>16. Apakah saya tulus memuji orang lain?</p>\r\n<p>17. Apakah saya menghargai apa yang orang lain lakukan untuk saya?</p>\r\n<p>18. Ke tempat mana sajakah saya ingin pergi?</p>\r\n<p>19. Siapa sajakah orang yang ingin saya jumpai?</p>\r\n<p>20. Petualangan apa sajakah yang ingin saya ikuti?</p>\r\n<p>21. Apakah saya peduli dengan apa yang orang lain pikirkan tentang saya?</p>\r\n<p>22. Apakah saya cepat tersinggung?</p>\r\n<p>23. Apakah yang membuat saya bahagia?</p>\r\n<p>24. Adakah hal yang saya tunda?</p>\r\n<p>25. Apakah saya selalu memikirkan diri sendiri?</p>\r\n<p>26. Apakah saya suka menyimpan dendam?</p>\r\n<p>27. Apakah saya selalu mengingat-ngingat masa lalu?</p>\r\n<p>28. Apakah saya membiarkan pikiran negatif orang lain mempengaruhi saya?</p>\r\n<p>29. Apakah saya bisa memaafkan diri sendiri?</p>\r\n<p>30. Apakah saya cukup sering tersenyum?</p>\r\n<p>31. Apakah saya cukup sering tertawa?</p>\r\n<p>32. Apakah saya mengelilingi diri saya dengan orang-orang positif?</p>\r\n<p>33. Apakah saya orang yang positif?</p>\r\n<p>34. Apakah saya menyediakan cukup waktu untuk merawat diri?</p>\r\n<p>35. Apakah ambisi rahasia saya?</p>\r\n<p>36. Apakah yang ingin orang-orang ingat tentang saya di akhir hidup nanti?</p>\r\n<p>37. Apakah arti sukses untuk saya?</p>\r\n<p>38. Bagaimana saya dapat memberi arti bagi hidup orang lain?</p>\r\n<p>39. Bagaimana saya dapat melayani sesama?</p>\r\n<p>40. Hal apakah yang dapat saya lakukan lebih baik dibandingkan orang lain?</p>\r\n<p>41. Apakah 3 kekuatan terbesar saya?</p>\r\n<p>42. Apakah saya bergerak menuju ke pencapaian mimpi-mimpi saya?</p>\r\n<p>43. Apakah saya menceritakan pada orang lain apa yang sungguh-sungguh saya inginkan dalam hidup?</p>\r\n<p>44. Seperti apakah rupa hari yang indah menurut saya?</p>\r\n<p>45. Ingin seperti apakah anda 1 tahun lagi? 5 tahun lagi? 10 tahun lagi? 20 tahun lagi?</p>\r\n<p>46. Seperti apakah bentuk lingkungan untuk hidup yang baik menurut saya?</p>\r\n<p>47. Apakah yang ingin saya perbuat jika saya tidak mempunyai rasa takut?</p>\r\n<p>48. Apakah yang ingin saya perbuat jika uang bukanlah hal yang penting?</p>\r\n<p>49. Alasan-alasan apa sajakah yang sering saya ucapkan?</p>\r\n<p>50. Apakah saya menikmati apa yang saya lakukan sehari-hari?</p>\r\n<p>51. Apakah saya berada di jalan yang benar?</p>\r\n<p>52. Apakah saya meyayangi diri sendiri?</p>\r\n<p>53. Apakah saya baik pada orang lain?</p>\r\n<p>54. Apakah saya mengambil sesuatu tanpa imbalan?</p>\r\n<p>55. Apakah saya sedang melakukan hal yang paling penting saat ini?</p>\r\n<p>56. Apakah ada hal-hal dalam hidup yang perlu saya beri perhatian lebih?</p>\r\n<p>57. Apakah saya sudah menggunakan waktu saya dengan sebaik-baiknya?</p>\r\n<p>58. Apakah yang bisa saya lakukan saat ini yang dapat membuat perbedaan terbesar dalam hidup?</p>\r\n<p>59. Apakah yang sedang saya hindari?</p>\r\n<p>60. Hal-hal apa sajakah yang saya bisa bertoleransi?</p>\r\n<p>61. Apakah saya membuat tujuan-tujuan yang jelas dengan batas waktu pencapaiannya?</p>\r\n<p>62. Apakah saya memegang janji-janji yang telah saya buat pada diri sendiri?</p>\r\n<p>63. Apakah saya memegang janji-janji yang telah saya buat pada orang lain?</p>\r\n<p>64. Jika saya ingin kehidupan saya sempurna, apakah yang harus saya rubah?</p>\r\n<p>65. Apakah yang sedang saya cari sungguh-sungguh saat ini?</p>\r\n<p>66. Bagaimana saya membuat hidup saya lebih sederhana?</p>\r\n<p>67. Kegiatan apa saja yang saya lakukan tetapi saya tidak menikmatinya? Apakah kegiatan tersebut sungguh-sungguh harus dilakukan? Dapatkan saya mendelegasikannya atau membayar orang lain untuk melakukan itu?</p>\r\n<p>68. Apakah saya melihat diri saya sebagai seorang yang cukup kreatif?</p>\r\n<p>69. Apakah saya membiarkan diri saya untuk menjadi orang yang kreatif?</p>\r\n<p>70. Dapatkah saya menjadi seseorang yang spontan?</p>\r\n<p>71. Apakah saya terlalu kritis pada diri sendiri?</p>\r\n<p>72. Apakah saya terlalu kritis pada orang lain?</p>\r\n<p>73. Apakah saya dapat melihat permasalahan dari sudut pandang yang berbeda?</p>\r\n<p>74. Hal-hal apa sajakah yang telah saya selesaikan?</p>\r\n<p>75. Hal-hal apa sajakah yang menjadi sumber stress dalam hidup?</p>\r\n<p>76. Bagaimana saya dapat mengurangi stress dalam hidup?</p>\r\n<p>77. Kemana sajakah uang saya dipergunakan?</p>\r\n<p>78. Bisakah saya mengelola keuangan saya?</p>\r\n<p>79. Punyakah saya rencana keuangan untuk masa depan?</p>\r\n<p>80. Untuk apa sajakah waktu saya dipergunakan?</p>\r\n<p>81. Sudahkah saya membuat sistim pengelolaan waktu yang efisien?</p>\r\n<p>82. Apakah 3 prioritas terbesar saya dalam hidup?</p>\r\n<p>83. Siapakah orang terpenting dalam hidup saya?</p>\r\n<p>84. Siapakah yang mencintai saya?</p>\r\n<p>85. Siapakah yang peduli kepada saya?</p>\r\n<p>86. Untuk siapakah anda bekerja keras?</p>\r\n<p>87. Apakah tempat tinggal dan lingkungan kerja saya telah diatur sedemikian rupa sehingga memberi kenyamanan pada saya?</p>\r\n<p>88. Apakah saya mempunyai pola hidup yang sehat?</p>\r\n<p>89. Apakah saya sering terbawa emosi?</p>\r\n<p>90. Apakah saya dapat melupakan kesalahan-kesalahan yang telah saya buat di masa lalu?</p>\r\n<p>91. Apakah saya mengijinkan diri saya untuk melakukan kegagalan?</p>\r\n<p>92. Apakah saya mempelajari kegagalan-kegagalan saya?</p>\r\n<p>93. Apakah saya cepat menanggapi ketika sesuatu berjalan tidak semestinya?</p>\r\n<p>94. Apakah keyakinan-keyakinan saya telah bekerja dengan baik?</p>\r\n<p>95. Apakah saya melonggarkan aturan-aturan yang telah saya buat untuk diri sendiri dan orang lain?</p>\r\n<p>96. Apakah impian masa kecil saya yang terlupakan?</p>\r\n<p>97. Siapa sajakah idola/tokoh yang saya tiru?</p>\r\n<p>98. Apakah saya asli? Apakah saya menjadi diri saya sendiri atau sedang mencoba menjadi seseorang yang lain?</p>\r\n<p>99. Bagaimana jika &hellip;?</p>\r\n<p>100. Mengapa tidak &hellip;?</p>\r\n<p>101. Bagaimana saya dapat &hellip;?</p>', '2016-04-09 19:22:49', 'file_1460204569.jpg', NULL, 'admin', 0),
(8, 'Apakah Anda Melakukan 9 Kesalahan ini Dalam Percakapan?', '<p>Cara kita berkomunikasi dengan orang lain adalah sebuah kebiasaan. Karenanya, seringkali kita tidak mengetahui apakah pola percakapan yang kita lakukan sudah baik atau belum baik.</p>\r\n<p>Dalam kehidupan sehari-hari pasti anda sering berkata dalam hati : &rdquo;ah tidak enak mengobrol dengan si A, lebih enak saya mencari si B dan mengobrol dengannya.&rdquo;</p>\r\n<p>Saya tidak tahu anda sendiri masuk ke dalam kategori mana : si A ataukah si B, mudah-mudahan bukan si A karena si A biasanya selalu dijauhi oleh teman-temannya.</p>\r\n<p>Andai saja anda masuk dalam kategori si A, anda tidak perlu khawatir karena pola percakapan yang kurang baik tentu saja dapat diperbaiki. Di bawah ini adalah beberapa kesalahan yang umum dilakukan oleh orang-orang dalam percakapan beserta beberapa solusi untuk memperbaikinya.</p>\r\n<p><strong>1. Tidak Mendengarkan</strong></p>\r\n<p>Sebagian besar orang bukanlah tipekal pendengar yang baik. Ini tentu saja berhubungan dengan ego mereka yang tinggi, yang justru ingin lebih didengarkan dibanding mendengarkan. Dalam setiap percakapan mereka sepertinya tidak tahan menunggu giliran untuk berbicara.</p>\r\n<p>Belajarlah menekan ego anda untuk <a href=\"http://www.akuinginsukses.com/belajar-mendengar/\">mendengarkan</a> secara sungguh-sungguh apa yang orang lain katakan.</p>\r\n<p>Ketika anda mengambil sikap untuk mulai mendengarkan, anda sedang membuka jalan untuk terciptanya suatu hubungan (apapun) yang sangat potensial. Namun tetap hindari jawaban singkat &ldquo;ya&rdquo; atau &ldquo;tidak&rdquo;, karena jika anda seperti itu lawan bicara anda akan memberikan informasi setengah-setengah kepada anda. Antusiaslah terhadap topik yang sedang mereka bicarakan, sebagai contoh, jika lawan bicara anda sedang bercerita tentang pengalamannya mendaki gunung pada akhir minggu lalu, anda dapat bertanya kepadanya :</p>\r\n<ul>\r\n<li>gunung apa yang anda daki?</li>\r\n<li>apa yang ada sukai dari mendaki      gunung?</li>\r\n<li>apa saja yang anda lakukan di      atas gunung?</li>\r\n</ul>\r\n<p>Pertanyaan-pertanyaan semacam itu akan membuat topik percakapan menjadi lebih mendalam, lebih menarik, serta memancing lebih banyak lagi topik untuk didiskusikan. Dan yang tak kalah pentingnya lawan bicara anda mengetahui bahwa anda sungguh-sungguh sedang mendengarkannya. Hal ini tentu saja akan membuat tingkat respek lawan bicara anda bertambah pada anda.</p>\r\n<p><strong>2. Terlalu Banyak Bertanya</strong></p>\r\n<p>Beberapa pertanyaan dapat berarti anda antusias dengan lawan bicara anda, namun terlalu banyak bertanya pun akhirnya menjadi tidak baik karena sepertinya anda sedang menginterogerasi lawan bicara anda, dan dapat membuat mereka menjadi tidak nyaman.</p>\r\n<p>Cobalah gabungkan antara pernyataan dan pertanyaan, misalkan :</p>\r\n<ul>\r\n<li>saya pun minggu lalu berakhir      pekan dengan memancing bersama teman-teman kerja saya. Apakah anda suka      memancing?</li>\r\n</ul>\r\n<p><strong>3. Kehabisan Topik Untuk Dibicarakan</strong></p>\r\n<p>Dalam percakapan mungkin anda sering merasa kehabisan topik untuk dibicarakan dengan lawan bicara anda, terutama jika anda berbicara dengan seseorang yang baru saja anda kenal. Untuk mencegah hal ini terjadi, ada beberapa saran mengenai topik yang bisa anda bicarakan :</p>\r\n<ul>\r\n<li>Seorang bijak pernah berkata &ldquo;Jangan      tinggalkan rumah tanpa membaca surat kabar terlebih dahulu. Jika anda      kehabisan topik untuk dibicarakan, anda bisa memulai berbicara tentang      berita yang sedang hangat saat ini.&rdquo;</li>\r\n<li>Bicarakan tentang sesuatu yang      berada disekeliling anda. Mungkin tentang aquarium yang berada dibelakang      anda, anak-anak yang sedang bermain di samping anda, atau apapun saja yang      memungkinkan untuk dibicarakan di sekeliling anda.</li>\r\n</ul>\r\n<p><strong>4. Penyampaian yang Buruk</strong></p>\r\n<p>Salah satu hal yang paling penting dalam percakapan bukanlah apa yang anda katakan, melainkan bagaimana anda menyampaikannya. Perubahan dalam kebiasaan ini akan membuat perbedaan besar, karena suara dan bahasa tubuh adalah bagian yang sangat vital dalam percakapan. Beberapa hal dibawah ini untuk anda pertimbangkan :</p>\r\n<ul>\r\n<li>Sampaikan dengan perlahan.      Ketika anda berbicara tentang suatu hal yang sangat menyenangkan, mudah      sekali bagi anda untuk memulai percakapan tersebut dan bahkan anda dapat      berbicara dengan sangat cepat. Usahakan anda memperlambat kecepatan bicara      anda, karena akan lebih mudah bagi lawan bicara anda untuk mendengarkan      dan menangkap maksud yang ingin anda sampaikan.</li>\r\n<li>Bicaralah dengan suara lantang.      Tidak perlu ragu, karena lawan bicara anda memang ingin mendengarkan anda.</li>\r\n<li>Bicaralah dengan jelas. Jangan      seperti bergumam.</li>\r\n<li>Bicaralah dengan suara yang      tidak monoton. Libatkan emosi dalam suara anda.</li>\r\n<li>Gunakan jeda. Penyampaian      dengan perlahan ditambah dengan jeda akan membuat lawan bicara anda lebih      perhatian dalam mendengarkan dan suasana pun menjadi lebih rileks.</li>\r\n<li>Gunakan bahasa tubuh yang baik.      Dalam artikel mendatang, saya akan membahas bagaimana menggunakan <a href=\"http://www.akuinginsukses.com/16-cara-menggunakan-bahasa-tubuh-yang-baik/\">bahasa tubuh</a> yang baik.</li>\r\n</ul>\r\n<p><strong>5. Menginterupsi</strong></p>\r\n<p>Apakah yang anda rasakan jika pembicaraan anda dipotong oleh lawan bicara anda? &hellip; Ya, lawan bicara anda pun akan merasakan hal yang sama jika anda memotong pembicaraannya. Biarkan lawan bicara anda menghabiskan terlebih dahulu apa yang ingin disampaikan. Itu adalah salah satu bentuk penghargaan anda pada lawan bicara anda. Carilah keseimbangan antara mendengarkan dan berbicara.</p>\r\n<p><strong>6. Keinginan &ldquo;Selalu Benar&rdquo;</strong></p>\r\n<p>Orang tidak akan terkesan kepada anda jika anda selalu ingin merasa benar dalam setiap percakapan. Seringkali pembicaraan bukan betul-betul sebuah diskusi. Kadang-kadang kita ingin menjaga mood tetap baik dengan berbicara dengan seseorang. Sebagai contoh : salah satu teman anda ingin bercerita kepada anda mengenai serunya pengalaman berarung jeram sampai-sampai perahu karetnya terbalik. Namun anda malah berbicara bagaimana berarung jeram yang baik. Saya yakin mood teman anda akan langsung berubah.</p>\r\n<p>Duduklah santai, berbicara dan tidak berdebat.</p>\r\n<p><strong>7. Berbicara Tentang Hal-Hal Aneh atau Negatif</strong></p>\r\n<p>Pernahkan anda berkenalan dengan seseorang dan setelah itu ia berbicara tentang hal-hal aneh atau negatif, seperti kesehatannya yang memburuk, cerita pembunuhan, atasannya yang menyebalkan, atau menggunakan bahasa aneh yang hanya ia dan temannya yang mengetahui artinya.</p>\r\n<p>Saya rasa tidak ada manfaatnya berbicara hal-hal aneh atau negatif seperti itu. Orang-orang akan senang berbicara kepada anda jika anda selalu memberikan <a href=\"http://www.akuinginsukses.com/9-langkah-menuju-sikap-mental-positif/\">energi positif</a> dalam setiap kata-kata yang anda keluarkan.</p>\r\n<p><strong>8. Membosankan</strong></p>\r\n<p>Jangan bercerita panjang-panjang tentang mobil anda yang baru saja anda beli atau rumah anda yang baru saja selesai dibangun. Rata-rata orang tidak terlalu tertarik dengan cerita semacam itu, yang terlalu mengekspose kemampuan diri. Carilah topik yang mengarah pada hal-hal yang bergairah atau hal-hal yang lucu misalkan. Bisa juga anda menceritakan tentang pengalaman anda berakhir pekan di puncak kemarin atau rencana anda pada liburan Lebaran mendatang. Intinya adalah sesuatu yang positif. Bukan juga mengeluh tentang atasan atau pekerjaan anda.</p>\r\n<p>Dale Carnegie pernah berkata :<br /> <em>&rdquo;Dalam 2 bulan anda akan mempunyai lebih banyak teman dengan cara antusias terhadap cerita-cerita mereka dibandingkan 2 tahun anda mencari teman dengan cara berusaha memancing mereka tertarik pada cerita-cerita anda.&rdquo;</em></p>\r\n<p>Cobalah memberi peran lebih dalam berbicara untuk lawan bicara anda. Kelak anda akan membangun sebuah hubungan yang berkualitas.</p>\r\n<p>Mungkin anda sudah sering mendengar istilah &ldquo;mengapa Tuhan menciptakan 2 telinga dan 1 mulut? &hellip; agar kita lebih banyak mendengarkan dibanding berbicara.</p>\r\n<p><strong>9. Tidak Merespon Dengan Baik</strong></p>\r\n<p>Jika seseorang bercerita tentang pengalamannya, jangan sekedar mengangguk atau menjawab dengan kalimat singkat. Terbukalah dan katakan apa yang anda pikirkan. Ekspresikan perasaan anda.</p>\r\n<p>Sebagai penutup, anda tidak harus memperbaiki ke-9 langkah diatas secara sekaligus. Pilihlah kira-kira 3 hal terpenting yang menurut anda perlu diperbaiki dan selama 3-4 minggu anda berusaha melakukan hal tersebut secara terus menerus sampai akhirnya menjadi suatu kebiasaan.</p>\r\n<p>Mudah-mudahan tips percakapan ini bermanfaat bagi anda sehingga kelak anda dapat menjadi teman bicara yang baik bagi teman-teman atau pasangan anda.</p>', '2016-04-09 19:23:49', 'file_1460204629.jpg', NULL, 'admin', 3),
(9, 'Bagaimana Membebaskan Diri Anda dari Gosip', '<p><strong>Bahaya Gosip</strong></p>\r\n<p>Gosip merupakan salah satu masalah paling umum baik di tempat kerja maupun dalam hubungan. Masalah terbesar dari gosip adalah kebanyakan orang tidak menyadari ketika sebuah diskusi berubah menjadi gosip dan lebih parahnya lagi mereka tidak menyadari dampak dari gosip tersebut. Gosip adalah pembunuh sebuah hubungan dan hal ini terjadi lebih sering dari yang anda percayai. Gosip pada dasarnya adalah apapun yang dapat dianggap sebagai hal negatif tentang seseorang yang dibicarakan dengan orang lain dimana mereka tidak mendengarnya langsung dari pihak yang bersangkutan. Gosip bisa berupa sesuatu yang sangat sederhana tanpa adanya niat untuk menyakiti orang tersebut dan bisa pula sesuatu yang membunuh karakter seseorang.</p>\r\n<p>Tidak ada satu hal pun yang positif dari gosip dan gosip cenderung menyukai orang yang dibicarakan dan orang-orang yang terlibat ketika membicarakan gosip tersebut. Ada pula risiko yang timbul jika orang yang dibicarakan mengetahui orang yang menyabarkan gosip tersebut, juga rasa sakit yang muncul akibat informasi negatif yang tersebar. Beberapa bahaya lain yang muncul akibat gosip:</p>\r\n<p>&bull; <a href=\"http://www.akuinginsukses.com/7-cara-mengurangi-stress-hari-ini/\">Stress</a> bagi mereka yang terlibat dalam gosip<br /> &bull; Menyakiti perasaan<br /> &bull; Menghancurkan kerja sama tim<br /> &bull; Membuat orang enggan membagikan kerapuhan mereka<br /> &bull; Menghambat komunikasi yang membutuhkan rasa percaya dengan memberi dorongan bagi orang untuk menjaga mulut mereka<br /> &bull; Menciptakan reputasi yang negatif</p>\r\n<p><strong>Pilihan-pilihan Anda Terhadap Gosip</strong></p>\r\n<p>Dampak-dampak negatif tersebut seharusnya cukup untuk meyakinkan siapapun untuk menghindari gosip, sayangnya, mereka tetap melakukannya. Gosip sangatlah menggoda dan sering terjadi karena terdorong perilaku orang-orang sekitar. Dunia gosip membuka pintu lebar bagi semua gosip baru dan mereka cenderung menjadikan orang-orang yang tidak terlibat dalam gosip yang bersangkutan untuk menjadi korban dari gosip yang lebih baru. Terkadang lebih mudah untuk ikut terlibat dalam gosip daripada mengambil risiko menjadi korban dan bagi kebanyakan orang, dengan berbagai alasan, gosip memiliki daya tarik yang membuat orang tertarik untuk terlibat. Gosip adalah sebuah hal yang egois dan berbahaya karena merendahkan dan menghancurkan seseorang (baik secara langsung maupun tak langsung) untuk membuat gosip tersebut terdengar lebih baik. Inilah alasannya mengapa gosip sangatlah merusak, terutama bagi orang yang digosipkan.</p>\r\n<p>Hal terbaik dari gosip adalah anda bisa dengan mudah menjauhkan diri darinya jika anda memutuskan untuk menghindarinya dan mempelajari beberapa teknik untuk mengenalinya, menanganinya, dan menjaga jarak dari masalah yang ditimbulkan. Jadi bagaimana kita bisa melakukannya?</p>\r\n<p><strong>Kenali Gosip</strong></p>\r\n<p>Seringkali gosip merupakan sesuatu yang jelas dan tidak ditutup-tutupi. Kadang gosip bisa merupakan sebuah pertanyaan sederhana yang diajukan seseorang tentang apa yang anda dengar atau ketahui atau pikirkan mengenai orang lain atau tindakan mereka. Hal tersebut bisa terdengar seperti:</p>\r\n<p>&bull; Apakah kau dengar apa yang Frank katakan mengenai Sally?<br /> &bull; Kau tak akan menyangka apa John lakukan minggu ini?<br /> &bull; Aku dengar Gerry &hellip;<br /> &bull; Apakah kau sudah melihat pacar baru Lisa?</p>\r\n<p>Kata-kata tersebut tidak selalu berakhir dengan gossip negatif namun mereka merupakan pembicaraan mengenai orang lain dan cukup mudah untuk dikenali dalam sebuah percakapan atau awal sebuah gosip. Sayangnya, tidak semua gosip bisa dikenali dengan mudah, dan kadang gosip lebih tersamar. Gosip kadang berawal dari pembicaraan dengan seorang teman atau rekan kerja; diawali dengan pembicaraan yang positif hingga akhirnya berujung pada pembicaraan negatif. Jika anda tidak membicarakan cara untuk membantu orang yang sedang anda bicarakan, mendukung mereka untuk <a href=\"http://www.akuinginsukses.com/teknik-pemecahan-masalah/\">menyelesaikan masalah</a> atau melakukan tindakan positif lain ketika membicarakan orang lain; kemungkinan besar pembicaraan itu akan berakhir menjadi gosip. Pada dasarnya, jika anda sedang membicarakan orang lain, anda perlu berhenti dan memikirkan jika pembicaraan tersebut akan membantu orang tersebut atau tidak. Jika tidak, maka pembicaraan itu adalah gosip dan tidak perlu anda lanjutkan.</p>\r\n<p><strong>Mempengaruhi Gosip</strong></p>\r\n<p>&ldquo;Lidah mempunyai kuasa untuk menyelamatkan hidup atau merusaknya; orang harus menanggung akibat ucapannya.&rdquo;</p>\r\n<p>Karena gosip sangatlah kuat, gosip memiliki pengaruh yang besar dan harus dilawan melalui pengaruh positif dalam meresponnya. Terdapat beberapa tindakan yang bisa anda lakukan untuk melawan gosip.</p>\r\n<p><strong>Acuhkan gosip:</strong></p>\r\n<p>&bull; Hindari orang-orang yang bergosip dan jangan beri mereka kesempatan untuk menyebarkannya<br /> &bull; Tinggalkan ruangan atau pembicaraan saat gosip dimulai<br /> &bull; Jangan merespon pertanyaan yang menanyakan opini mengenai orang lain atau jebakan gosip lainnya<br /> &bull; Acuhkan gosip dan jangan memulai sebuah percakapan yang berujung menjadi gosip</p>\r\n<p><strong>Cegah gosip:</strong></p>\r\n<p>&bull; Jangan pernah memulai gosip dari diri anda<br /> &bull; Ubah topik pembicaraan jika sebuah pembicaraan berubah menjadi gosip<br /> &bull; Tolaklah untuk mendengar atau merespon setiap gosip<br /> &bull; Sembunyikan perasaan sakit atau reaksi dramatis terhadap gosip. Hal tersebut merupakan makanan bagi gosip untuk berlanjut.</p>\r\n<p><strong>Lawan gosip:</strong></p>\r\n<p>&bull; Katakan dengan sopan bahwa lebih baik membicarakan hal tersebut dengan orang yang bersangkutan<br /> &bull; Jika anda tahu darimana gosip tersebut bersumber, temui orang tersebut dan katakan kepada mereka bahwa anda tidak suka dengan gosip tersebut dan hal itu menyebabkan rasa sakit; terlepas dari gosip tersebut disengaja atau tidak<br /> &bull; Jika anda mendengar seseorang memulai sebuah gosip, ajukan diri untuk menemui orang yang dibicarakan dengan orang yang memulai gosip untuk mendiskusikannya<br /> &bull; Jawab gosip dengan, &ldquo;Maukah hal tersebut dibicarakan oleh orang lain tanpa sepengetahuan-mu?&rdquo; lalu pergilah<br /> &bull; Katakan bahwa saya tidak suka membicarakan orang lain karena saya tidak suka orang lain membicarakan saya<br /> &bull; Katakan bahwa anda tidak suka membicarakan orang lain kecuali pembicaraan tersebut dapat membantu atau mendukung mereka<br /> &bull; Katakan bahwa anda tidak mau membicarakan hal-hal negatif mengenai orang lain kecuali orang tersebut terlibat dalam percakapan</p>', '2016-04-09 19:25:33', 'file_1460204733.jpg', NULL, 'admin', 1);
INSERT INTO `berita` (`idberita`, `judul`, `isi`, `tglpost`, `gambar`, `tgl_last_update`, `user`, `views`) VALUES
(10, 'Bagaimana Membentuk Pola Pikir yang Baru', '<p>Pola pikir kita (atau kadang-kadang disebut paradigma kita) adalah jumlah total keyakinan, nilai, identitas, harapan, sikap, kebiasaan, keputusan, pendapat, dan pola-pola pemikiran kita &mdash; tentang diri kita sendiri, orang lain, dan bagaimana kehidupan bekerja. Ini adalah saringan yang dengannya kita menafsirkan apa yang kita lihat dan alami. Pola pikir Anda membentuk kehidupan Anda dan menarik kepada diri Anda hasil-hasil yang merupakan refleksi pasti pola pikir itu. Apa yang Anda percayai akan terjadi, benar-benar terjadi.</p>\r\n<p>Kita mendekati, bereaksi, dan pada kenyataannya menciptakan dunia kita berdasarkan pola pikir individual kita sendiri. Pola pikir kita memberitahu kita bagaimana permainan hidup ini harus dimainkan, dan mengatur apakah kita memainkannya secara berhasil atau tidak. Kita mungkin memiliki pola pikir, misalnya, yang memberitahu kita, &ldquo;Kehidupan ini sangat keras, dan aku harus berjuang hanya sekadar untuk hidup pas-pasan.&rdquo; Atau kita mungkin memiliki pola pikir yang lebih positif, seperti, &ldquo;Aku punya kemampuan yang hebat dan orang-orang ingin bekerja sama denganku.&rdquo;</p>\r\n<p>Pikiran adalah magnet yang sangat kuat. Apa pun yang diberitahukan pola pikir kita kepada kita adalah apa yang kita tarik, baik kita menyadarinya atau tidak! Jika Anda memiliki keyakinan bahwa, &ldquo;Kehidupan ini sangat keras, dan aku harus berjuang hanya sekadar untuk hidup pas-pasan,&rdquo; misalnya, Anda tidak perlu menyadari akan keyakinan itu untuk mengalami perjuangan dalam hidup Anda. Pada kenyataannya, jika Anda ingin melihat apa pola pikir Anda sebenarnya, Anda hanya perlu melihat hidup Anda dan hasil-hasil Anda. Hasil yang kita peroleh sesuai dengan apa yang kita yakini.</p>\r\n<p>Jika kita tidak memeriksa pola pikir kita dan bertanya apakah pola pikir itu mendukung atau membatasi kita, kita beroperasi &ldquo;secara otomatis.&rdquo; Kita tidak lagi memilih keyakinan dan pola pikir kita, tetapi keyakinan dan pola pikir itu menyebabkan kita menjalani hidup dengan cara tertentu. Kita menciptakan pola pikir kita sendiri, tetapi pada saat yang sama, pola pikir kita menciptakan diri kita. Jika kita tidak mempertanyakan keyakinan yang menyebutkan bahwa &ldquo;kehidupan ini sulit,&rdquo; misalnya, kita akan terus berjuang bahkan tanpa mengetahui penyebabnya.</p>\r\n<p>Kita semua memiliki keyakinan lama yang tersembunyi. Banyak dari keyakinan itu diperoleh pada masa kanak-kanak dan tidak lagi berguna bagi kita atau mendukung keberhasilan kita. Ketika Alice mulai memeriksa pola pikirnya, ia menyadari ia memiliki keyakinan bahwa &ldquo;Uang berasal dari kedua orangtua saya.&rdquo; Ketika ia masih kecil dan ingin es krim, mainan, atau boneka, dari orangtuanyalah uang berasal. Ketika remaja, dari orangtuanyalah uang tunjangannya berasal. Ketika dewasa, ia sering menemukan dirinya dalam kesulitan finansial dan terpaksa meminjam sejumlah besar uang kepada kedua orangtuanya.</p>\r\n<p>Joel Arthur Barker menulis dalam Paradigms, &ldquo;Mengabaikan kekuatan paradigma untuk memengaruhi pendapat Anda berarti menempatkan diri Anda dalam risiko ketika menjajaki masa depan. Agar mampu membentuk masa depan, Anda harus siap dan mampu mengubah paradigma Anda.&rdquo;</p>\r\n<p>Pola pikir menggerakkan perilaku kita. Jika Anda ingin melihat pola pikir Anda sendiri dan keluarga serta teman-teman Anda, cobalah mengadakan permainan kartu dengan keluarga selama liburan. Kemungkinan besar orang-orang akan melakukan di sekeliling meja kartu apa yang mereka lakukan dalam hidup mereka. Apakah beberapa orang bersikap jemu? Kompetitif? Santai? Apakah mereka ingin menyelamatkan muka atau bersikap tenang, atau apakah mereka mengambil risiko menyinggung perasaan orang lain agar dapat mengendalikan dan mendominasi? Apakah mereka malu-malu atau menguasai? Bagaimana mereka memandang orang lain akan bertindak terhadap mereka? Apakah beberapa orang berpikir mereka akan dimanfaatkan atau dibuat tampak bodoh? Apakah mereka berpikir orang lain bodoh atau berperilaku buruk? Semua perilaku ini mencerminkan pola pikir tertentu, cara melihat diri sendiri, orang lain, dan dunia.</p>\r\n<p>Kita dapat mempercayai apa pun yang ingin kita percayai. Dan kita dapat menemukan banyak bukti untuk mendukung keyakinan atau pola pikir apa pun yang kita pilih, jadi kita juga dapat memilih keyakinan yang memperkuat kita dan menggerakkan kita untuk maju. Kita mulai berhasil ketika kita memahami bahwa kita mempunyai sebuah pilihan, karena, pada saat itu, kita dapat mulai memilih keyakinan yang membawa kita ke mana kita ingin pergi. William James, bapak psikologi modern, berkata, &ldquo;Yakinlah bahwa hidup Anda berharga, maka keyakinan Anda akan menciptakan faktanya.&rdquo;</p>\r\n<p>Agar berhasil, Anda perlu memahami pola pikir Anda. Anda harus membawanya ke tingkat sadar, memerhatikannya dengan baik, dan melihat apakah ada sesuatu yang ingin Anda ubah. Jika tidak, keyakinan Anda yang tersembunyi akan mengendalikan Anda. Jika Anda tidak mengetahui pola pikir Anda, Anda tidak dapat melakukan apa pun terhadapnya. Jika Anda ingin mengubah hasil-hasil Anda, Anda harus mengubah pola pikir Anda.</p>\r\n<p>Pergeseran pola pikir berarti berubah dari satu pola pikir kepada pola pikir yang lain. Dalam Ilmu Sukses, ini berarti beralih dari satu pola pikir yang menghalangi <a href=\"http://www.akuinginsukses.com/keberhasilan-adalah-arah-yang-anda-pilih/\">keberhasilan</a> ke cara berpikir yang mendorong dan menarik keberhasilan.</p>\r\n<p>Ketika menggeser pola pikir Anda, Anda beralih ke sebuah permainan baru dan seperangkat aturan yang baru. Ketika permainan Anda dan aturan berubah, seluruh dunia Anda mulai berubah. Anda mulai mengeluarkan energi yang berbeda, sehingga Anda menarik jenis orang-orang dan situasi yang berbeda ke dalam hidup Anda. Ketika Anda mentransformasi pemikiran Anda, Anda mentransformasi dunia Anda. Oliver Wendell Holmes pernah berkata, &ldquo;Pikiran manusia yang dibentangkan ke sebuah gagasan baru tidak pernah kembali ke dimensi asalnya.&rdquo;</p>\r\n<p>Banyak orang mengatakan mereka ingin mengubah hidup mereka. Mereka menghadiri ceramah pembicara motivasi atau membuat janji Tahun Baru dan menjadi sangat gembira dengan semua perubahan yang mereka lihat untuk diri mereka sendiri. Atau mereka pergi ke seminar atau membaca buku dan melihat bahwa mereka ingin mulai melakukan hal-hal secara berbeda. Mereka bahkan mungkin melakukan beberapa perubahan dalam beberapa minggu pertama. Tetapi kemudian energi mereka tampak berkurang. Antusiasme mereka merosot. Sebelum Anda mengetahui hal itu, mereka kembali ke dalam rutinitas lama mereka. Ketika ini terjadi, penyebabnya adalah mereka mencoba untuk memanipulasi akibat-akibat dari kehidupan mereka, dan bukannya mencari sebabnya. Mereka mencoba untuk mengubah hasil tanpa mengubah pola pikir mereka.</p>\r\n<p>Untuk memberikan hasil yang dramatis dan permanen, Anda harus mengubah cara berpikir. Jika tidak ada pergeseran pola pikir, setiap perubahan atau perbaikan hanya akan bersifat minimal dan/atau berjangka pendek.</p>\r\n<p><strong>Pikiran Bawah Sadar Anda</strong></p>\r\n<p>Pikiran bawah sadar adalah pusat kekuatan Anda, bagian yang paling menakjubkan dari diri Anda. Pikiran itu adalah sisi spiritual diri kita, dan beberapa orang bahkan menyebutnya &ldquo;jiwa.&rdquo; Pikiran bawah sadar mengekspresikan diri melalui perasaan dan intuisi. Ia tidak memiliki batas-batas kecuali yang ditempatkan atasnya oleh pikiran sadar Anda pada waktu pikiran sadar itu memilih pikiran atau oleh pengondisian Anda sebelumnya. Pikiran bawah sadar adalah karunia terbesar yang Anda miliki, peti harta karun yang memiliki potensi yang sangat besar.</p>\r\n<p>Pikiran bawah sadar berfungsi dalam setiap sel tubuh Anda. Cobalah eksperimen ini: Gerakkan lengan kanan Anda secara memutar. Pada waktu Anda melakukannya, pikirkanlah fakta bahwa pikiran bawah sadar Andalah yang melakukan perintah ini. Tidak ada cara bagi Anda untuk dapat menggerakkan kurang lebih 157 otot antara bahu dan pergelangan tangan Anda secara sadar. Itu terlalu banyak bagi pikiran sadar Anda untuk mengaturnya. Terlalu rumit untuk mengatakan, &ldquo;Nah, mari kita putar otot No. 63 sepuluh derajat ke kanan, otot No. 32 sebelas derajat ke kiri, dan seterusnya.&rdquo;</p>\r\n<p>Pikiran bawah sadar Anda hanya menerima pengarahan, &ldquo;Gerakkan lengan kanan Anda secara memutar&rdquo; dan melaksanakannya, sama seperti jantung Anda tetap berdenyut dan paru-paru Anda bernapas bahkan sementara Anda tidur. Pikiran sadar Anda memberikan perintah untuk menggerakkan lengan, tetapi pikiran bawah sadar melaksanakannya.</p>\r\n<p>Proses ini terjadi ribuan, bahkan ratusan ribu, kali setiap hari. Setiap kali pikiran sadar Anda menerima sebuah pikiran, pikiran bawah sadar Anda mulai melaksanakannya dan mewujudkannya di dunia di sekitar Anda. Inilah alasan mengapa sangat penting memilih pikiran Anda dengan hati-hati. Apa pun yang disimpan di dalam pikiran sadar langsung melewati pikiran bawah sadar dan mulai menggerakkan tubuh dan kekuatan yang tak terlihat menjadi tindakan.</p>\r\n<p>Pikiran bawah sadar tidak memiliki kemampuan untuk menyensor atau menolak informasi. Ia langsung bertindak atas perintah apa pun yang diberikan padanya. Pikiran bawah sadar tidak dapat mengetahui perbedaan antara sesuatu yang benar-benar terjadi dan sesuatu yang dibayangkan dengan jelas.</p>\r\n<p>Setiap pikiran yang secara terus-menerus Anda tanamkan pada pikiran bawah sadar Anda menjadi tetap dan membentuk kebiasaan. Gagasan dan kebiasaan yang tetap ini menjadi pola pikir Anda. Pola pikir kita berada dalam pikiran bawah sadar. Pola pikir terus mengekspresikan diri dan menggerakkan hasil-hasil kita tanpa bantuan pikiran sadar sampai diganti secara sengaja. Sering kali, kita bahkan tidak menyadari keberadaan mereka, tetapi mereka aktif di dalam pikiran bawah sadar dan mendikte tingkat keberhasilan kita sampai kita dengan sadar menggantinya.</p>\r\n<p>Pikiran bawah sadar dan pikiran sadar seperti kebun dan tukang kebun. Pikiran sadar adalah tukang kebunnya. Anda dapat menggunakannya untuk memilih benih apa, atau pikiran apa, yang ingin Anda tanam. Pikiran bawah sadar akan menanam benih tersebut dan memberikan hasil yang persis mencerminkan jenis pikiran yang Anda tanam. Pikiran apa pun yang Anda terima dan pelihara akan tumbuh dalam kebun dan dilaksanakan oleh pikiran bawah sadar Anda.</p>\r\n<p><strong>Jalan Menuju Hasil</strong></p>\r\n<p>Inilah cara kerjanya. Kita memilih sebuah pikiran dalam pikiran sadar dan menjadi terlibat secara emosional dengan pikiran itu. Pada waktu kita terus memilih pikiran itu dan menanamkannya di dalam pikiran bawah sadar, pikiran bawah sadar mulai menggerakkan tubuh untuk bertindak. Itulah tepatnya apa yang terjadi beberapa menit yang lalu ketika Anda menggerakkan lengan Anda. Anda secara sadar memilih pikiran itu dan merasakan Anda ingin melakukannya. Anda memberikan perintah dan menanamkannya di dalam pikiran bawah sadar Anda, yang mengaktifkan semua otot yang diperlukan untuk menggerakkan lengan Anda. Dengan cara inilah semua hasil tercipta. Pikiran menciptakan perasaan dalam pikiran bawah sadar Anda. Perasaaan menciptakan tindakan, dan tindakan menciptakan hasil.</p>\r\n<p>Ubahlah pemikiran Anda, dan Anda mengubah hasil Anda. Setiap pikiran yang terus-menerus Anda pikirkan akhirnya berakhir dalam bentuk fisik. Jika pikiran Anda berubah, hasil Anda pasti berubah.</p>\r\n<p>PIKIRAN =&gt; PERASAAN =&gt; TINDAKAN =&gt; HASIL</p>\r\n<p><strong>Memilih Pola Pikir Anda Yang Baru</strong></p>\r\n<p>Bagaimana Anda mendapatkan pola pikir yang baru? Bagaimana Anda memilih pikiran baru untuk menggantikan pikiran lama Anda yang membatasi? Berikut ini adalah beberapa petunjuk untuk menciptakan pola pikir Anda yang baru:</p>\r\n<p><strong>1. Buatlah pola pikir Anda senyata, sekonkret, dan sekomprehensif mungkin</strong>.</p>\r\n<p>Itu berarti menuliskannya dengan tepat sebagaimana yang Anda inginkan. Keyakinan baru apa yang ingin Anda jalani? Sikap atau pendapat baru apa yang ingin Anda terapkan? Kebiasaan mental dan pola baru apa yang akan bermanfaat untuk dimasukkan ke dalam hidup Anda? Apa nilai-nilai Anda yang sesungguhnya? Harapan-harapan apa yang akan membawa Anda kepada keberhasilan? Ingin menjadi siapakah Anda? Ketika Anda membaca pola pikir Anda yang baru dan gambar <a href=\"http://www.akuinginsukses.com/10-hukum-kehidupan-paling-populer/\">kehidupan</a> yang Anda inginkan, bagaimana rupa gambar itu? Di mana diri Anda? Bagaimana perasaan Anda? Apa yang Anda lihat? Siapa yang ada di dekat Anda? Akan seperti apakah suatu hari yang Anda jalani jika Anda menjalani hidup dengan sikap, keyakinan, dan pikiran baru itu?</p>\r\n<p>Mulailah dengan menulis, &ldquo;Aku sangat gembira, dan bersyukur sekarang karena&hellip;&rdquo; Kemudian lanjutkan untuk menggambarkan keyakinan, sikap, pendapat, kebiasaan mental, nilai-nilai, dan harapan-harapan Anda tepat seperti yang Anda inginkan.</p>\r\n<p><strong>2. Berpikirlah secara tidak terbatas.</strong></p>\r\n<p>Biarkan diri Anda membayangkan masa depan dan sikap Anda terhadap diri sendiri, orang lain, dan bagaimana dunia bekerja tepat seperti yang Anda inginkan. Jangan sekadar berusaha mendapatkan apa yang Anda pikir dapat Anda peroleh. Wujudkan kehidupan yang benar-benar Anda inginkan!</p>\r\n<p><strong>3. Pastikan untuk menuliskannya dalam kalimat seolah-olah Anda sudah memilikinya. </strong></p>\r\n<p>Anda tidak boleh berpikir dalam bentuk &ldquo;suatu hari,&rdquo; atau menulis &ldquo;Aku akan.&rdquo; Tulislah dan alamilah, seolah-olah hal itu terjadi saat ini, sekalipun hasilnya belum terwujud. Tulislah, misalnya, &ldquo;Aku suka menghasilkan <a href=\"http://www.akuinginsukses.com/kenyataan-tentang-uang-dan-kebahagiaan/\">uang</a> dan menjalankan bisnis yang berhasil, karena hal itu memungkinkan aku bermurah hati kepada orang lain.&rdquo; Berikan pikiran bawah sadar Anda pesan bahwa realitas ini sudah nyata dalam hidup Anda.</p>\r\n<p>Ingatlah, pikiran bawah sadar menerima segala sesuatu yang diberikan kepadanya, tanpa menyunting, menyensor, atau menilai. Jika Anda menuliskan bahwa itu akan terjadi nanti, hal itu memberitahukan pikiran bawah sadar Anda bahwa Anda tidak memiliki apa yang Anda inginkan, dan Anda belum menjadi orang yang Anda inginkan. Ketika Anda mengatakan, &ldquo;Aku akan,&rdquo; Anda sedang mengatakan kepada pikiran bawah sadar Anda bahwa Anda tidak demikian. Saya pernah membaca pernyataan misi sebuah organisasi yang mengatakan mereka &ldquo;berjuang untuk menjadi nomor satu.&rdquo; Terkalah apa yang selalu mereka lakukan. Berjuang! Dengan pernyataan misi itu, mereka selalu berjuang, tetapi tidak pernah menjadi nomor satu! Jika Anda mendapatkan diri Anda tergelincir dan menuliskan dalam bentuk masa mendatang, kembalilah dan bawa gambaran pola pikir Anda ke dalam bentuk saat ini.</p>\r\n<p><strong>4. Buatlah pola pikir Anda bersifat emosional. </strong></p>\r\n<p>Selain menuliskan dalam bentuk sekarang, sertakan kata-kata emosional dan terlibatlah secara emosional dengan apa yang sedang Anda tulis. Ingatlah, perasaan adalah pintu gerbang menuju pikiran bawah sadar, dan pikiran bawah sadar Anda adalah kekuatan yang sesungguhnya di balik keberhasilan Anda. Emosi menciptakan motivasi. Anda harus menjadi bersemangat. Jika Anda tidak bersemangat dengan pola pikir Anda yang baru, jika Anda tidak benar-benar jatuh cinta dengan pola pikir yang baru itu, pola pikir yang baru itu tidak akan terbentuk dalam bentuk fisik. Semangat manusia tidak akan menginvestasikan upayanya untuk sesuatu yang biasa-biasa saja! Jika Anda tidak merasa penuh semangat setelah menuliskan pola pikir Anda yang baru, kembalilah dan kerjakan ulang apa yang telah Anda tuliskan. Ketika hal itu benar-benar menggerakkan Anda, Anda siap membuatnya menjadi kenyataan.</p>\r\n<p><strong>5. Berhati-hatilah agar Anda menyatakan apa yang benar-benar Anda inginkan, bukan apa yang tidak Anda inginkan.</strong></p>\r\n<p>Pikiran kita tidak dapat memproses kata tidak. Jika saya mengatakan pada Anda untuk tidak berpikir tentang es krim, apa yang Anda pikirkan? Terlebih dahulu Anda pasti berpikir tentang apa yang saya katakan untuk tidak Anda pikirkan, sebelum Anda dapat mengatakan pada pikiran Anda untuk tidak berpikir tentang hal itu! Semua pemikiran ini akan membuat Anda menarik hal yang benar-benar tidak Anda inginkan. Jadi ingatlah untuk menyatakan apa yang benar-benar Anda inginkan.</p>\r\n<p><strong>6. Ciptakan sebuah gambar tentang pola pikir Anda dan beradalah dalam gambar itu, bukan sekadar menjadi pengamat yang melihat ke gambar itu.</strong></p>\r\n<p>Rata-rata orang yang melakukan latihan ini, mereka hampir selalu mendapati bahwa mereka melihat diri mereka dalam gambar itu. Itu tidak akan berhasil. Anda harus berada dalam gambar pola pikir Anda yang baru itu. Jika Anda melihat ke diri sendiri dalam gambar itu, Anda mengatakan pada pikiran bawah sadar Anda bahwa itu bukan benar-benar diri Anda, Anda belum benar-benar berada di sana. Ketika Anda benar- benar berada dalam gambar itu, Anda sedang merasakan emosi dan hasil yang telah Anda peroleh dalam hidup baru Anda. Anda mengatakan pada pikiran bawah sadar Anda, &ldquo;Ini nyata!&rdquo; Pikiran bawah sadar Anda segera mulai menciptakan realitas itu. Lihatlah apa yang Anda lihat jika Anda berada dalam gambar itu, bukan melihat ke diri Anda sendiri dalam gambar itu.</p>\r\n<p>Ketika Anda mulai menjalani kehidupan berdasarkan pola pikir Anda yang baru, Anda mulai mengambil keputusan yang berbeda. Anda mungkin mulai berhubungan dengan berbagai jenis orang, dan Anda menarik lingkungan yang berbeda ke dalam hidup Anda. Semakin sering dan bersemangat Anda memasukkan pola pikir Anda ke dalam pikiran Anda, semakin cepat pola pikir itu akan bermanifestasi.</p>\r\n<p>Tips ini efektif apakah Anda sedang membuat pola pikir yang baru atau visi yang baru, semoga bermanfaat!</p>', '2016-04-09 19:27:04', 'file_1460204824.jpg', NULL, 'admin', 3),
(11, 'Fly with Hammock', '<p>fwqwqf</p>\r\n', '2019-11-14 20:35:05', '26a9b6bddd16b0f0538c4e84b8322f47.jpg', NULL, 'admin', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskon_tour`
--

CREATE TABLE `diskon_tour` (
  `id` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `jml_diskon` int(11) NOT NULL,
  `desk` text NOT NULL,
  `kode_kupon` varchar(15) NOT NULL,
  `valid_until` date NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskon_tour`
--

INSERT INTO `diskon_tour` (`id`, `id_paket`, `jml_diskon`, `desk`, `kode_kupon`, `valid_until`, `date_created`) VALUES
(1, 3, 20, '<p>rhererhreh</p>\r\n', 'WESLIFE', '2020-02-08', '2020-01-02 21:27:12'),
(2, 4, 21, '<p>efeef</p>\r\n', 'WESLIFE', '2020-02-08', '2020-01-02 21:28:54'),
(3, 4, 33, '<p>fege</p>\r\n', 'WESLIFE', '2020-01-29', '2020-01-02 21:29:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `jdl_galeri` varchar(200) DEFAULT NULL,
  `gbr_galeri` varchar(40) DEFAULT NULL,
  `albumid` int(11) DEFAULT NULL,
  `id_paket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `jdl_galeri`, `gbr_galeri`, `albumid`, `id_paket`) VALUES
(3, 'Mount Tambora', '82d8a66323a95ed677c631cb7d9f0610.jpg', 19, 6),
(4, 'Tambora beautiful', 'fe453e12155947c4974500c5c8df7adb.jpg', 19, 6),
(5, 'Explore Tambora', '5ef501e8e84a1f147fe1723497bfa8ba.jpg', 19, 6),
(6, 'Hiking Tambora', '9ca5869eeeb580d1afca1d4e45295b45.jpg', 19, 6),
(7, 'Hiking Tambora 2', '2b1d0b136c8a1cea71443f53a136378b.jpg', 19, 6),
(8, 'Hiking Tambora 3', '1e8ca8b3c06dee1947777e79232bb9cf.jpg', 19, 6),
(9, 'Hiking Tambora 4', '70c1d1288745d066de61e3e7a3735d36.jpg', 19, 6),
(10, 'Kenawa Island1', '8338f87a14639f821ecfeb8087d3febd.jpg', 20, 7),
(11, 'Kenawa Island2', '5ef49fabd171d506792c84703c1c7641.jpg', 20, 7),
(12, 'Kenawa Island3', '0452ce4d9b8bc2fcba513e5413bfa28b.jpg', 20, 7),
(13, 'Kenawa Island4', '6d7cbb729850b6a61332c6f138244e54.jpg', 20, 3),
(14, 'Kenawa Island5', '8571132a07b26ee13a9e3633cc8f8208.jpg', 20, 7),
(15, 'Kenawa Island6', '0405f204ed7eecd8881a3cb915e78e3b.jpg', 20, 3),
(16, 'Kenawa Island7', '305654c1c2ebb8546084db3fb66ea6d1.jpg', 20, 7),
(17, 'Kenawa Island8', '804daf5bd4d3ecf2163b1e301e358b5a.jpg', 20, 7),
(18, 'Kenawa Island9', 'fbd4edc282ca1e6fe60c093d1722f5f5.jpg', 20, 3),
(19, 'Kenawa Island10', 'b85907613b347e08a2230e50998305f7.jpg', 20, 3),
(20, 'Kenawa Island11', '227ac827ca4ebd77aa42db2561140e6d.jpg', 20, 7),
(21, 'Kenawa Island12', '2b6a382b76b3ad66fa08e8659f76a438.jpg', 20, 7),
(22, 'Pantai Sumbawa', '28e56fc183f37fcf7b9e2850b98b4627.jpg', 21, 3),
(23, 'Pantai Sumbawa2', '12f6571cf9e229c1a1f81c7068036236.jpg', 21, 5),
(24, 'Pantai Sumbawa3', '136bc9c71cf450110caeeeb6b6f58c44.jpg', 21, 7),
(25, 'Pantai Sumbawa4', '3ba5782bffeacac548439d9d71345d65.jpg', 21, 3),
(26, 'Pantai Sumbawa5', 'f951a3621924589cfc007121ccb4b6d5.jpg', 21, 7),
(27, 'Pantai Sumbawa6', '07cd14b454de08d64c58633238661a83.jpg', 21, 7),
(28, 'Pantai Sumbawa7', '5d038c842b80cb9aacdb6641652ce146.jpg', 21, 7),
(29, 'Pantai Sumbawa7', '8e768e1e58e4a5831fe713bee0c14483.jpg', 21, 7),
(30, 'Pantai Sumbawa8', 'ca8358ee68f006d4749d2dfc7dd3afaa.jpg', 21, 3),
(31, 'Pantai Sumbawa9', '274fbed74a536f222dfeff22b0fcbec4.jpg', 21, 7),
(32, 'Pantai Sumbawa10', '5786af5562f967db49e41bcb1b2550dc.jpg', 21, 7),
(33, 'Pantai Sumbawa11', '6e6e4abba8f1f395316c37a6105447a1.jpg', 21, 3),
(34, 'Pantai Sumbawa', '75846b60836fc44b95e31da87cbc5f40.jpg', 21, 3),
(35, 'Pantai Sumbawa12', '04f191434dbb6d65ab5084ea842cc61f.jpg', 21, 3),
(36, 'Pantai Sumbawa13', '412d9661696c5fb002cb83adde9f6303.jpg', 21, 7),
(37, 'Pantai Sumbawa14', 'eca2c075c2cb7763782c6525efdbc020.jpg', 21, 3),
(38, 'Pantai Sumbawa15', 'd66f35a99d7b6eaec9ac43d69613f87a.jpg', 21, 7),
(39, 'Pantai Sumbawa16', '307feaee38b7e44d1c0731c06dad039b.jpg', 21, 7),
(40, 'Pantai Sumbawa17', '0552a2cf17c9296e12f25ffff781be3d.jpg', 21, 3),
(42, 'Pantai Sumbawa18', '5b5e9b28433a21f667ccf6d1eec2c86e.jpg', 21, 7),
(43, 'Snorkeling', '6890d7ed18d56d1016bf4da48c227e52.jpg', 27, 3),
(44, 'Snorkeling2', '2bf1452df6b00f3f211a2883edaab340.jpg', 27, 7),
(45, 'Snorkeling3', 'bc70616a41215551f4c4698e9ba59cb1.jpg', 27, 7),
(46, 'Snorkeling4', 'd9dfdf09e9135c73f583606216023172.jpg', 27, 3),
(47, 'Snorkeling5', 'e3a00c3c76be2487b7ce1fd6ba22dc68.jpg', 27, 3),
(48, 'Snorkeling6', '18466e2fdd8df1e13712c99e119bc2e7.jpg', 27, 3),
(49, 'Snorkeling7', '417eaab13506b554fbab6a7ead4bf06c.jpg', 27, 3),
(50, 'Snorkeling8', 'df5078b45d220f474c44f8ffb01575c0.jpg', 27, 7),
(51, 'Snorkeling', '2d13ebbdc7d8aebcc5968a20bd07b9d1.jpg', 27, 3),
(52, 'Snorkeling10', 'bc2280798180b4b2db41b5203367ad2b.jpg', 27, 3),
(53, 'Snorkeling11', '025f34a468cf336063786af91b26558b.jpg', 27, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_paket`
--

CREATE TABLE `kategori_paket` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_paket`
--

INSERT INTO `kategori_paket` (`id_kategori`, `kategori`) VALUES
(1, 'Reguler'),
(2, 'Paket Khusus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `metode_bayar`
--

CREATE TABLE `metode_bayar` (
  `id_metode` int(11) NOT NULL,
  `metode` varchar(80) DEFAULT NULL,
  `bank` varchar(50) DEFAULT NULL,
  `norek` varchar(50) DEFAULT NULL,
  `atasnama` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `metode_bayar`
--

INSERT INTO `metode_bayar` (`id_metode`, `metode`, `bank`, `norek`, `atasnama`) VALUES
(2, 'Transfer Bank', 'Mandiri', '5485-01-007458-53-6', 'Dimas Rifalta'),
(3, 'Transfer Bank', 'BNI', '5485-01-007458-53-6', 'Dimas Rifalta'),
(4, 'Transfer Bank', 'BCA', '5485-01-007458-53-6', 'Dimas Rifalta'),
(5, 'Transfer Bank', 'BRI', '5485-01-007458-53-6', 'Dimas Rifalta'),
(6, 'Transfer Bank', 'Mega', '5485-01-007458-53-6', 'Dimas Rifalta');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id_order` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `berangkat` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `id_ketersediaan_tanggal` int(11) NOT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` varchar(70) DEFAULT NULL,
  `pembatalan` varchar(128) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `kode_booking` varchar(10) NOT NULL,
  `status_expired` varchar(50) NOT NULL,
  `expired_date` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket`
--

CREATE TABLE `paket` (
  `idpaket` int(11) NOT NULL,
  `nama_paket` varchar(100) DEFAULT NULL,
  `hrg_dewasa` double DEFAULT NULL,
  `hrg_anak` double DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `gambar` varchar(40) DEFAULT NULL,
  `views` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `paket`
--

INSERT INTO `paket` (`idpaket`, `nama_paket`, `hrg_dewasa`, `hrg_anak`, `deskripsi`, `kategori_id`, `gambar`, `views`, `status`) VALUES
(3, 'EXPLORE SUMBAWA CULTURE 3D2N', 2500000, 2500000, '<p>Meeting Point : Sultan Muhammad Kaharuddin (SWQ)<br />\r\nDrop Off Point : Sultan Muhammad Kaharuddin (SWQ)</p>\r\n\r\n<p>Trip Kali ini adalah perpaduan antara budaya ,sejarah,atraksi ,dan pemandangan alam ( pantai dan gunung )</p>\r\n\r\n<h3>INCLUDE</h3>\r\n\r\n<ul>\r\n	<li>Menginap di hotel 2 malam ( 1 kamar isi 2 orang ).</li>\r\n	<li>Makan sesuai program ( 2 kali makan malam 3 kali makan pagi 3 kali makan siang ) Lokal resto dan hotel.</li>\r\n	<li>Transport AC sesuai jumlah peserta ( Mobil dan bus Pariwisata ).</li>\r\n	<li>Tiket dan donasi wisata .</li>\r\n	<li>Private speed boat ke Pulau Kenawa.</li>\r\n	<li>Guide Local selama di Pulau Sumbawa .</li>\r\n	<li>Antar jemput airport.</li>\r\n	<li>Shall / Selendang selamat datang.</li>\r\n</ul>\r\n\r\n<h3>EXCLUDE</h3>\r\n\r\n<ul>\r\n	<li>Tiket pesawat dari daerah asal menuju Sumbawa.</li>\r\n	<li>Pengeluaran pribadi.</li>\r\n	<li>Minibar.</li>\r\n	<li>Laundry.</li>\r\n	<li>Permainan di obyek wisata .</li>\r\n</ul>\r\n\r\n<h3>ITINERARY</h3>\r\n\r\n<p>DAY 1.<br />\r\n08.00 - 09.00<br />\r\nPerkiraan berangkat / tiba di sumbawa Airport.</p>\r\n\r\n<p>09.00 - 10.00<br />\r\nDesa sade (Desa Rumah adat sumbawa ).</p>\r\n\r\n<p>10.00 - 11.00<br />\r\nDesa Sukarara ( Desa penenun ).</p>\r\n\r\n<p>11.00 - 13.00<br />\r\nPantai kenawa sumbawa dan makan siang lokal resto.</p>\r\n\r\n<p>13.00 - 15.00<br />\r\nPantai Tanjung Aan.</p>\r\n\r\n<p>15.00 - 18.00<br />\r\nBukit Meresek ( sunset ).</p>\r\n\r\n<p><br />\r\nDay 2. (Pantai Toro Mbala)<br />\r\n06.00 - 08.00<br />\r\nPersiapan tour dan makan pagi.</p>\r\n\r\n<p>08.00 - 09.00<br />\r\nMenuju pelabuhan teluk nara Sumbawa.</p>\r\n\r\n<p>09.00 - 09.30<br />\r\nBukit Malimbu (spot photo).</p>\r\n\r\n<p>09.30 - 10.00<br />\r\nMenuju Pantai Toro Mbala.</p>\r\n\r\n<p>10.30 - 11.30<br />\r\nTiba di Pantai Toro Mbala. ( activitas snorkling -sepeda -naik andong dll ).</p>\r\n\r\n<p>11.00 - 13.00<br />\r\nAktivitas (snorkeling, naik sepeda, andong).<br />\r\n13.00 - 14.00<br />\r\nMakan siang lokal resto.</p>\r\n\r\n<p><br />\r\nDay 3. (City tour)<br />\r\n06.00 - 08.00<br />\r\nPersiapan dan sarapan pagi di hotel.</p>\r\n\r\n<p>08.00 - 09.00<br />\r\nBerangkat menuju taman lingsar.</p>\r\n\r\n<p>09.00 - 12.00<br />\r\nTiba di Pura Tamanlingsar (perpaduan sejarah dan perang tupat).</p>\r\n\r\n<p>12.00 - 14.00<br />\r\nTaman Tiang Enam(sejarah) dan makan siang lokal resto.</p>\r\n\r\n<p>14.00 - 16.00<br />\r\nEdukasi pengerjain sumbawa( gerabah-mutiara-ukiran dll ).</p>\r\n\r\n<p>16.00 : 18.00<br />\r\nMenuju airport / hotel / sumbawa.</p>\r\n\r\n<h3>TERMS &amp; CONDITIONS</h3>\r\n\r\n<ul>\r\n	<li>Itinerary sewaktu bisa berubah jika terjadi force majure , di antara nya :</li>\r\n	<li>Pembatalan penerbangan pesawat.</li>\r\n	<li>Bencana alam.</li>\r\n	<li>Kebijakan pemetintah yang dapat membatalkan acara tour.</li>\r\n</ul>\r\n\r\n<h3>DO&#39;s &amp; DONT&#39;s</h3>\r\n\r\n<ul>\r\n	<li>Ikuti arahan guide .</li>\r\n	<li>Anak balita di awasi.</li>\r\n	<li>Peserta kelainan info kami.</li>\r\n	<li>Jangan merokok dan buang puntung rokok di desa sade yang dapat berbahaya.</li>\r\n</ul>\r\n\r\n<h3>PERSONAL EQUIPMENT LIST</h3>\r\n\r\n<ul>\r\n	<li>Obat obatan pribadi .</li>\r\n	<li>Pakaian ganti secukupnya.</li>\r\n	<li>Kamera .</li>\r\n	<li>Kaca mata hitam.</li>\r\n	<li>Sunblock.</li>\r\n	<li>Sepatu dan sandal</li>\r\n</ul>\r\n', 1, 'd8cb6237bd3468522250e4e1126da3b7.jpg', 3, 1),
(5, 'PULAU MOYO DAY TOUR 1D', 525000, 525000, '<p>Meeting Point : Sultan Muhammad Kaharuddin (SWQ)<br />\r\nDrop Off Point : Sultan Muhammad Kaharuddin (SWQ)</p>\r\n\r\n<p>Keliling area moyo yang memiliki pemandangan yang sangat cantik seperti air terjun,monkey forest,rice terrace,dan pira yang memiliki air suci dan juga kamu bisa melihat lihat souvenir di pasar ubud bila kamu ingin membeli oleh oleh.</p>\r\n\r\n<h3>INCLUDE</h3>\r\n\r\n<ul>\r\n	<li>Mobil</li>\r\n	<li>Sopir</li>\r\n	<li>Bensin</li>\r\n</ul>\r\n\r\n<h3>EXCLUDE</h3>\r\n\r\n<ul>\r\n	<li>Tiket masuk wisata</li>\r\n	<li>Makan siang</li>\r\n</ul>\r\n\r\n<h3>ITINERARY</h3>\r\n\r\n<p>08.00<br />\r\ndi jemput di hotel</p>\r\n\r\n<p>9.30-10.30<br />\r\ndi air terjun</p>\r\n\r\n<p>11.00-12.00<br />\r\ndi monkey forest</p>\r\n\r\n<p>12.30<br />\r\nmakan siang</p>\r\n\r\n<p>13.30<br />\r\ndi pasar ubud</p>\r\n\r\n<p>14.00-14.30<br />\r\ndi riceterrace</p>\r\n\r\n<p>15.00-15.30<br />\r\ndi tirta empul</p>\r\n\r\n<p>16.00-17.00<br />\r\ndigoa gajah kemudian kembali ke hotel</p>\r\n\r\n<h3>TERMS &amp; CONDITIONS</h3>\r\n\r\n<ul>\r\n	<li>Dilarang merokok di dalam mobil</li>\r\n</ul>\r\n\r\n<h3>DO&#39;s &amp; DONT&#39;s</h3>\r\n\r\n<ul>\r\n	<li>Pakai sarung ketika masuk pura</li>\r\n</ul>\r\n\r\n<h3>PERSONAL EQUIPMENT LIST</h3>\r\n\r\n<ul>\r\n	<li>Bawalah handuk dan pakaian ganti kalau ingin berenang di air terjun</li>\r\n</ul>\r\n', 2, 'd0d649e473c3d19af3d600a23c162c72.jpg', 26, 1),
(6, 'TREKKING TAMBORA 3D3N', 3500000, 3500000, '<p>Meeting Point : Sultan Muhammad Kaharuddin (SWQ)<br />\r\nDrop Off Point : Sultan Muhammad Kaharuddin (SWQ)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Trekking Tambora</h2>\r\n\r\n<p>Gunung Tambora Salah satu gunung bersejarah di&nbsp;Indonesia ini keesoktisan nya berhasil menjadi magnet wisatawan untuk datang ke gunung tercantik ini. Tidak cuma pendaki gunung pro saja yang terhipnotis tapi mereka yang awam dalam pendakian pun ikut tertantang untuk melihat pesona akan keindahanya. Wonderful Trekking Tambora sanggup menarik banyak wisatawan lokal maupun mancanegara.</p>\r\n\r\n<h3>INCLUDE</h3>\r\n\r\n<p>Penjemputan dan pengantaran di Bandara (mobil Elf AC).</p>\r\n\r\n<p>Simaksi TNGR (Untuk Domestik).</p>\r\n\r\n<p>Guide selama di gunung (Team Leader).</p>\r\n\r\n<p>Camp gears (Tenda, alat masak, Alat Makan).</p>\r\n\r\n<p>Porter tim (bawa tenda, alat masak, logistik, dimasakin).</p>\r\n\r\n<p>Service makan 9X.</p>\r\n\r\n<p>Bonus ke tempat oleh2 dan kuliner lombok (opsional).</p>\r\n\r\n<p>P3K standart.</p>\r\n\r\n<p>Dokumentasi foto.</p>\r\n\r\n<h3>EXCLUDE</h3>\r\n\r\n<p>Porter pribadi (untuk membawakan barang pribadi).</p>\r\n\r\n<p>Alat pribadi (sleeping bag, matras).</p>\r\n\r\n<p>Pengeluaran pribadi.</p>\r\n\r\n<p>Tip Guide &amp; Porter (seikhlasnya).</p>\r\n\r\n<h3>ITINERARY</h3>\r\n\r\n<p>DAY 1.<br />\r\n08.00<br />\r\nPenjemputan Meeting Point / Hotel.</p>\r\n\r\n<p>09.30 - 11.00<br />\r\nTrekking start bawanao/sembalun.</p>\r\n\r\n<p>12.00 - 13.00<br />\r\nIstirahat pos 2, Snack Siang (makan 1).</p>\r\n\r\n<p>14.00- 17.00<br />\r\nKembali Trekking.</p>\r\n\r\n<p>17.00<br />\r\nTiba di Plawangan Bima(camp).</p>\r\n\r\n<p>18.30<br />\r\nMakan Malam (makan 2).</p>\r\n\r\n<p><br />\r\nDAY 2.<br />\r\n00.00 - 12.30<br />\r\nPersiapan Summit attack, Makan pagi (makan 3). Perjalanan menuju puncak.</p>\r\n\r\n<p>06.00 - 07.00<br />\r\nTiba di Puncak tambora. Persiapan turun menuju danau tmabora anak.</p>\r\n\r\n<p>08.30 - 09.30<br />\r\nMakan siang di plawangan bima (makan 4).</p>\r\n\r\n<p>09.30 - 16.00<br />\r\nTrekking menuju Segara Anak.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>18.00 makan malam (makan 5).</p>\r\n\r\n<p><br />\r\nDAY 3.<br />\r\n07.00 - 09.00<br />\r\nMakan pagi (makan 6). Persiapan menuju plawangan bima.</p>\r\n\r\n<p>12.00<br />\r\nTiba di Plawangan bima.</p>\r\n\r\n<p>14.00 - 15.00<br />\r\nMakan siang (makan 7).</p>\r\n\r\n<p>15.00 - 17.00<br />\r\nTrekking menuj Pos 2.</p>\r\n\r\n<p>17.00<br />\r\nTiba di Pos 2 (camp).</p>\r\n\r\n<p>19.00<br />\r\nMakan malam (makan 8).</p>\r\n\r\n<p><br />\r\nDAY 4.<br />\r\n07.00 - 09.00<br />\r\nMakan pagi (makan 9) dan persiapan turun.</p>\r\n\r\n<p>09.00 - 12.00<br />\r\nTrekking menuju Desa lamusung</p>\r\n\r\n<p>12.00<br />\r\nTiba di Desa lamusung</p>\r\n\r\n<p>12.30 - 15.00<br />\r\nPerjalanan menuju meeting point</p>\r\n\r\n<p>15.00<br />\r\nTiba di Meeting point</p>\r\n\r\n<p>TERMS &amp; CONDITIONS</p>\r\n\r\n<p>Untuk Open Trip Kuota dibatasi minimal 8 orang dan maksimal 16 orang. Apabila kuota minimal tak terpenuhi maka dimusyawarahkan untuk penambahan biaya trip seminimal mungkin.</p>\r\n\r\n<p>Peserta diharapkan saling menjaga sopan santun sesama peserta.</p>\r\n\r\n<p>Peserta dianggap telah membaca, mengerti dan menyetujui syarat dan ketentuan trip.</p>\r\n\r\n<h3>DO&#39;s &amp; DONT&#39;s</h3>\r\n\r\n<p>Bawa peralatan hiking yang memadai.</p>\r\n\r\n<p>Efektif dalam membawa perlengkapan hiking.</p>\r\n\r\n<p>Dilarang membawa/menyalakan kembang api.</p>\r\n\r\n<p>Ikuti arahan dari guide.</p>\r\n\r\n<p>Membawa peralatan mendaki (Tas carrier, Tas lipat u/summit, Jaket hangat, Topi/kupluk, Sarung tangan, Sleeping bag, Matras, Headlamp/senter, Trekking pole, Sepatu trekking)</p>\r\n\r\n<h3>PERSONAL EQUIPMENT LIST</h3>\r\n\r\n<p>Snack.</p>\r\n\r\n<p>Pakaian ganti.</p>\r\n\r\n<p>Raincoat.</p>\r\n\r\n<p>Kaos kaki.</p>\r\n\r\n<p>Baterai.</p>\r\n\r\n<p>Sandal.</p>\r\n\r\n<p>Gaiters.</p>\r\n\r\n<p>Masker/buff.</p>\r\n\r\n<p>Termos/tumblr</p>\r\n\r\n<p>Alat makan (Sendok, piring, gelas).</p>\r\n\r\n<p>Alat Mandi.</p>\r\n\r\n<p>Obat pribadi.</p>\r\n\r\n<p>Sunblock.</p>\r\n', 1, '10256f80977ec29a03b6ded6d6b60cb8.jpg', 9, 1),
(7, 'Open Trip Keliling Sumbawa 3D2N', 2000000, 2000000, '<p>Meeting Point : Sultan Muhammad Kaharuddin (SWQ)<br />\r\nDrop Off Point : Sultan Muhammad Kaharuddin (SWQ)</p>\r\n\r\n<h3>INCLUDE</h3>\r\n\r\n<ul>\r\n	<li>Transportasi AC selama tour Akomodasi selama 2 malam di hotel *2</li>\r\n	<li>Mahkota Plengkung atau setara (Kamar mandi dalam, AC, TV)</li>\r\n	<li>Konsumsi sesuai program</li>\r\n	<li>Air mineral</li>\r\n	<li>Kapal ke dan dari pulau Menjangan dan pulau Tabuhan</li>\r\n	<li>Izin kegiatan snorkeling</li>\r\n	<li>Snorkeling set Jaket pelampung</li>\r\n	<li>Dokumentasi</li>\r\n	<li>underwater Boat di dari Rajegwesi ke Teluk Ijo</li>\r\n	<li>Masker gas Guide</li>\r\n	<li>Izin dan karcis masuk lokasi wisata</li>\r\n</ul>\r\n\r\n<h3>EXCLUDE</h3>\r\n\r\n<ul>\r\n	<li>Tiket pesawat / kereta</li>\r\n	<li>Pengeluaran pribadi selama tour</li>\r\n	<li>Tips guide / driver</li>\r\n</ul>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<h3>ITINERARY</h3>\r\n\r\n<p>DAY 1.<br />\r\n07:00 &ndash; 08:00<br />\r\nPenjemputan di Sultan Muhammad Kaharuddin (SWQ)</p>\r\n\r\n<p>08:00<br />\r\nMakan Pagi</p>\r\n\r\n<p>09:00<br />\r\nMenuju hutan djawatan Benculuk</p>\r\n\r\n<p>10:00<br />\r\nDiperkirakan tiba di kawasan hutan djawatan, agenda sesi foto</p>\r\n\r\n<p>11:00<br />\r\nBerangkat menuju Desa Airsuning</p>\r\n\r\n<p>12:00<br />\r\nSampai di Rajegwesi menyeberang ke Selat Alas</p>\r\n\r\n<p>12:20<br />\r\nFree agenda di Teluk Ijo dan Pantai Batu</p>\r\n\r\n<p>13:20<br />\r\nMeninggalkan Selat Alas, menuju ke Red Island</p>\r\n\r\n<p>14:30<br />\r\nMakan siang</p>\r\n\r\n<p>15:30<br />\r\nMengunjungi Red Island, jika peserta berkenan bisa menikmati suasana sunset di pulau kenawa</p>\r\n\r\n<p>19:00<br />\r\nMakan malam</p>\r\n\r\n<p>20:00<br />\r\nCheck-in Hotel</p>\r\n\r\n<p>20:30<br />\r\nPeserta Open Trip Keliling Sumbawa 3D2N dipersilahkan istirahat untuk mempersiapkan tour di hari berikutnya</p>\r\n\r\n<p><br />\r\nDAY 2.<br />\r\n04:00<br />\r\nMenuju Pantai Pasir Putih</p>\r\n\r\n<p>05:00<br />\r\nMenyeberang ke pulau Tabuhan (Menyaksikan sunrise selat Alas dari atas kapal)</p>\r\n\r\n<p>05:30<br />\r\nAgenda bebas dan photo session di pulau Tabuhan</p>\r\n\r\n<p>06:00<br />\r\nMenuju pulau Pulau Moyo</p>\r\n\r\n<p>06:30<br />\r\nMakan pagi</p>\r\n\r\n<p>07:00<br />\r\nSampai di pulau moyo, snorkeling di spot pertama</p>\r\n\r\n<p>08:00<br />\r\nSnorkeling di spot kedua</p>\r\n\r\n<p>09:00<br />\r\nAgenda bebas dan photo session di dermaga pulau moyo</p>\r\n\r\n<p>10:00<br />\r\nMeninggalkan pulau moyo</p>\r\n\r\n<p>11:00<br />\r\nSampai watudodol dan bilas-bilas</p>\r\n\r\n<p>12:00<br />\r\nMakan siang dan menuju bima</p>\r\n\r\n<p>13:00<br />\r\nSampai di bima,&nbsp;</p>\r\n\r\n<p>14:00<br />\r\nExplore mangrove trail dan pantai pink</p>\r\n\r\n<p>17:00<br />\r\nMeninggalkan bima</p>\r\n\r\n<p>19:00<br />\r\nMakan malam</p>\r\n\r\n<p>20:00<br />\r\nPeserta Open Trip Keliling Sumbawa 3D2N dipersilahkan stirahat untuk persiapan tour ke Mantar</p>\r\n\r\n<p>23:40<br />\r\nPersiapan naik ke Mantar</p>\r\n\r\n<p><br />\r\nDAY 3.<br />\r\n00:00<br />\r\nCheck-out Hotel dan menuju Mantar</p>\r\n\r\n<p>02:00<br />\r\nSampai di paltuding dan tracking&nbsp;</p>\r\n\r\n<p>03:30<br />\r\nSampai di Mantar, bila beruntung bisa menyaksikan blue fire serta sunrise</p>\r\n\r\n<p>08:30<br />\r\nMakan pagi di hotel</p>\r\n\r\n<p>10:00<br />\r\nMengunjungi pusat oleh &ndash; oleh khas Sumbawa(Optional)</p>\r\n\r\n<p>12:00<br />\r\nDiantar ke Stasiun / Bandara / Hotel dan tour berakhir</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2634ab70d2aa0f0702e003dc15da0075.jpg', 10, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembatalan`
--

CREATE TABLE `pembatalan` (
  `id_pembatalan` int(11) NOT NULL,
  `order_id` varchar(15) NOT NULL,
  `id_user` varchar(15) NOT NULL,
  `no_rek` varchar(15) NOT NULL,
  `nama_rekening` varchar(50) NOT NULL,
  `alasan_pembatalan` text NOT NULL,
  `bukti_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembatalan`
--

INSERT INTO `pembatalan` (`id_pembatalan`, `order_id`, `id_user`, `no_rek`, `nama_rekening`, `alasan_pembatalan`, `bukti_pembayaran`) VALUES
(46, 'INV161119000001', '33', '546547577557', 'dimas rifalta', 'karna ada pekerjaan', ''),
(47, 'INV161119000002', '33', '546547577557', 'dimas rifalta', 'Ada keluarga yang sakit', ''),
(48, 'INV221119000001', '33', '546547577557', 'dimas rifalta', 'Ada Urusan Yang sangat Ngenting', ''),
(49, 'INV221119000002', '33', '546547577557', 'dina', 'Ada Urusan Yang sangat Ngenting', ''),
(50, 'INV221119000001', '33', '546547577557', 'dina', 'karna ada pekerjaan', ''),
(51, 'INV131219000004', '51', '546547577557', 'dimas rifalta', 'Ada keluarga yang sakit', ''),
(52, 'INV131219000004', '51', '546547577557', 'dimas rifalta', 'Ada keluarga yang sakit', ''),
(53, 'INV131219000004', '51', '546547577557', 'dimas rifalta', 'Ada keluarga yang sakit', ''),
(54, 'INV131219000004', '51', '546547577557', 'dimas rifalta', 'Ada keluarga yang sakit', ''),
(55, 'INV131219000004', '51', '546547577557', 'dimas rifalta', 'Ada keluarga yang sakit', ''),
(58, 'INV141219000001', '51', '546547577557', 'dimas rifalta', 'karna ada pekerjaan', ''),
(59, 'INV060120000001', '51', '546547577557', 'dimas rifalta', 'Ada Urusan Yang sangat Ngenting', ''),
(62, 'INV150820000001', '65', '546547577557', 'nadya', 'Ada Urusan Yang sangat Ngenting', ''),
(63, 'INV300820000003', '67', '078757575757676', 'Dimas', 'Ada urusan penting', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_bayar` date DEFAULT NULL,
  `metode_id_bayar` int(11) DEFAULT NULL,
  `order_id` varchar(15) DEFAULT NULL,
  `jumlah` double DEFAULT NULL,
  `pengirim` varchar(70) DEFAULT NULL,
  `bukti_transfer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_user`, `tgl_bayar`, `metode_id_bayar`, `order_id`, `jumlah`, `pengirim`, `bukti_transfer`) VALUES
(45, 65, '2020-08-05', 2, 'INV050820000001', 5466688, 'Dimas', 'file_1596601443.jpg'),
(46, 65, '2020-08-05', 2, 'INV050820000001', 59868686, 'Dimas', 'file_1596601740.jpg'),
(47, 65, '2020-08-05', 2, 'INV050820000002', 1418000, 'Dimas', 'file_1596602121.jpg'),
(48, 65, '2020-08-13', 2, 'INV130820000001', 525000, 'dimas rifalta', 'file_1597285098.png'),
(49, 65, '2020-08-13', 5, 'INV130820000002', 4725000, 'Dimas', 'file_1597314763.jpg'),
(50, 65, '2020-08-13', 2, 'INV130820000003', 525000, 'dimas rifalta', 'file_1597320818.png'),
(51, 65, '2020-08-15', 2, 'INV150820000001', 1575000, 'Nadya rahma', 'file_1597487496.png'),
(52, 65, '2020-08-15', 2, 'INV150820000001', 4, 'dimas rifalta', 'file_1597493959.png'),
(53, 65, '2020-08-15', 2, 'INV150820000001', 131, 'dimas rifalta', 'file_1597494016.png'),
(54, 65, '2020-08-15', 2, 'INV150820000001', 324234, 'dimas rifalta', 'file_1597494127.png'),
(55, 65, '2020-08-15', 2, 'INV150820000001', 2323, 'dimas rifalta', 'file_1597494187.png'),
(56, 65, '2020-08-15', 2, 'INV150820000001', 2323, 'dimas rifalta', 'file_1597494597.png'),
(57, 65, '2020-08-15', 2, 'INV150820000001', 235235, 'dimas rifalta', 'file_1597494755.png'),
(58, 67, '2020-08-30', 2, 'INV300820000003', 10000000, 'Dimas', 'file_1598779787.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(8, 'dimas rifalta', 'dimasrifalta9@gmail.com', '0843242323532', 'rgeerherhe', '2019-12-11 09:00:56', 0),
(9, 'dimas rifalta', 'dimasrifalta9@gmail.com', '0843242323532', 'Bdjdjdjd', '2019-12-14 10:50:10', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(1, '2016-08-11 16:52:20', '127.0.0.1', 'Firefox'),
(2, '2016-08-12 10:14:20', '127.0.0.1', 'Firefox'),
(3, '2016-08-12 22:23:19', '127.0.0.1', 'Firefox'),
(4, '2016-08-12 22:27:05', '127.0.0.1', 'Firefox'),
(5, '2016-08-12 22:27:37', '127.0.0.1', 'Firefox'),
(6, '2016-08-12 23:54:58', '127.0.0.1', 'Firefox'),
(7, '2016-08-12 23:55:59', '127.0.0.1', 'Firefox'),
(8, '2016-08-13 00:00:06', '127.0.0.1', 'Firefox'),
(9, '2016-08-13 00:00:34', '127.0.0.1', 'Firefox'),
(10, '2016-09-18 13:24:39', '127.0.0.1', 'Firefox'),
(11, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(12, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(13, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(14, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(15, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(16, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(17, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(18, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(19, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(20, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(21, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(22, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(23, '2016-09-18 13:24:43', '127.0.0.1', 'Firefox'),
(24, '2017-02-04 11:06:52', '::1', 'Chrome'),
(25, '2017-02-04 11:07:16', '127.0.0.1', 'Firefox'),
(26, '2017-02-04 11:08:31', '::1', 'Chrome'),
(27, '2017-02-05 12:33:14', '::1', 'Chrome'),
(28, '2017-02-05 13:20:59', '127.0.0.1', 'Firefox'),
(29, '2017-02-06 11:21:08', '::1', 'Chrome'),
(30, '2017-02-08 18:07:51', '::1', 'Chrome'),
(31, '2017-02-10 13:12:05', '::1', 'Chrome'),
(32, '2017-02-20 13:46:21', '::1', 'Chrome'),
(33, '2017-02-21 21:04:16', '::1', 'Chrome'),
(34, '2017-02-27 11:47:25', '::1', 'Chrome'),
(35, '2017-03-01 23:09:25', '::1', 'Chrome'),
(36, '2017-03-04 01:18:51', '::1', 'Chrome'),
(37, '2017-03-12 13:40:32', '::1', 'Chrome'),
(38, '2017-03-13 13:34:32', '::1', 'Chrome'),
(39, '2017-03-22 21:08:15', '::1', 'Firefox'),
(40, '2017-03-25 02:39:02', '::1', 'Firefox'),
(41, '2017-03-25 03:16:45', '::1', 'Firefox'),
(42, '2017-03-28 07:11:23', '::1', 'Firefox'),
(43, '2017-03-29 15:39:17', '::1', 'Firefox'),
(44, '2017-03-30 03:52:11', '::1', 'Firefox'),
(45, '2017-03-31 15:48:46', '::1', 'Firefox'),
(46, '2017-04-06 15:33:58', '::1', 'Firefox'),
(47, '2017-04-07 17:25:37', '::1', 'Firefox'),
(48, '2017-04-08 03:00:14', '::1', 'Firefox'),
(49, '2017-04-09 03:06:03', '::1', 'Firefox'),
(50, '2017-04-10 05:20:50', '::1', 'Firefox'),
(51, '2017-04-11 04:46:50', '117.102.64.98', 'Chrome'),
(52, '2017-04-11 04:46:57', '125.165.129.35', 'Firefox'),
(53, '2017-04-11 05:52:18', '69.171.225.46', 'Other'),
(54, '2017-04-11 05:54:33', '69.171.225.12', 'Other'),
(55, '2017-04-11 05:55:04', '69.171.225.21', 'Other'),
(56, '2017-04-11 05:55:18', '69.171.225.18', 'Other'),
(57, '2017-04-11 06:03:44', '36.83.246.250', 'Chrome'),
(58, '2017-04-11 06:05:55', '202.62.17.121', 'Chrome'),
(59, '2017-04-11 06:06:45', '106.187.46.205', 'Chrome'),
(60, '2017-04-11 06:06:47', '173.252.98.28', 'Other'),
(61, '2017-04-11 06:10:36', '107.167.103.241', 'Opera'),
(62, '2017-04-11 06:16:14', '202.67.41.244', 'Chrome'),
(63, '2017-04-11 06:18:24', '36.72.192.194', 'Chrome'),
(64, '2017-04-11 06:19:40', '112.215.175.62', 'Chrome'),
(65, '2017-04-11 06:20:09', '173.252.102.112', 'Other'),
(66, '2017-04-11 06:20:17', '112.215.154.56', 'Firefox'),
(67, '2017-04-11 06:20:26', '158.140.170.23', 'Chrome'),
(68, '2017-04-11 06:22:33', '36.81.37.52', 'Chrome'),
(69, '2017-04-11 06:23:14', '120.188.65.243', 'Chrome'),
(70, '2017-04-11 06:26:16', '124.153.33.11', 'Chrome'),
(71, '2017-04-11 06:26:21', '112.215.172.240', 'Chrome'),
(72, '2017-04-11 06:27:34', '132.255.240.27', 'Chrome'),
(73, '2017-04-11 06:28:22', '103.213.131.147', 'Chrome'),
(74, '2017-04-11 06:29:38', '36.84.225.114', 'Chrome'),
(75, '2017-04-11 06:29:45', '180.253.158.87', 'Chrome'),
(76, '2017-04-11 06:33:35', '173.252.84.52', 'Other'),
(77, '2017-04-11 06:34:51', '202.67.35.20', 'Chrome'),
(78, '2017-04-11 06:37:02', '202.67.40.210', 'Chrome'),
(79, '2017-04-11 06:39:43', '120.188.76.26', 'Chrome'),
(80, '2017-04-11 06:41:05', '173.252.123.186', 'Other'),
(81, '2017-04-11 06:45:29', '110.139.8.41', 'Mozilla'),
(82, '2017-04-11 06:53:12', '202.80.216.219', 'Chrome'),
(83, '2017-04-11 06:55:16', '223.255.230.13', 'Safari'),
(84, '2017-04-11 06:55:38', '36.78.69.101', 'Chrome'),
(85, '2017-04-11 07:02:53', '180.251.173.137', 'Chrome'),
(86, '2017-04-11 07:03:05', '125.161.185.216', 'Chrome'),
(87, '2017-04-11 07:16:22', '139.192.226.49', 'Chrome'),
(88, '2017-04-11 07:18:10', '107.167.112.88', 'Opera'),
(89, '2017-04-11 07:18:13', '180.247.26.15', 'Chrome'),
(90, '2017-04-11 07:20:04', '204.44.65.210', 'Internet Explorer'),
(91, '2017-04-11 07:22:58', '36.78.96.198', 'Chrome'),
(92, '2017-04-11 07:23:40', '138.197.192.28', 'Chrome'),
(93, '2017-04-11 07:24:07', '112.215.151.61', 'Chrome'),
(94, '2017-04-11 07:25:46', '202.51.104.154', 'Chrome'),
(95, '2017-04-11 07:32:42', '202.67.44.7', 'Firefox'),
(96, '2017-04-11 07:36:53', '118.136.122.84', 'Chrome'),
(97, '2017-04-11 07:39:25', '61.247.21.51', 'Chrome'),
(98, '2017-04-11 07:41:38', '114.124.180.250', 'Chrome'),
(99, '2017-04-11 07:41:55', '120.188.64.226', 'Chrome'),
(100, '2017-04-11 07:43:14', '180.247.204.243', 'Chrome'),
(101, '2017-04-11 07:44:48', '125.161.179.203', 'Chrome'),
(102, '2017-04-11 07:46:06', '114.125.55.58', 'Chrome'),
(103, '2017-04-11 07:50:14', '158.140.182.11', 'Chrome'),
(104, '2017-04-11 07:54:09', '202.67.33.22', 'Chrome'),
(105, '2017-04-11 07:58:44', '120.188.65.30', 'Chrome'),
(106, '2017-04-11 07:59:55', '120.188.77.153', 'Chrome'),
(107, '2017-04-11 08:02:32', '125.167.185.147', 'Mozilla'),
(108, '2017-04-11 08:04:23', '118.136.84.45', 'Chrome'),
(109, '2017-04-11 08:04:41', '110.136.129.138', 'Chrome'),
(110, '2017-04-11 08:04:52', '36.75.108.223', 'Chrome'),
(111, '2017-04-11 08:05:46', '36.72.38.146', 'Chrome'),
(112, '2017-04-11 08:06:31', '120.188.5.85', 'Chrome'),
(113, '2017-04-11 08:09:53', '180.253.90.210', 'Chrome'),
(114, '2017-04-11 08:12:18', '107.167.99.179', 'Opera'),
(115, '2017-04-11 08:12:49', '112.215.171.165', 'Chrome'),
(116, '2017-04-11 08:14:55', '203.166.201.206', 'Chrome'),
(117, '2017-04-11 08:15:21', '107.167.99.208', 'Opera'),
(118, '2017-04-11 08:15:25', '36.73.194.145', 'Mozilla'),
(119, '2017-04-11 08:16:25', '107.167.113.164', 'Opera'),
(120, '2017-04-11 08:16:42', '120.92.32.177', 'Chrome'),
(121, '2017-04-11 08:17:23', '180.245.132.122', 'Chrome'),
(122, '2017-04-11 08:17:56', '120.188.80.236', 'Chrome'),
(123, '2017-04-11 08:17:57', '114.125.89.57', 'Chrome'),
(124, '2017-04-11 08:18:01', '139.0.186.187', 'Chrome'),
(125, '2017-04-11 08:18:25', '125.166.215.131', 'Chrome'),
(126, '2017-04-11 08:18:29', '120.188.6.216', 'Mozilla'),
(127, '2017-04-11 08:19:06', '125.161.98.148', 'Chrome'),
(128, '2017-04-11 08:20:10', '36.73.9.148', 'Chrome'),
(129, '2017-04-11 08:20:15', '114.125.182.65', 'Chrome'),
(130, '2017-04-11 08:21:07', '114.125.40.100', 'Chrome'),
(131, '2017-04-11 08:21:45', '120.188.86.219', 'Chrome'),
(132, '2017-04-11 08:22:35', '118.136.103.194', 'Mozilla'),
(133, '2017-04-11 08:23:47', '36.81.10.230', 'Chrome'),
(134, '2017-04-11 08:23:47', '114.125.164.4', 'Chrome'),
(135, '2017-04-11 08:24:28', '107.167.112.218', 'Chrome'),
(136, '2017-04-11 08:24:50', '107.167.98.132', 'Opera'),
(137, '2017-04-11 08:25:44', '180.246.19.210', 'Chrome'),
(138, '2017-04-11 08:26:12', '120.188.1.85', 'Chrome'),
(139, '2017-04-11 08:27:50', '139.195.66.235', 'Chrome'),
(140, '2017-04-11 08:28:06', '115.178.198.211', 'Chrome'),
(141, '2017-04-11 08:28:17', '115.178.235.88', 'Chrome'),
(142, '2017-04-11 08:28:49', '36.84.87.138', 'Mozilla'),
(143, '2017-04-11 08:29:05', '114.121.232.136', 'Chrome'),
(144, '2017-04-11 08:29:23', '118.96.227.216', 'Chrome'),
(145, '2017-04-11 08:29:45', '36.68.184.231', 'Mozilla'),
(146, '2017-04-11 08:30:18', '120.188.3.198', 'Chrome'),
(147, '2017-04-11 08:32:44', '61.94.133.70', 'Chrome'),
(148, '2017-04-11 08:32:44', '8.37.235.44', 'Safari'),
(149, '2017-04-11 08:33:19', '110.136.254.232', 'Chrome'),
(150, '2017-04-11 08:34:17', '36.83.28.90', 'Chrome'),
(151, '2017-04-11 08:34:25', '120.188.80.239', 'Chrome'),
(152, '2017-04-11 08:34:50', '114.125.72.8', 'Chrome'),
(153, '2017-04-11 08:34:59', '180.247.33.166', 'Safari'),
(154, '2017-04-11 08:35:10', '180.214.232.22', 'Chrome'),
(155, '2017-04-11 08:35:47', '61.5.92.125', 'Chrome'),
(156, '2017-04-11 08:36:22', '36.69.222.51', 'Chrome'),
(157, '2017-04-11 08:36:24', '182.253.139.130', 'Chrome'),
(158, '2017-04-11 08:36:36', '120.188.86.170', 'Chrome'),
(159, '2017-04-11 08:36:56', '139.228.97.115', 'Chrome'),
(160, '2017-04-11 08:37:18', '36.67.61.15', 'Chrome'),
(161, '2017-04-11 08:37:20', '114.4.78.184', 'Chrome'),
(162, '2017-04-11 08:38:09', '202.67.40.221', 'Chrome'),
(163, '2017-04-11 08:39:03', '112.215.172.66', 'Chrome'),
(164, '2017-04-11 08:39:11', '36.74.207.97', 'Chrome'),
(165, '2017-04-11 08:39:36', '64.233.173.4', 'Chrome'),
(166, '2017-04-11 08:40:07', '36.84.136.234', 'Chrome'),
(167, '2017-04-11 08:41:24', '202.62.16.49', 'Chrome'),
(168, '2017-04-11 08:41:28', '125.167.120.95', 'Chrome'),
(169, '2017-04-11 08:41:46', '168.235.207.168', 'Firefox'),
(170, '2017-04-11 08:41:52', '120.188.64.235', 'Chrome'),
(171, '2017-04-11 08:42:10', '120.188.81.204', 'Chrome'),
(172, '2017-04-11 08:42:26', '125.162.245.169', 'Chrome'),
(173, '2017-04-11 08:43:20', '180.242.10.170', 'Chrome'),
(174, '2017-04-11 08:44:03', '64.233.173.6', 'Chrome'),
(175, '2017-04-11 08:44:11', '112.215.174.87', 'Chrome'),
(176, '2017-04-11 08:44:37', '36.71.46.157', 'Chrome'),
(177, '2017-04-11 08:45:07', '103.56.235.74', 'Chrome'),
(178, '2017-04-11 08:45:18', '120.188.66.124', 'Chrome'),
(179, '2017-04-11 08:45:25', '69.171.225.33', 'Other'),
(180, '2017-04-11 08:46:14', '114.125.202.40', 'Chrome'),
(181, '2017-04-11 08:46:45', '120.188.87.93', 'Chrome'),
(182, '2017-04-11 08:46:46', '118.136.85.176', 'Chrome'),
(183, '2017-04-11 08:46:51', '64.233.173.8', 'Chrome'),
(184, '2017-04-11 08:47:32', '36.79.200.132', 'Chrome'),
(185, '2017-04-11 08:48:01', '120.188.35.53', 'Chrome'),
(186, '2017-04-11 08:49:39', '110.138.153.190', 'Chrome'),
(187, '2017-04-11 08:49:44', '114.125.73.228', 'Chrome'),
(188, '2017-04-11 08:49:52', '36.81.119.196', 'Chrome'),
(189, '2017-04-11 08:50:22', '120.188.65.140', 'Chrome'),
(190, '2017-04-11 08:51:05', '125.161.188.27', 'Chrome'),
(191, '2017-04-11 08:51:23', '124.40.251.74', 'Firefox'),
(192, '2017-04-11 08:51:31', '139.228.108.66', 'Chrome'),
(193, '2017-04-11 08:51:33', '180.254.57.164', 'Chrome'),
(194, '2017-04-11 08:53:07', '180.247.95.40', 'Chrome'),
(195, '2017-04-11 08:53:20', '103.205.56.66', 'Chrome'),
(196, '2017-04-11 08:53:20', '103.56.232.196', 'Chrome'),
(197, '2017-04-11 08:53:52', '180.241.167.242', 'Chrome'),
(198, '2017-04-11 08:53:54', '112.215.171.106', 'Chrome'),
(199, '2017-04-11 08:55:12', '114.125.214.65', 'Chrome'),
(200, '2017-04-11 08:55:40', '36.71.48.50', 'Firefox'),
(201, '2017-04-11 08:57:12', '103.9.227.1', 'Chrome'),
(202, '2017-04-11 08:57:16', '202.62.17.134', 'Chrome'),
(203, '2017-04-11 08:57:40', '36.74.110.84', 'Chrome'),
(204, '2017-04-11 08:57:54', '112.215.173.135', 'Chrome'),
(205, '2017-04-11 08:58:17', '36.80.43.86', 'Chrome'),
(206, '2017-04-11 08:59:04', '45.76.207.98', 'Chrome'),
(207, '2017-04-11 08:59:23', '180.214.233.30', 'Chrome'),
(208, '2017-04-11 08:59:28', '36.78.97.242', 'Mozilla'),
(209, '2017-04-11 08:59:58', '61.94.220.130', 'Chrome'),
(210, '2017-04-11 09:00:03', '8.37.230.63', 'Safari'),
(211, '2017-04-11 09:00:20', '125.162.99.169', 'Chrome'),
(212, '2017-04-11 09:00:31', '223.255.227.25', 'Chrome'),
(213, '2017-04-11 09:01:07', '114.121.244.144', 'Chrome'),
(214, '2017-04-11 09:01:24', '114.125.214.143', 'Chrome'),
(215, '2017-04-11 09:01:43', '8.37.235.230', 'Safari'),
(216, '2017-04-11 09:01:49', '120.188.86.129', 'Chrome'),
(217, '2017-04-11 09:02:10', '120.188.74.41', 'Chrome'),
(218, '2017-04-11 09:02:25', '115.178.239.193', 'Chrome'),
(219, '2017-04-11 09:02:49', '202.67.46.8', 'Chrome'),
(220, '2017-04-11 09:02:56', '36.80.211.28', 'Chrome'),
(221, '2017-04-11 09:03:54', '139.195.162.58', 'Chrome'),
(222, '2017-04-11 09:04:16', '202.154.180.10', 'Chrome'),
(223, '2017-04-11 09:04:34', '114.125.184.7', 'Chrome'),
(224, '2017-04-11 09:05:01', '120.188.85.253', 'Chrome'),
(225, '2017-04-11 09:05:32', '139.195.209.21', 'Chrome'),
(226, '2017-04-11 09:05:57', '120.188.33.114', 'Chrome'),
(227, '2017-04-11 09:06:03', '8.37.233.52', 'Safari'),
(228, '2017-04-11 09:06:09', '36.79.130.99', 'Chrome'),
(229, '2017-04-11 09:06:21', '36.74.24.2', 'Chrome'),
(230, '2017-04-11 09:06:43', '114.125.186.131', 'Chrome'),
(231, '2017-04-11 09:06:45', '202.62.17.197', 'Chrome'),
(232, '2017-04-11 09:07:31', '118.96.232.253', 'Chrome'),
(233, '2017-04-11 09:08:05', '36.79.188.51', 'Chrome'),
(234, '2017-04-11 09:08:13', '36.74.122.45', 'Chrome'),
(235, '2017-04-11 09:08:23', '36.84.110.69', 'Chrome'),
(236, '2017-04-11 09:08:23', '112.215.172.153', 'Chrome'),
(237, '2017-04-11 09:08:37', '36.82.30.206', 'Chrome'),
(238, '2017-04-11 09:09:03', '180.214.232.2', 'Chrome'),
(239, '2017-04-11 09:09:38', '107.167.112.128', 'Opera'),
(240, '2017-04-11 09:09:40', '36.70.178.105', 'Chrome'),
(241, '2017-04-11 09:09:55', '139.195.130.19', 'Chrome'),
(242, '2017-04-11 09:10:31', '114.125.57.214', 'Chrome'),
(243, '2017-04-11 09:10:41', '120.188.85.184', 'Chrome'),
(244, '2017-04-11 09:10:52', '125.163.107.41', 'Firefox'),
(245, '2017-04-11 09:11:15', '114.125.41.144', 'Chrome'),
(246, '2017-04-11 09:11:21', '61.94.103.59', 'Chrome'),
(247, '2017-04-11 09:12:08', '36.76.30.210', 'Chrome'),
(248, '2017-04-11 09:12:26', '36.73.134.193', 'Chrome'),
(249, '2017-04-11 09:12:31', '112.215.173.16', 'Chrome'),
(250, '2017-04-11 09:13:18', '120.188.92.195', 'Chrome'),
(251, '2017-04-11 09:13:20', '125.163.92.209', 'Chrome'),
(252, '2017-04-11 09:14:19', '182.253.142.24', 'Chrome'),
(253, '2017-04-11 09:14:28', '120.188.86.148', 'Chrome'),
(254, '2017-04-11 09:14:56', '182.253.163.61', 'Chrome'),
(255, '2017-04-11 09:16:02', '36.74.148.31', 'Chrome'),
(256, '2017-04-11 09:16:57', '8.37.233.156', 'Safari'),
(257, '2017-04-11 09:17:04', '114.125.56.121', 'Firefox'),
(258, '2017-04-11 09:17:12', '158.140.165.20', 'Chrome'),
(259, '2017-04-11 09:17:17', '125.164.97.226', 'Chrome'),
(260, '2017-04-11 09:17:18', '120.188.92.249', 'Chrome'),
(261, '2017-04-11 09:17:26', '118.137.208.31', 'Chrome'),
(262, '2017-04-11 09:17:30', '180.244.71.107', 'Chrome'),
(263, '2017-04-11 09:17:37', '120.188.87.220', 'Chrome'),
(264, '2017-04-11 09:17:57', '112.215.172.199', 'Safari'),
(265, '2017-04-11 09:18:23', '110.138.44.236', 'Chrome'),
(266, '2017-04-11 09:18:35', '168.235.195.254', 'Safari'),
(267, '2017-04-11 09:18:40', '180.245.98.188', 'Chrome'),
(268, '2017-04-11 09:18:58', '114.125.183.102', 'Chrome'),
(269, '2017-04-11 09:19:18', '125.164.38.13', 'Chrome'),
(270, '2017-04-11 09:19:27', '114.121.239.102', 'Chrome'),
(271, '2017-04-11 09:20:03', '168.235.206.137', 'Safari'),
(272, '2017-04-11 09:20:32', '202.80.213.87', 'Chrome'),
(273, '2017-04-11 09:21:18', '180.246.73.3', 'Chrome'),
(274, '2017-04-11 09:22:02', '36.75.32.145', 'Mozilla'),
(275, '2017-04-11 09:22:04', '112.215.154.115', 'Chrome'),
(276, '2017-04-11 09:22:09', '36.73.96.185', 'Mozilla'),
(277, '2017-04-11 09:22:38', '8.37.232.215', 'Safari'),
(278, '2017-04-11 09:22:53', '36.68.233.0', 'Chrome'),
(279, '2017-04-11 09:23:08', '36.84.224.73', 'Chrome'),
(280, '2017-04-11 09:23:29', '66.220.151.86', 'Other'),
(281, '2017-04-11 09:24:01', '120.188.75.121', 'Chrome'),
(282, '2017-04-11 09:24:19', '207.241.226.233', 'Mozilla'),
(283, '2017-04-11 09:24:35', '36.73.181.116', 'Chrome'),
(284, '2017-04-11 09:25:38', '198.186.192.44', 'Other'),
(285, '2017-04-11 09:25:56', '114.4.78.117', 'Chrome'),
(286, '2017-04-11 09:26:38', '36.72.95.85', 'Firefox'),
(287, '2017-04-11 09:27:26', '120.188.81.107', 'Chrome'),
(288, '2017-04-11 09:28:19', '114.124.149.112', 'Chrome'),
(289, '2017-04-11 09:28:29', '114.125.205.41', 'Chrome'),
(290, '2017-04-11 09:28:54', '125.163.78.202', 'Chrome'),
(291, '2017-04-11 09:29:17', '114.125.52.130', 'Firefox'),
(292, '2017-04-11 09:29:45', '114.4.78.150', 'Chrome'),
(293, '2017-04-11 09:29:47', '114.121.156.129', 'Chrome'),
(294, '2017-04-11 09:29:51', '112.215.172.8', 'Chrome'),
(295, '2017-04-11 09:30:30', '114.125.166.163', 'Chrome'),
(296, '2017-04-11 09:30:35', '139.195.187.141', 'Chrome'),
(297, '2017-04-11 09:30:53', '36.72.21.12', 'Chrome'),
(298, '2017-04-11 09:32:34', '8.37.225.108', 'Firefox'),
(299, '2017-04-11 09:32:39', '180.248.6.118', 'Chrome'),
(300, '2017-04-11 09:33:44', '8.37.233.95', 'Safari'),
(301, '2017-04-11 09:34:16', '120.188.80.6', 'Safari'),
(302, '2017-04-11 09:34:52', '211.227.156.112', 'Chrome'),
(303, '2017-04-11 09:34:54', '125.167.187.126', 'Chrome'),
(304, '2017-04-11 09:35:32', '107.167.112.72', 'Chrome'),
(305, '2017-04-11 09:35:57', '112.215.152.98', 'Mozilla'),
(306, '2017-04-11 09:36:06', '180.251.167.150', 'Chrome'),
(307, '2017-04-11 09:36:27', '36.82.76.215', 'Chrome'),
(308, '2017-04-11 09:37:45', '168.235.206.238', 'Safari'),
(309, '2017-04-11 09:38:09', '124.153.33.39', 'Chrome'),
(310, '2017-04-11 09:38:39', '168.235.197.19', 'Firefox'),
(311, '2017-04-11 09:38:44', '36.73.87.46', 'Chrome'),
(312, '2017-04-11 09:38:45', '188.166.218.174', 'Firefox'),
(313, '2017-04-11 09:39:03', '36.78.54.201', 'Firefox'),
(314, '2017-04-11 09:39:24', '139.228.95.10', 'Chrome'),
(315, '2017-04-11 09:39:24', '120.188.80.114', 'Chrome'),
(316, '2017-04-11 09:39:35', '182.253.203.58', 'Chrome'),
(317, '2017-04-11 09:39:54', '36.78.66.34', 'Chrome'),
(318, '2017-04-11 09:40:56', '120.188.79.185', 'Mozilla'),
(319, '2017-04-11 09:41:35', '118.96.235.203', 'Chrome'),
(320, '2017-04-11 09:41:44', '180.253.236.103', 'Chrome'),
(321, '2017-04-11 09:43:18', '125.161.188.207', 'Chrome'),
(322, '2017-04-11 09:44:08', '36.66.72.178', 'Chrome'),
(323, '2017-04-11 09:44:16', '36.84.13.131', 'Chrome'),
(324, '2017-04-11 09:44:46', '112.215.45.240', 'Firefox'),
(325, '2017-04-11 09:45:01', '49.182.76.246', 'Chrome'),
(326, '2017-04-11 09:45:09', '180.247.77.200', 'Chrome'),
(327, '2017-04-11 09:45:19', '36.88.158.84', 'Chrome'),
(328, '2017-04-11 09:45:38', '202.62.17.12', 'Chrome'),
(329, '2017-04-11 09:46:05', '182.253.163.51', 'Firefox'),
(330, '2017-04-11 09:46:11', '139.195.94.117', 'Chrome'),
(331, '2017-04-11 09:46:41', '114.4.83.68', 'Chrome'),
(332, '2017-04-11 09:47:30', '114.125.37.46', 'Safari'),
(333, '2017-04-11 09:47:32', '173.252.74.105', 'Other'),
(334, '2017-04-11 09:49:04', '112.215.200.30', 'Chrome'),
(335, '2017-04-11 09:50:22', '120.188.81.20', 'Chrome'),
(336, '2017-04-11 09:50:32', '120.188.33.140', 'Chrome'),
(337, '2017-04-11 09:51:06', '114.4.79.120', 'Chrome'),
(338, '2017-04-11 09:51:27', '139.194.221.74', 'Chrome'),
(339, '2017-04-11 09:51:29', '120.188.87.99', 'Firefox'),
(340, '2017-04-11 09:51:48', '36.73.62.30', 'Chrome'),
(341, '2017-04-11 09:51:53', '112.215.45.120', 'Firefox'),
(342, '2017-04-11 09:51:54', '112.215.153.184', 'Safari'),
(343, '2017-04-11 09:51:59', '36.78.67.111', 'Chrome'),
(344, '2017-04-11 09:52:31', '120.188.80.165', 'Chrome'),
(345, '2017-04-11 09:52:37', '61.94.100.166', 'Chrome'),
(346, '2017-04-11 09:52:48', '180.252.168.2', 'Chrome'),
(347, '2017-04-11 09:52:50', '36.84.64.22', 'Chrome'),
(348, '2017-04-11 09:52:56', '198.144.107.187', 'Chrome'),
(349, '2017-04-11 09:53:42', '120.188.80.158', 'Chrome'),
(350, '2017-04-11 09:54:47', '180.244.55.126', 'Chrome'),
(351, '2017-04-11 09:55:18', '107.167.112.118', 'Opera'),
(352, '2017-04-11 09:55:43', '36.73.63.156', 'Chrome'),
(353, '2017-04-11 09:56:44', '125.167.92.123', 'Safari'),
(354, '2017-04-11 09:58:15', '180.247.136.78', 'Chrome'),
(355, '2017-04-11 09:59:23', '114.124.148.228', 'Chrome'),
(356, '2017-04-11 09:59:44', '120.188.80.220', 'Chrome'),
(357, '2017-04-11 09:59:50', '180.248.179.126', 'Chrome'),
(358, '2017-04-11 10:00:03', '36.78.194.86', 'Chrome'),
(359, '2017-04-11 10:00:12', '202.67.46.46', 'Chrome'),
(360, '2017-04-11 10:00:34', '113.210.202.42', 'Chrome'),
(361, '2017-04-11 10:01:47', '114.120.233.30', 'Chrome'),
(362, '2017-04-11 10:02:34', '202.182.55.230', 'Chrome'),
(363, '2017-04-11 10:02:44', '180.244.73.72', 'Chrome'),
(364, '2017-04-11 10:03:16', '49.213.16.227', 'Chrome'),
(365, '2017-04-11 10:04:03', '36.73.177.201', 'Chrome'),
(366, '2017-04-11 10:04:12', '112.215.152.124', 'Chrome'),
(367, '2017-04-11 10:08:38', '120.188.0.47', 'Chrome'),
(368, '2017-04-11 10:09:43', '36.84.58.187', 'Chrome'),
(369, '2017-04-11 10:12:18', '111.94.229.133', 'Chrome'),
(370, '2017-04-11 10:12:31', '118.136.18.255', 'Chrome'),
(371, '2017-04-11 10:13:11', '36.74.212.125', 'Chrome'),
(372, '2017-04-11 10:13:20', '103.206.245.142', 'Chrome'),
(373, '2017-04-11 10:14:21', '36.71.129.27', 'Chrome'),
(374, '2017-04-11 10:18:44', '180.252.123.165', 'Chrome'),
(375, '2017-04-11 10:19:01', '180.253.138.223', 'Chrome'),
(376, '2017-04-11 10:19:11', '66.249.79.83', 'Googlebot'),
(377, '2017-04-11 10:19:27', '36.80.242.230', 'Chrome'),
(378, '2017-04-11 10:19:54', '223.255.231.154', 'Chrome'),
(379, '2017-04-11 10:19:55', '114.125.200.74', 'Chrome'),
(380, '2017-04-11 10:21:24', '66.249.79.78', 'Googlebot'),
(381, '2017-04-11 10:21:45', '114.4.83.180', 'Mozilla'),
(382, '2017-04-11 10:23:55', '139.192.11.235', 'Chrome'),
(383, '2017-04-11 10:24:10', '125.160.66.244', 'Firefox'),
(384, '2017-04-11 10:24:17', '112.215.170.139', 'Chrome'),
(385, '2017-04-11 10:25:01', '112.215.153.158', 'Safari'),
(386, '2017-04-11 10:25:29', '110.139.187.176', 'Chrome'),
(387, '2017-04-11 10:25:38', '111.94.122.151', 'Chrome'),
(388, '2017-04-11 10:25:46', '112.215.153.252', 'Chrome'),
(389, '2017-04-11 10:27:24', '112.215.170.48', 'Chrome'),
(390, '2017-04-11 10:28:36', '125.160.51.241', 'Chrome'),
(391, '2017-04-11 10:29:53', '66.249.79.85', 'Googlebot'),
(392, '2017-04-11 10:30:04', '120.188.83.178', 'Chrome'),
(393, '2017-04-11 10:30:26', '112.215.170.170', 'Chrome'),
(394, '2017-04-11 10:30:27', '139.228.17.159', 'Chrome'),
(395, '2017-04-11 10:30:32', '107.167.112.5', 'Opera'),
(396, '2017-04-11 10:31:33', '180.249.17.245', 'Chrome'),
(397, '2017-04-11 10:31:38', '182.253.163.14', 'Chrome'),
(398, '2017-04-11 10:32:08', '202.80.215.217', 'Chrome'),
(399, '2017-04-11 10:32:45', '120.188.95.126', 'Chrome'),
(400, '2017-04-11 10:32:55', '118.136.247.154', 'Firefox'),
(401, '2017-04-11 10:33:04', '66.102.6.211', 'Chrome'),
(402, '2017-04-11 10:33:04', '66.102.6.207', 'Chrome'),
(403, '2017-04-11 10:33:05', '66.102.6.209', 'Chrome'),
(404, '2017-04-11 10:34:10', '36.84.9.122', 'Firefox'),
(405, '2017-04-11 10:34:34', '120.188.94.195', 'Chrome'),
(406, '2017-04-11 10:34:55', '36.84.2.91', 'Chrome'),
(407, '2017-04-11 10:35:12', '125.164.16.170', 'Chrome'),
(408, '2017-04-11 10:35:35', '125.164.15.224', 'Chrome'),
(409, '2017-04-11 10:36:04', '114.125.70.243', 'Chrome'),
(410, '2017-04-11 10:36:29', '180.241.222.250', 'Chrome'),
(411, '2017-04-11 10:36:55', '112.215.44.57', 'Safari'),
(412, '2017-04-11 10:39:53', '114.4.82.125', 'Chrome'),
(413, '2017-04-11 10:39:58', '120.188.5.175', 'Chrome'),
(414, '2017-04-11 10:40:27', '103.233.157.202', 'Chrome'),
(415, '2017-04-11 10:44:13', '37.34.62.205', 'Other'),
(416, '2017-04-11 10:45:37', '120.188.32.191', 'Chrome'),
(417, '2017-04-11 10:46:53', '168.235.198.107', 'Safari'),
(418, '2017-04-11 10:47:00', '36.84.0.75', 'Chrome'),
(419, '2017-04-11 10:47:43', '182.253.163.7', 'Chrome'),
(420, '2017-04-11 10:47:49', '36.68.52.209', 'Safari'),
(421, '2017-04-11 10:48:03', '103.47.132.52', 'Chrome'),
(422, '2017-04-11 10:49:58', '36.66.211.11', 'Chrome'),
(423, '2017-04-11 10:50:12', '112.215.171.166', 'Chrome'),
(424, '2017-04-11 10:51:49', '103.4.167.243', 'Chrome'),
(425, '2017-04-11 10:51:51', '120.188.85.6', 'Chrome'),
(426, '2017-04-11 10:52:02', '120.188.81.83', 'Chrome'),
(427, '2017-04-11 10:52:52', '120.188.83.233', 'Chrome'),
(428, '2017-04-11 10:53:37', '125.165.48.195', 'Firefox'),
(429, '2017-04-11 10:54:20', '203.130.236.249', 'Chrome'),
(430, '2017-04-11 10:54:28', '115.178.238.196', 'Mozilla'),
(431, '2017-04-11 10:54:49', '202.179.189.74', 'Mozilla'),
(432, '2017-04-11 10:56:50', '182.253.62.114', 'Chrome'),
(433, '2017-04-11 10:57:37', '112.215.154.28', 'Chrome'),
(434, '2017-04-11 10:57:53', '110.137.169.204', 'Chrome'),
(435, '2017-04-11 10:57:56', '223.255.227.26', 'Chrome'),
(436, '2017-04-11 10:58:01', '112.215.63.20', 'Chrome'),
(437, '2017-04-11 10:58:46', '139.194.53.216', 'Chrome'),
(438, '2017-04-11 10:59:15', '27.50.17.11', 'Chrome'),
(439, '2017-04-11 10:59:34', '182.253.163.50', 'Firefox'),
(440, '2017-04-11 10:59:47', '36.76.123.254', 'Chrome'),
(441, '2017-04-11 11:00:20', '103.47.132.22', 'Chrome'),
(442, '2017-04-11 11:00:30', '8.37.233.83', 'Safari'),
(443, '2017-04-11 11:00:46', '114.125.180.165', 'Chrome'),
(444, '2017-04-11 11:01:39', '180.252.143.230', 'Chrome'),
(445, '2017-04-11 11:01:45', '163.53.185.146', 'Chrome'),
(446, '2017-04-11 11:02:33', '114.125.207.121', 'Chrome'),
(447, '2017-04-11 11:02:40', '36.72.9.120', 'Chrome'),
(448, '2017-04-11 11:04:44', '61.5.60.185', 'Chrome'),
(449, '2017-04-11 11:04:46', '36.80.153.97', 'Chrome'),
(450, '2017-04-11 11:05:41', '180.252.239.223', 'Chrome'),
(451, '2017-04-11 11:07:10', '120.188.33.120', 'Chrome'),
(452, '2017-04-11 11:07:10', '118.97.50.22', 'Chrome'),
(453, '2017-04-11 11:08:05', '118.97.50.23', 'Chrome'),
(454, '2017-04-11 11:09:09', '36.84.229.118', 'Chrome'),
(455, '2017-04-11 11:09:12', '114.125.11.225', 'Chrome'),
(456, '2017-04-11 11:09:49', '182.23.59.66', 'Firefox'),
(457, '2017-04-11 11:10:16', '118.97.50.24', 'Chrome'),
(458, '2017-04-11 11:10:59', '175.111.91.19', 'Firefox'),
(459, '2017-04-11 11:11:01', '121.101.131.66', 'Chrome'),
(460, '2017-04-11 11:11:16', '2.235.170.197', 'Chrome'),
(461, '2017-04-11 11:11:43', '180.247.185.142', 'Chrome'),
(462, '2017-04-11 11:12:38', '36.80.179.43', 'Firefox'),
(463, '2017-04-11 11:12:53', '36.75.240.166', 'Chrome'),
(464, '2017-04-11 11:13:31', '118.97.241.130', 'Chrome'),
(465, '2017-04-11 11:13:31', '101.128.85.22', 'Chrome'),
(466, '2017-04-11 11:13:48', '182.253.122.110', 'Chrome'),
(467, '2017-04-11 11:14:31', '120.188.65.57', 'Chrome'),
(468, '2017-04-11 11:14:38', '115.164.60.248', 'Chrome'),
(469, '2017-04-11 11:14:42', '180.250.206.226', 'Chrome'),
(470, '2017-04-11 11:15:06', '125.165.103.49', 'Chrome'),
(471, '2017-04-11 11:15:25', '104.237.243.90', 'Firefox'),
(472, '2017-04-11 11:15:30', '180.254.241.158', 'Chrome'),
(473, '2017-04-11 11:15:50', '36.85.5.162', 'Chrome'),
(474, '2017-04-11 11:15:56', '120.188.67.11', 'Chrome'),
(475, '2017-04-11 11:15:58', '38.80.23.2', 'Firefox'),
(476, '2017-04-11 11:16:01', '61.94.194.3', 'Chrome'),
(477, '2017-04-11 11:16:02', '222.124.22.228', 'Chrome'),
(478, '2017-04-11 11:16:07', '180.178.93.249', 'Chrome'),
(479, '2017-04-11 11:16:32', '36.80.213.229', 'Chrome'),
(480, '2017-04-11 11:17:27', '175.184.250.82', 'Chrome'),
(481, '2017-04-11 11:17:56', '103.31.109.2', 'Chrome'),
(482, '2017-04-11 11:18:11', '168.235.202.213', 'Safari'),
(483, '2017-04-11 11:18:43', '120.188.85.102', 'Chrome'),
(484, '2017-04-11 11:18:49', '61.5.84.239', 'Chrome'),
(485, '2017-04-11 11:18:51', '36.73.220.140', 'Chrome'),
(486, '2017-04-11 11:18:57', '180.247.181.120', 'Chrome'),
(487, '2017-04-11 11:19:50', '36.73.22.116', 'Chrome'),
(488, '2017-04-11 11:21:09', '36.84.229.80', 'Chrome'),
(489, '2017-04-11 11:21:23', '120.188.67.170', 'Chrome'),
(490, '2017-04-11 11:21:24', '36.85.13.189', 'Chrome'),
(491, '2017-04-11 11:22:18', '66.96.246.66', 'Chrome'),
(492, '2017-04-11 11:22:48', '111.68.27.251', 'Chrome'),
(493, '2017-04-11 11:23:31', '202.80.212.117', 'Chrome'),
(494, '2017-04-11 11:23:59', '112.215.171.69', 'Mozilla'),
(495, '2017-04-11 11:24:35', '222.124.214.250', 'Chrome'),
(496, '2017-04-11 11:24:53', '140.0.203.15', 'Chrome'),
(497, '2017-04-11 11:24:58', '116.254.126.142', 'Chrome'),
(498, '2017-04-11 11:25:13', '120.188.66.255', 'Chrome'),
(499, '2017-04-11 11:25:33', '168.235.194.213', 'Safari'),
(500, '2017-04-11 11:25:48', '114.125.9.160', 'Safari'),
(501, '2017-04-11 11:25:54', '112.215.201.184', 'Safari'),
(502, '2017-04-11 11:25:57', '125.163.255.80', 'Chrome'),
(503, '2017-04-11 11:26:09', '168.235.200.204', 'Safari'),
(504, '2017-04-11 11:26:37', '128.199.233.142', 'Safari'),
(505, '2017-04-11 11:28:11', '112.215.154.169', 'Firefox'),
(506, '2017-04-11 11:28:25', '168.235.195.242', 'Safari'),
(507, '2017-04-11 11:29:06', '223.25.97.210', 'Chrome'),
(508, '2017-04-11 11:30:24', '203.176.183.20', 'Chrome'),
(509, '2017-04-11 11:30:50', '180.253.126.127', 'Chrome'),
(510, '2017-04-11 11:31:06', '36.78.129.171', 'Chrome'),
(511, '2017-04-11 11:33:51', '14.102.152.234', 'Chrome'),
(512, '2017-04-11 11:34:09', '8.37.230.53', 'Safari'),
(513, '2017-04-11 11:34:27', '112.215.172.183', 'Chrome'),
(514, '2017-04-11 11:35:45', '112.215.65.96', 'Safari'),
(515, '2017-04-11 11:36:42', '110.5.102.56', 'Chrome'),
(516, '2017-04-11 11:37:05', '114.121.246.246', 'Chrome'),
(517, '2017-04-11 11:37:17', '110.139.27.171', 'Chrome'),
(518, '2017-04-11 11:39:05', '120.188.65.207', 'Chrome'),
(519, '2017-04-11 11:39:31', '180.254.64.231', 'Chrome'),
(520, '2017-04-11 11:39:34', '202.133.6.54', 'Chrome'),
(521, '2017-04-11 11:40:40', '36.68.41.249', 'Chrome'),
(522, '2017-04-11 11:43:08', '125.163.57.73', 'Chrome'),
(523, '2017-04-11 11:44:21', '114.121.157.148', 'Chrome'),
(524, '2017-04-11 11:44:46', '140.0.229.214', 'Chrome'),
(525, '2017-04-11 11:46:15', '103.55.216.76', 'Firefox'),
(526, '2017-04-11 11:47:25', '120.188.4.116', 'Chrome'),
(527, '2017-04-11 11:48:03', '202.124.205.203', 'Mozilla'),
(528, '2017-04-11 11:48:11', '202.80.212.84', 'Chrome'),
(529, '2017-04-11 11:48:52', '36.74.26.7', 'Chrome'),
(530, '2017-04-11 11:48:52', '210.57.215.142', 'Chrome'),
(531, '2017-04-11 11:48:56', '202.43.183.130', 'Chrome'),
(532, '2017-04-11 11:49:16', '61.94.50.125', 'Chrome'),
(533, '2017-04-11 11:50:14', '139.192.185.41', 'Chrome'),
(534, '2017-04-11 11:50:46', '36.72.118.174', 'Chrome'),
(535, '2017-04-11 11:51:16', '118.136.225.170', 'Chrome'),
(536, '2017-04-11 11:51:48', '202.67.46.40', 'Chrome'),
(537, '2017-04-11 11:52:04', '182.253.33.51', 'Firefox'),
(538, '2017-04-11 11:52:06', '180.254.26.52', 'Chrome'),
(539, '2017-04-11 11:52:07', '36.66.168.63', 'Chrome'),
(540, '2017-04-11 11:52:24', '112.215.45.116', 'Firefox'),
(541, '2017-04-11 11:52:52', '112.215.172.67', 'Chrome'),
(542, '2017-04-11 11:54:21', '180.245.67.128', 'Chrome'),
(543, '2017-04-11 11:55:01', '36.83.178.178', 'Chrome'),
(544, '2017-04-11 11:55:10', '118.96.213.178', 'Firefox'),
(545, '2017-04-11 11:56:30', '114.125.170.252', 'Chrome'),
(546, '2017-04-11 11:56:43', '124.153.32.100', 'Chrome'),
(547, '2017-04-11 11:57:11', '120.188.74.139', 'Mozilla'),
(548, '2017-04-11 11:57:47', '124.153.33.42', 'Mozilla'),
(549, '2017-04-11 11:58:44', '36.78.128.112', 'Firefox'),
(550, '2017-04-11 11:59:10', '103.228.26.4', 'Chrome'),
(551, '2017-04-11 12:00:17', '36.82.101.17', 'Chrome'),
(552, '2017-04-11 12:01:21', '139.0.54.49', 'Chrome'),
(553, '2017-04-11 12:01:23', '180.252.103.36', 'Mozilla'),
(554, '2017-04-11 12:01:33', '117.102.64.82', 'Firefox'),
(555, '2017-04-11 12:03:59', '202.67.44.8', 'Chrome'),
(556, '2017-04-11 12:04:16', '114.125.26.15', 'Chrome'),
(557, '2017-04-11 12:04:23', '180.246.224.105', 'Chrome'),
(558, '2017-04-11 12:05:05', '112.215.170.35', 'Mozilla'),
(559, '2017-04-11 12:05:33', '180.251.217.107', 'Chrome'),
(560, '2017-04-11 12:06:35', '36.84.39.119', 'Chrome'),
(561, '2017-04-11 12:07:10', '103.241.206.74', 'Chrome'),
(562, '2017-04-11 12:08:18', '203.160.128.8', 'Chrome'),
(563, '2017-04-11 12:09:24', '36.71.230.230', 'Chrome'),
(564, '2017-04-11 12:09:33', '118.136.40.213', 'Chrome'),
(565, '2017-04-11 12:10:26', '8.37.225.146', 'Firefox'),
(566, '2017-04-11 12:10:27', '180.251.6.162', 'Chrome'),
(567, '2017-04-11 12:10:34', '112.215.201.35', 'Chrome'),
(568, '2017-04-11 12:10:40', '120.188.64.132', 'Chrome'),
(569, '2017-04-11 12:11:13', '112.215.151.179', 'Chrome'),
(570, '2017-04-11 12:11:34', '107.167.99.205', 'Opera'),
(571, '2017-04-11 12:11:48', '210.211.18.82', 'Chrome'),
(572, '2017-04-11 12:11:51', '112.215.174.151', 'Chrome'),
(573, '2017-04-11 12:12:02', '120.188.73.159', 'Chrome'),
(574, '2017-04-11 12:13:39', '36.81.46.228', 'Chrome'),
(575, '2017-04-11 12:15:31', '36.77.89.224', 'Chrome'),
(576, '2017-04-11 12:16:10', '107.167.112.144', 'Chrome'),
(577, '2017-04-11 12:16:23', '125.165.178.198', 'Firefox'),
(578, '2017-04-11 12:16:50', '139.192.58.131', 'Chrome'),
(579, '2017-04-11 12:16:54', '36.69.12.48', 'Chrome'),
(580, '2017-04-11 12:17:14', '202.179.190.162', 'Chrome'),
(581, '2017-04-11 12:17:26', '36.78.33.42', 'Chrome'),
(582, '2017-04-11 12:17:48', '103.213.131.160', 'Chrome'),
(583, '2017-04-11 12:17:55', '36.85.24.1', 'Mozilla'),
(584, '2017-04-11 12:18:13', '202.158.89.154', 'Chrome'),
(585, '2017-04-11 12:19:02', '36.70.91.134', 'Firefox'),
(586, '2017-04-11 12:19:15', '114.125.30.235', 'Chrome'),
(587, '2017-04-11 12:19:52', '125.163.174.117', 'Chrome'),
(588, '2017-04-11 12:20:01', '103.17.246.48', 'Firefox'),
(589, '2017-04-11 12:21:22', '36.88.134.156', 'Chrome'),
(590, '2017-04-11 12:22:53', '120.188.5.152', 'Mozilla'),
(591, '2017-04-11 12:23:28', '114.124.33.225', 'Chrome'),
(592, '2017-04-11 12:23:44', '112.215.200.147', 'Chrome'),
(593, '2017-04-11 12:24:23', '180.253.125.143', 'Chrome'),
(594, '2017-04-11 12:24:30', '36.69.83.3', 'Chrome'),
(595, '2017-04-11 12:25:24', '36.68.118.78', 'Firefox'),
(596, '2017-04-11 12:25:36', '180.245.99.108', 'Chrome'),
(597, '2017-04-11 12:26:15', '8.37.225.106', 'Firefox'),
(598, '2017-04-11 12:26:16', '58.10.55.252', 'Chrome'),
(599, '2017-04-11 12:27:07', '36.73.65.61', 'Firefox'),
(600, '2017-04-11 12:27:18', '202.62.18.53', 'Chrome'),
(601, '2017-04-11 12:27:39', '180.243.101.157', 'Chrome'),
(602, '2017-04-11 12:29:40', '180.249.209.233', 'Chrome'),
(603, '2017-04-11 12:31:13', '120.188.7.226', 'Chrome'),
(604, '2017-04-11 12:31:29', '36.85.139.235', 'Firefox'),
(605, '2017-04-11 12:32:43', '203.142.64.87', 'Chrome'),
(606, '2017-04-11 12:33:19', '107.167.112.181', 'Opera'),
(607, '2017-04-11 12:34:05', '182.253.73.4', 'Firefox'),
(608, '2017-04-11 12:34:16', '110.136.57.170', 'Chrome'),
(609, '2017-04-11 12:38:24', '112.215.200.152', 'Mozilla'),
(610, '2017-04-11 12:38:37', '168.235.205.184', 'Safari'),
(611, '2017-04-11 12:39:48', '125.164.109.171', 'Chrome'),
(612, '2017-04-11 12:39:50', '36.73.58.152', 'Chrome'),
(613, '2017-04-11 12:40:16', '202.62.16.15', 'Chrome'),
(614, '2017-04-11 12:41:57', '36.73.54.54', 'Chrome'),
(615, '2017-04-11 12:42:26', '36.80.151.109', 'Firefox'),
(616, '2017-04-11 12:43:14', '202.67.40.199', 'Chrome'),
(617, '2017-04-11 12:43:29', '114.4.83.133', 'Chrome'),
(618, '2017-04-11 12:43:31', '173.193.202.116', 'Firefox'),
(619, '2017-04-11 12:44:18', '202.62.16.181', 'Chrome'),
(620, '2017-04-11 12:45:13', '167.114.233.118', 'Firefox'),
(621, '2017-04-11 12:45:30', '180.241.24.74', 'Chrome'),
(622, '2017-04-11 12:47:01', '125.166.212.190', 'Chrome'),
(623, '2017-04-11 12:47:21', '180.241.179.220', 'Chrome'),
(624, '2017-04-11 12:47:27', '125.167.75.246', 'Chrome'),
(625, '2017-04-11 12:47:48', '168.235.194.226', 'Safari'),
(626, '2017-04-11 12:52:01', '118.97.137.170', 'Chrome'),
(627, '2017-04-11 12:52:53', '180.247.208.196', 'Chrome'),
(628, '2017-04-11 12:54:25', '103.9.124.211', 'Chrome'),
(629, '2017-04-11 12:56:29', '120.188.94.118', 'Chrome'),
(630, '2017-04-11 12:56:33', '36.73.12.186', 'Firefox'),
(631, '2017-04-11 12:56:44', '36.66.254.39', 'Firefox'),
(632, '2017-04-11 12:57:28', '120.188.81.56', 'Chrome'),
(633, '2017-04-11 12:59:02', '36.82.7.245', 'Chrome'),
(634, '2017-04-11 12:59:36', '103.212.43.138', 'Chrome'),
(635, '2017-04-11 13:00:38', '139.193.114.21', 'Chrome'),
(636, '2017-04-11 13:00:50', '112.215.175.249', 'Firefox'),
(637, '2017-04-11 13:01:24', '120.188.33.237', 'Chrome'),
(638, '2017-04-11 13:01:53', '36.80.106.53', 'Chrome'),
(639, '2017-04-11 13:02:10', '36.84.0.88', 'Firefox'),
(640, '2017-04-11 13:03:00', '103.57.192.122', 'Chrome'),
(641, '2017-04-11 13:04:55', '36.72.190.47', 'Firefox'),
(642, '2017-04-11 13:06:41', '125.163.105.25', 'Chrome'),
(643, '2017-04-11 13:07:06', '115.178.234.139', 'Mozilla'),
(644, '2017-04-11 13:07:31', '114.120.234.114', 'Mozilla'),
(645, '2017-04-11 13:08:50', '202.67.46.227', 'Chrome'),
(646, '2017-04-11 13:09:22', '36.77.160.216', 'Chrome'),
(647, '2017-04-11 13:10:14', '139.193.15.145', 'Chrome'),
(648, '2017-04-11 13:10:47', '112.215.172.245', 'Chrome'),
(649, '2017-04-11 13:10:50', '207.241.226.232', 'Mozilla'),
(650, '2017-04-11 13:11:07', '120.188.0.239', 'Chrome'),
(651, '2017-04-11 13:11:09', '180.251.99.141', 'Chrome'),
(652, '2017-04-11 13:11:13', '125.162.56.58', 'Chrome'),
(653, '2017-04-11 13:11:39', '36.72.50.199', 'Chrome'),
(654, '2017-04-11 13:12:20', '139.194.66.128', 'Chrome'),
(655, '2017-04-11 13:12:55', '36.78.127.45', 'Firefox'),
(656, '2017-04-11 13:13:00', '36.74.170.244', 'Chrome'),
(657, '2017-04-11 13:13:59', '36.83.123.80', 'Chrome'),
(658, '2017-04-11 13:14:36', '36.84.13.207', 'Chrome'),
(659, '2017-04-11 13:14:50', '112.198.68.78', 'Chrome'),
(660, '2017-04-11 13:15:20', '180.251.88.168', 'Firefox'),
(661, '2017-04-11 13:15:32', '119.110.69.226', 'Chrome'),
(662, '2017-04-11 13:16:00', '36.85.65.250', 'Chrome'),
(663, '2017-04-11 13:16:43', '112.78.141.82', 'Firefox'),
(664, '2017-04-11 13:16:57', '125.163.59.51', 'Chrome'),
(665, '2017-04-11 13:17:19', '116.197.132.78', 'Firefox'),
(666, '2017-04-11 13:17:39', '120.188.67.180', 'Chrome'),
(667, '2017-04-11 13:18:27', '114.4.83.35', 'Chrome'),
(668, '2017-04-11 13:18:28', '125.162.19.20', 'Firefox'),
(669, '2017-04-11 13:18:29', '182.253.3.140', 'Chrome'),
(670, '2017-04-11 13:21:45', '36.78.130.219', 'Firefox'),
(671, '2017-04-11 13:24:05', '180.246.25.27', 'Firefox'),
(672, '2017-04-11 13:25:03', '202.150.146.82', 'Chrome'),
(673, '2017-04-11 13:25:05', '125.162.222.87', 'Mozilla'),
(674, '2017-04-11 13:25:34', '120.188.86.20', 'Chrome'),
(675, '2017-04-11 13:25:43', '125.163.109.106', 'Chrome'),
(676, '2017-04-11 13:26:12', '120.188.81.160', 'Chrome'),
(677, '2017-04-11 13:29:23', '175.111.89.10', 'Chrome'),
(678, '2017-04-11 13:30:27', '114.121.245.17', 'Mozilla'),
(679, '2017-04-11 13:32:54', '110.139.200.11', 'Chrome'),
(680, '2017-04-11 13:33:00', '114.125.52.89', 'Chrome'),
(681, '2017-04-11 13:33:25', '36.74.177.233', 'Chrome'),
(682, '2017-04-11 13:33:44', '180.254.162.29', 'Firefox'),
(683, '2017-04-11 13:33:53', '125.160.100.4', 'Chrome'),
(684, '2017-04-11 13:34:59', '202.77.111.104', 'Chrome'),
(685, '2017-04-11 13:35:16', '36.69.153.83', 'Chrome'),
(686, '2017-04-11 13:35:19', '180.254.13.225', 'Chrome'),
(687, '2017-04-11 13:35:24', '180.251.214.117', 'Chrome'),
(688, '2017-04-11 13:35:27', '36.74.134.188', 'Chrome'),
(689, '2017-04-11 13:35:41', '107.167.103.167', 'Opera'),
(690, '2017-04-11 13:36:56', '139.193.222.23', 'Chrome'),
(691, '2017-04-11 13:36:59', '182.253.72.87', 'Chrome'),
(692, '2017-04-11 13:37:10', '101.255.64.210', 'Chrome'),
(693, '2017-04-11 13:38:20', '36.69.60.79', 'Chrome'),
(694, '2017-04-11 13:38:34', '36.84.229.27', 'Firefox'),
(695, '2017-04-11 13:41:28', '202.62.16.239', 'Firefox'),
(696, '2017-04-11 13:41:42', '36.81.58.185', 'Chrome'),
(697, '2017-04-11 13:41:44', '112.215.152.52', 'Chrome'),
(698, '2017-04-11 13:42:08', '36.74.224.172', 'Chrome'),
(699, '2017-04-11 13:42:11', '112.215.200.247', 'Mozilla'),
(700, '2017-04-11 13:42:34', '112.215.153.115', 'Chrome'),
(701, '2017-04-11 13:42:58', '223.164.0.178', 'Chrome'),
(702, '2017-04-11 13:42:58', '36.72.62.17', 'Chrome'),
(703, '2017-04-11 13:43:38', '103.209.131.44', 'Firefox'),
(704, '2017-04-11 13:43:43', '139.195.33.29', 'Chrome'),
(705, '2017-04-11 13:44:51', '103.61.248.82', 'Chrome'),
(706, '2017-04-11 13:46:50', '175.103.43.86', 'Chrome'),
(707, '2017-04-11 13:47:49', '120.188.94.79', 'Chrome'),
(708, '2017-04-11 13:47:53', '202.169.46.130', 'Chrome'),
(709, '2017-04-11 13:48:37', '158.140.170.38', 'Chrome'),
(710, '2017-04-11 13:49:55', '180.245.193.140', 'Chrome'),
(711, '2017-04-11 13:50:24', '180.246.157.179', 'Chrome'),
(712, '2017-04-11 13:51:51', '36.76.23.139', 'Chrome'),
(713, '2017-04-11 13:52:06', '202.67.41.213', 'Chrome'),
(714, '2017-04-11 13:52:34', '36.78.163.149', 'Chrome'),
(715, '2017-04-11 13:53:12', '158.140.166.0', 'Chrome'),
(716, '2017-04-11 13:55:36', '207.244.86.209', 'Chrome'),
(717, '2017-04-11 13:56:35', '120.188.79.122', 'Chrome'),
(718, '2017-04-11 13:58:11', '36.73.104.74', 'Chrome'),
(719, '2017-04-11 13:58:21', '222.124.22.251', 'Firefox'),
(720, '2017-04-11 13:58:32', '120.188.93.249', 'Chrome'),
(721, '2017-04-11 14:02:03', '120.188.33.199', 'Chrome'),
(722, '2017-04-11 14:02:06', '125.161.64.96', 'Chrome'),
(723, '2017-04-11 14:03:41', '182.253.122.125', 'Chrome'),
(724, '2017-04-11 14:04:06', '36.68.234.47', 'Chrome'),
(725, '2017-04-11 14:04:33', '36.72.94.211', 'Chrome'),
(726, '2017-04-11 14:04:48', '125.163.125.211', 'Chrome'),
(727, '2017-04-11 14:04:52', '180.248.243.155', 'Chrome'),
(728, '2017-04-11 14:04:58', '182.253.34.175', 'Mozilla'),
(729, '2017-04-11 14:05:28', '103.24.49.225', 'Chrome'),
(730, '2017-04-11 14:06:42', '180.248.250.226', 'Chrome'),
(731, '2017-04-11 14:09:06', '36.84.157.255', 'Chrome'),
(732, '2017-04-11 14:09:09', '202.152.156.210', 'Firefox'),
(733, '2017-04-11 14:09:41', '114.125.53.87', 'Chrome'),
(734, '2017-04-11 14:09:43', '120.188.7.170', 'Chrome'),
(735, '2017-04-11 14:11:29', '152.118.148.226', 'Internet Explorer'),
(736, '2017-04-11 14:11:43', '182.253.188.125', 'Chrome'),
(737, '2017-04-11 14:12:47', '5.254.97.108', 'Chrome'),
(738, '2017-04-11 14:13:23', '120.188.3.109', 'Chrome'),
(739, '2017-04-11 14:14:38', '180.246.199.52', 'Chrome'),
(740, '2017-04-11 14:15:05', '210.211.17.14', 'Chrome'),
(741, '2017-04-11 14:15:59', '36.82.201.211', 'Chrome'),
(742, '2017-04-11 14:16:14', '103.23.102.111', 'Chrome'),
(743, '2017-04-11 14:17:19', '36.81.75.68', 'Chrome'),
(744, '2017-04-11 14:18:59', '114.125.39.153', 'Chrome'),
(745, '2017-04-11 14:20:34', '222.124.52.127', 'Chrome'),
(746, '2017-04-11 14:21:13', '180.248.199.49', 'Chrome'),
(747, '2017-04-11 14:22:00', '125.163.114.139', 'Chrome'),
(748, '2017-04-11 14:25:37', '107.167.99.151', 'Opera'),
(749, '2017-04-11 14:26:05', '114.125.116.95', 'Chrome'),
(750, '2017-04-11 14:26:49', '202.62.18.115', 'Chrome'),
(751, '2017-04-11 14:26:50', '61.8.69.82', 'Chrome'),
(752, '2017-04-11 14:28:31', '113.161.224.83', 'Chrome'),
(753, '2017-04-11 14:28:45', '103.47.132.24', 'Chrome'),
(754, '2017-04-11 14:29:03', '120.188.64.12', 'Chrome'),
(755, '2017-04-11 14:30:03', '103.47.134.26', 'Chrome'),
(756, '2017-04-11 14:30:29', '202.9.85.34', 'Chrome'),
(757, '2017-04-11 14:31:59', '182.253.62.142', 'Chrome'),
(758, '2017-04-11 14:32:07', '36.88.45.251', 'Chrome'),
(759, '2017-04-11 14:32:24', '114.121.133.17', 'Mozilla'),
(760, '2017-04-11 14:33:18', '190.233.193.231', 'Chrome'),
(761, '2017-04-11 14:33:41', '202.80.215.57', 'Chrome'),
(762, '2017-04-11 14:34:18', '115.178.216.124', 'Chrome'),
(763, '2017-04-11 14:37:01', '222.165.226.122', 'Firefox'),
(764, '2017-04-11 14:38:07', '36.82.13.155', 'Chrome'),
(765, '2017-04-11 14:38:30', '202.182.59.185', 'Firefox'),
(766, '2017-04-11 14:38:42', '103.21.206.66', 'Chrome'),
(767, '2017-04-11 14:39:14', '36.69.87.71', 'Chrome'),
(768, '2017-04-11 14:39:42', '43.247.13.202', 'Chrome'),
(769, '2017-04-11 14:40:08', '66.102.7.143', 'Chrome'),
(770, '2017-04-11 14:43:21', '168.235.195.74', 'Safari'),
(771, '2017-04-11 14:44:11', '103.8.12.99', 'Chrome'),
(772, '2017-04-11 14:44:14', '180.252.137.203', 'Chrome'),
(773, '2017-04-11 14:44:27', '36.87.53.20', 'Safari'),
(774, '2017-04-11 14:45:06', '114.125.87.178', 'Chrome'),
(775, '2017-04-11 14:46:04', '158.140.172.34', 'Chrome'),
(776, '2017-04-11 14:46:12', '61.94.132.66', 'Chrome'),
(777, '2017-04-11 14:47:36', '101.255.60.254', 'Chrome'),
(778, '2017-04-11 14:49:09', '36.74.102.19', 'Chrome'),
(779, '2017-04-11 14:49:42', '180.246.244.93', 'Chrome'),
(780, '2017-04-11 14:49:52', '118.97.151.193', 'Firefox'),
(781, '2017-04-11 14:50:01', '117.102.122.242', 'Chrome'),
(782, '2017-04-11 14:50:51', '36.71.249.134', 'Chrome'),
(783, '2017-04-11 14:51:54', '112.215.171.45', 'Chrome'),
(784, '2017-04-11 14:52:18', '103.241.5.116', 'Chrome'),
(785, '2017-04-11 14:52:31', '36.78.103.212', 'Chrome'),
(786, '2017-04-11 14:53:09', '36.72.80.127', 'Chrome'),
(787, '2017-04-11 14:54:12', '36.78.123.228', 'Chrome'),
(788, '2017-04-11 14:54:16', '36.68.235.225', 'Chrome'),
(789, '2017-04-11 14:54:37', '125.161.181.154', 'Firefox'),
(790, '2017-04-11 14:55:13', '36.80.164.131', 'Chrome'),
(791, '2017-04-11 14:56:15', '180.245.211.69', 'Chrome'),
(792, '2017-04-11 14:56:16', '125.167.186.204', 'Chrome'),
(793, '2017-04-11 14:57:34', '114.125.119.153', 'Chrome'),
(794, '2017-04-11 14:59:59', '114.121.234.35', 'Chrome'),
(795, '2017-04-11 15:02:26', '107.167.103.67', 'Opera'),
(796, '2017-04-11 15:02:47', '36.80.9.250', 'Chrome'),
(797, '2017-04-11 15:02:50', '36.88.62.43', 'Chrome'),
(798, '2017-04-11 15:02:57', '114.125.184.105', 'Chrome'),
(799, '2017-04-11 15:03:07', '185.182.81.53', 'Chrome'),
(800, '2017-04-11 15:04:44', '66.102.7.141', 'Chrome'),
(801, '2017-04-11 15:04:57', '36.88.158.219', 'Chrome'),
(802, '2017-04-11 15:06:25', '36.73.34.208', 'Chrome'),
(803, '2017-04-11 15:07:58', '36.74.20.46', 'Chrome'),
(804, '2017-04-11 15:08:28', '36.82.100.128', 'Chrome'),
(805, '2017-04-11 15:09:30', '112.215.65.245', 'Chrome'),
(806, '2017-04-11 15:09:42', '114.4.78.119', 'Chrome'),
(807, '2017-04-11 15:09:46', '110.137.171.177', 'Chrome'),
(808, '2017-04-11 15:09:47', '140.0.198.87', 'Mozilla'),
(809, '2017-04-11 15:10:20', '103.47.134.18', 'Chrome'),
(810, '2017-04-11 15:10:43', '36.66.46.34', 'Chrome'),
(811, '2017-04-11 15:11:32', '180.246.96.230', 'Chrome'),
(812, '2017-04-11 15:13:26', '146.185.31.213', 'Firefox'),
(813, '2017-04-11 15:18:49', '163.53.186.186', 'Firefox'),
(814, '2017-04-11 15:19:24', '202.62.16.98', 'Chrome'),
(815, '2017-04-11 15:21:09', '36.70.200.11', 'Chrome'),
(816, '2017-04-11 15:24:10', '112.215.45.58', 'Chrome'),
(817, '2017-04-11 15:25:14', '66.96.234.91', 'Chrome'),
(818, '2017-04-11 15:25:55', '103.66.199.34', 'Chrome'),
(819, '2017-04-11 15:26:53', '182.253.163.82', 'Chrome'),
(820, '2017-04-11 15:28:37', '103.3.44.1', 'Chrome'),
(821, '2017-04-11 15:29:22', '36.88.90.200', 'Chrome'),
(822, '2017-04-11 15:30:19', '180.254.255.166', 'Chrome'),
(823, '2017-04-11 15:30:24', '115.178.200.226', 'Chrome'),
(824, '2017-04-11 15:30:45', '120.188.1.120', 'Chrome'),
(825, '2017-04-11 15:32:14', '103.195.142.26', 'Chrome'),
(826, '2017-04-11 15:33:33', '120.188.0.9', 'Firefox'),
(827, '2017-04-11 15:35:18', '120.188.81.213', 'Chrome'),
(828, '2017-04-11 15:36:20', '182.253.131.41', 'Mozilla'),
(829, '2017-04-11 15:36:24', '8.37.234.123', 'Chrome'),
(830, '2017-04-11 15:36:27', '36.72.34.63', 'Chrome'),
(831, '2017-04-11 15:36:36', '115.178.239.80', 'Chrome'),
(832, '2017-04-11 15:36:54', '103.58.111.34', 'Chrome'),
(833, '2017-04-11 15:38:16', '8.37.225.224', 'Firefox'),
(834, '2017-04-11 15:38:19', '112.215.200.93', 'Chrome'),
(835, '2017-04-11 15:39:20', '120.188.92.156', 'Chrome'),
(836, '2017-04-11 15:39:27', '114.125.103.119', 'Chrome'),
(837, '2017-04-11 15:40:08', '107.167.112.73', 'Chrome'),
(838, '2017-04-11 15:42:02', '120.188.66.2', 'Chrome'),
(839, '2017-04-11 15:42:44', '36.72.134.144', 'Chrome'),
(840, '2017-04-11 15:43:13', '36.66.215.5', 'Firefox'),
(841, '2017-04-11 15:44:26', '114.125.101.241', 'Chrome'),
(842, '2017-04-11 15:45:36', '182.253.37.186', 'Firefox'),
(843, '2017-04-11 15:46:05', '114.125.117.183', 'Chrome'),
(844, '2017-04-11 15:46:05', '114.125.101.71', 'Chrome'),
(845, '2017-04-11 15:46:05', '114.125.101.255', 'Chrome'),
(846, '2017-04-11 15:47:28', '114.124.34.31', 'Mozilla'),
(847, '2017-04-11 15:48:28', '202.62.17.122', 'Chrome'),
(848, '2017-04-11 15:48:41', '139.192.131.90', 'Chrome'),
(849, '2017-04-11 15:52:52', '120.188.3.158', 'Chrome'),
(850, '2017-04-11 15:53:10', '200.77.128.224', 'Mozilla'),
(851, '2017-04-11 15:54:26', '112.215.151.215', 'Chrome'),
(852, '2017-04-11 15:55:40', '114.4.82.59', 'Chrome'),
(853, '2017-04-11 15:55:50', '36.79.229.121', 'Chrome'),
(854, '2017-04-11 15:57:41', '118.136.224.179', 'Chrome'),
(855, '2017-04-11 16:00:38', '202.67.41.242', 'Chrome'),
(856, '2017-04-11 16:01:11', '36.77.191.150', 'Mozilla'),
(857, '2017-04-11 16:01:26', '125.166.214.129', 'Chrome'),
(858, '2017-04-11 16:03:25', '202.93.231.81', 'Chrome'),
(859, '2017-04-11 16:03:40', '36.68.69.52', 'Chrome'),
(860, '2017-04-11 16:03:59', '112.215.152.222', 'Chrome'),
(861, '2017-04-11 16:04:55', '36.79.42.167', 'Chrome'),
(862, '2017-04-11 16:05:30', '103.47.134.3', 'Chrome'),
(863, '2017-04-11 16:10:29', '139.59.96.104', 'Chrome'),
(864, '2017-04-11 16:11:56', '36.73.101.192', 'Firefox'),
(865, '2017-04-11 16:12:39', '180.252.110.204', 'Chrome'),
(866, '2017-04-11 16:14:25', '36.84.224.105', 'Firefox'),
(867, '2017-04-11 16:15:20', '112.215.172.91', 'Chrome'),
(868, '2017-04-11 16:15:29', '43.252.159.29', 'Chrome'),
(869, '2017-04-11 16:16:19', '114.124.2.201', 'Chrome'),
(870, '2017-04-11 16:16:52', '103.77.50.21', 'Chrome'),
(871, '2017-04-11 16:18:18', '114.125.215.48', 'Mozilla'),
(872, '2017-04-11 16:19:02', '202.62.17.10', 'Chrome'),
(873, '2017-04-11 16:20:03', '202.93.231.70', 'Firefox'),
(874, '2017-04-11 16:20:33', '103.47.134.15', 'Firefox'),
(875, '2017-04-11 16:22:24', '120.188.77.49', 'Firefox'),
(876, '2017-04-11 16:22:51', '120.188.3.239', 'Chrome'),
(877, '2017-04-11 16:24:00', '180.189.162.131', 'Chrome'),
(878, '2017-04-11 16:24:20', '36.83.36.137', 'Chrome'),
(879, '2017-04-11 16:26:02', '175.111.89.42', 'Chrome'),
(880, '2017-04-11 16:26:56', '213.171.207.70', 'Chrome'),
(881, '2017-04-11 16:27:42', '180.252.173.112', 'Chrome'),
(882, '2017-04-11 16:28:22', '115.178.234.185', 'Chrome'),
(883, '2017-04-11 16:28:28', '36.77.83.38', 'Chrome'),
(884, '2017-04-11 16:29:16', '103.248.248.86', 'Chrome'),
(885, '2017-04-11 16:29:32', '180.254.74.221', 'Chrome'),
(886, '2017-04-11 16:29:39', '36.78.55.37', 'Firefox'),
(887, '2017-04-11 16:29:48', '112.78.191.34', 'Chrome'),
(888, '2017-04-11 16:30:04', '120.188.81.161', 'Chrome'),
(889, '2017-04-11 16:30:08', '115.178.201.60', 'Chrome'),
(890, '2017-04-11 16:31:14', '36.72.202.102', 'Chrome'),
(891, '2017-04-11 16:31:58', '120.188.79.93', 'Chrome'),
(892, '2017-04-11 16:33:26', '36.80.202.16', 'Firefox'),
(893, '2017-04-11 16:35:32', '139.194.22.183', 'Chrome'),
(894, '2017-04-11 16:38:11', '120.188.87.248', 'Chrome'),
(895, '2017-04-11 16:38:30', '182.253.163.75', 'Chrome'),
(896, '2017-04-11 16:39:26', '103.213.128.19', 'Chrome'),
(897, '2017-04-11 16:40:11', '202.169.53.3', 'Firefox'),
(898, '2017-04-11 16:41:53', '202.67.40.1', 'Chrome'),
(899, '2017-04-11 16:43:22', '120.188.66.119', 'Chrome'),
(900, '2017-04-11 16:43:42', '36.74.115.169', 'Chrome'),
(901, '2017-04-11 16:46:07', '103.47.132.27', 'Chrome'),
(902, '2017-04-11 16:46:19', '180.241.75.46', 'Mozilla'),
(903, '2017-04-11 16:46:19', '36.84.228.213', 'Chrome'),
(904, '2017-04-11 16:46:44', '118.136.88.249', 'Chrome'),
(905, '2017-04-11 16:49:50', '120.188.83.242', 'Chrome'),
(906, '2017-04-11 16:49:52', '36.77.137.120', 'Chrome');
INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(907, '2017-07-10 02:07:19', '::1', 'Firefox'),
(908, '2019-06-06 14:03:56', '::1', 'Chrome'),
(909, '2019-06-06 22:32:30', '::1', 'Chrome'),
(910, '2019-06-12 11:57:51', '::1', 'Chrome'),
(911, '2019-06-13 03:18:30', '::1', 'Chrome'),
(912, '2019-06-14 09:29:42', '::1', 'Chrome'),
(913, '2019-06-15 05:49:22', '::1', 'Chrome'),
(914, '2019-06-16 00:18:08', '::1', 'Chrome'),
(915, '2019-06-17 06:50:59', '::1', 'Chrome'),
(916, '2019-06-18 11:13:00', '::1', 'Chrome'),
(917, '2019-06-19 01:11:49', '::1', 'Chrome'),
(918, '2019-06-19 22:45:16', '::1', 'Chrome'),
(919, '2019-06-21 06:46:25', '::1', 'Chrome'),
(920, '2019-07-05 02:12:21', '::1', 'Chrome'),
(921, '2019-07-05 23:19:30', '::1', 'Chrome'),
(922, '2019-08-01 01:41:24', '::1', 'Chrome'),
(923, '2019-08-01 23:29:00', '::1', 'Chrome'),
(924, '2019-08-03 00:16:32', '::1', 'Chrome'),
(925, '2019-08-05 11:59:54', '::1', 'Chrome'),
(926, '2019-08-08 03:15:25', '::1', 'Chrome'),
(927, '2019-08-11 21:53:51', '::1', 'Chrome'),
(928, '2019-08-27 03:19:36', '::1', 'Chrome'),
(929, '2019-09-04 11:57:29', '::1', 'Chrome'),
(930, '2019-09-05 11:25:26', '::1', 'Chrome'),
(931, '2019-09-06 01:24:25', '::1', 'Chrome'),
(932, '2019-10-29 04:09:23', '::1', 'Chrome'),
(933, '2019-11-04 05:39:49', '::1', 'Chrome'),
(934, '2019-11-07 05:38:23', '::1', 'Chrome'),
(935, '2019-11-08 04:04:16', '::1', 'Chrome'),
(936, '2019-11-09 13:58:32', '::1', 'Chrome'),
(937, '2019-11-10 04:34:33', '::1', 'Chrome'),
(938, '2019-11-12 04:03:24', '::1', 'Chrome'),
(939, '2019-11-13 13:24:04', '::1', 'Chrome'),
(940, '2019-11-14 06:17:52', '::1', 'Chrome'),
(941, '2019-11-15 03:54:58', '::1', 'Chrome'),
(942, '2019-11-16 00:14:31', '::1', 'Chrome'),
(943, '2019-11-17 09:25:26', '::1', 'Chrome'),
(944, '2019-11-18 11:23:04', '::1', 'Chrome'),
(945, '2019-11-20 00:40:27', '::1', 'Chrome'),
(946, '2019-11-22 02:09:14', '::1', 'Chrome'),
(947, '2019-11-26 02:42:38', '::1', 'Chrome'),
(948, '2019-11-30 03:20:29', '::1', 'Chrome'),
(949, '2019-12-07 00:20:52', '::1', 'Chrome'),
(950, '2019-12-08 10:46:20', '::1', 'Chrome'),
(951, '2019-12-08 23:28:13', '::1', 'Chrome'),
(952, '2019-12-11 08:36:48', '::1', 'Chrome'),
(953, '2019-12-12 00:26:51', '::1', 'Chrome'),
(954, '2019-12-12 22:23:50', '::1', 'Chrome'),
(955, '2019-12-13 01:41:29', '192.168.137.106', 'Chrome'),
(956, '2019-12-13 02:10:30', '192.168.137.66', 'Chrome'),
(957, '2019-12-14 05:56:12', '::1', 'Chrome'),
(958, '2019-12-14 10:31:33', '192.168.100.4', 'Chrome'),
(959, '2019-12-14 10:42:56', '192.168.100.27', 'Chrome'),
(960, '2019-12-14 17:00:23', '192.168.100.27', 'Chrome'),
(961, '2019-12-16 05:42:16', '::1', 'Chrome'),
(962, '2019-12-19 14:57:58', '::1', 'Chrome'),
(963, '2019-12-20 00:28:02', '::1', 'Chrome'),
(964, '2019-12-22 03:03:29', '::1', 'Chrome'),
(965, '2019-12-23 03:25:52', '::1', 'Chrome'),
(966, '2019-12-28 07:05:19', '::1', 'Chrome'),
(967, '2019-12-28 23:51:46', '::1', 'Chrome'),
(968, '2019-12-30 00:54:35', '::1', 'Chrome'),
(969, '2020-01-02 06:49:33', '::1', 'Chrome'),
(970, '2020-01-03 00:41:04', '192.168.43.244', 'Chrome'),
(971, '2020-01-03 00:42:15', '192.168.43.171', 'Chrome'),
(972, '2020-01-03 23:41:41', '::1', 'Chrome'),
(973, '2020-01-05 03:16:38', '::1', 'Chrome'),
(974, '2020-01-05 07:58:44', '192.168.100.4', 'Chrome'),
(975, '2020-01-05 07:59:12', '192.168.100.23', 'Chrome'),
(976, '2020-01-05 23:40:22', '::1', 'Chrome'),
(977, '2020-01-07 04:46:53', '::1', 'Chrome'),
(978, '2020-01-08 10:56:48', '::1', 'Chrome'),
(979, '2020-01-09 07:25:17', '::1', 'Chrome'),
(980, '2020-01-10 02:10:36', '::1', 'Chrome'),
(981, '2020-01-10 16:21:34', '192.168.100.4', 'Chrome'),
(982, '2020-01-10 16:21:54', '192.168.100.3', 'Chrome'),
(983, '2020-01-11 01:31:22', '192.168.100.3', 'Chrome'),
(984, '2020-01-12 23:52:02', '::1', 'Chrome'),
(985, '2020-01-16 13:57:36', '::1', 'Chrome'),
(986, '2020-01-17 01:04:15', '192.168.137.152', 'Chrome'),
(987, '2020-01-17 01:42:39', '192.168.137.83', 'Chrome'),
(988, '2020-01-17 01:42:58', '192.168.137.227', 'Chrome'),
(989, '2020-01-17 01:42:59', '192.168.137.214', 'Chrome'),
(990, '2020-01-17 01:43:13', '192.168.137.233', 'Safari'),
(991, '2020-01-18 06:54:47', '::1', 'Chrome'),
(992, '2020-01-19 02:39:02', '::1', 'Chrome'),
(993, '2020-01-21 01:25:53', '::1', 'Chrome'),
(994, '2020-01-22 12:52:48', '::1', 'Chrome'),
(995, '2020-01-23 13:54:34', '::1', 'Chrome'),
(996, '2020-01-23 23:05:37', '::1', 'Chrome'),
(997, '2020-01-24 03:17:03', '192.168.43.244', 'Chrome'),
(998, '2020-01-26 11:59:42', '::1', 'Chrome'),
(999, '2020-01-27 01:53:47', '::1', 'Chrome'),
(1000, '2020-01-28 03:01:29', '::1', 'Chrome'),
(1001, '2020-01-28 06:10:44', '192.168.43.244', 'Chrome'),
(1002, '2020-01-28 06:11:53', '192.168.43.171', 'Chrome'),
(1003, '2020-05-31 01:43:09', '::1', 'Chrome'),
(1004, '2020-06-27 02:16:44', '::1', 'Chrome'),
(1005, '2020-06-27 04:50:49', '192.168.1.2', 'Chrome'),
(1006, '2020-06-27 04:52:05', '192.168.1.9', 'Chrome'),
(1007, '2020-06-27 06:35:16', '192.168.1.3', 'Chrome'),
(1008, '2020-06-28 00:53:56', '::1', 'Chrome'),
(1009, '2020-06-30 12:24:50', '::1', 'Chrome'),
(1010, '2020-07-01 01:46:53', '::1', 'Chrome'),
(1011, '2020-07-02 12:36:10', '::1', 'Chrome'),
(1012, '2020-07-04 15:17:27', '::1', 'Chrome'),
(1013, '2020-07-05 03:04:39', '::1', 'Chrome'),
(1014, '2020-07-05 12:09:21', '192.168.1.5', 'Chrome'),
(1015, '2020-07-05 12:12:42', '192.168.1.3', 'Chrome'),
(1016, '2020-07-09 13:33:56', '::1', 'Chrome'),
(1017, '2020-07-10 06:52:13', '::1', 'Chrome'),
(1018, '2020-07-11 02:15:22', '::1', 'Chrome'),
(1019, '2020-07-19 08:34:44', '192.168.1.4', 'Chrome'),
(1020, '2020-07-19 09:06:51', '192.168.1.6', 'Chrome'),
(1021, '2020-07-19 09:07:57', '192.168.1.13', 'Chrome'),
(1022, '2020-07-20 13:10:27', '192.168.1.13', 'Chrome'),
(1023, '2020-07-20 14:42:56', '192.168.1.6', 'Chrome'),
(1024, '2020-07-21 12:57:41', '192.168.1.13', 'Chrome'),
(1025, '2020-07-22 06:51:22', '192.168.1.47', 'Chrome'),
(1026, '2020-07-22 06:52:47', '192.168.1.68', 'Chrome'),
(1027, '2020-07-23 07:11:44', '192.168.1.87', 'Chrome'),
(1028, '2020-07-23 07:12:49', '192.168.1.108', 'Chrome'),
(1029, '2020-07-23 13:16:03', '192.168.1.10', 'Chrome'),
(1030, '2020-07-23 13:18:13', '192.168.1.7', 'Chrome'),
(1031, '2020-07-24 13:21:33', '::1', 'Chrome'),
(1032, '2020-07-24 23:32:03', '::1', 'Chrome'),
(1033, '2020-07-25 13:19:28', '192.168.1.10', 'Chrome'),
(1034, '2020-07-25 13:21:35', '192.168.1.6', 'Chrome'),
(1035, '2020-07-26 04:19:53', '::1', 'Chrome'),
(1036, '2020-08-03 12:41:55', '192.168.1.4', 'Chrome'),
(1037, '2020-08-03 12:43:12', '192.168.1.8', 'Chrome'),
(1038, '2020-08-04 13:24:19', '192.168.1.4', 'Chrome'),
(1039, '2020-08-05 03:09:25', '::1', 'Chrome'),
(1040, '2020-08-05 04:11:43', '192.168.1.63', 'Chrome'),
(1041, '2020-08-05 05:13:44', '192.168.1.43', 'Chrome'),
(1042, '2020-08-12 12:30:15', '192.168.1.10', 'Chrome'),
(1043, '2020-08-12 12:55:44', '192.168.1.8', 'Chrome'),
(1044, '2020-08-13 01:54:53', '::1', 'Chrome'),
(1045, '2020-08-13 10:10:09', '192.168.1.59', 'Chrome'),
(1046, '2020-08-13 10:12:15', '192.168.1.79', 'Chrome'),
(1047, '2020-08-14 07:35:36', '::1', 'Chrome'),
(1048, '2020-08-15 09:47:53', '::1', 'Chrome'),
(1049, '2020-08-16 02:31:48', '::1', 'Chrome'),
(1050, '2020-08-29 00:18:24', '::1', 'Chrome'),
(1051, '2020-08-29 07:40:34', '127.0.0.1', 'Chrome'),
(1052, '2020-08-30 01:53:17', '192.168.137.1', 'Chrome'),
(1053, '2020-08-30 01:54:45', '192.168.137.249', 'Chrome'),
(1054, '2020-08-30 08:28:49', '::1', 'Chrome'),
(1055, '2020-08-30 08:44:17', '192.168.137.99', 'Chrome');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni`
--

CREATE TABLE `testimoni` (
  `idtestimoni` int(11) NOT NULL,
  `idwisata` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni`
--

INSERT INTO `testimoni` (`idtestimoni`, `idwisata`, `nama`, `email`, `pesan`, `status`, `tgl_post`) VALUES
(44, 16, 'dimas rifalta', 'dimasrifalta9@gmail.com', 'Keren sekali tempat wisatanya', '1', '2020-01-09'),
(45, 16, 'dimas rifalta', 'dimasrifalta9@gmail.com', 'Saya tertarik kesini', '1', '2020-01-17'),
(46, 15, 'dimas rifalta', 'dimasrifalta9@gmail.com', 'saya sangat tertarik kesini', '1', '2020-01-24'),
(47, 16, 'dimas rifalta', 'dimasrifalta9@gmail.com', 'jerjerjer', '1', '2020-07-05'),
(48, 13, 'dimas rifalta', 'dimasrifalta9@gmail.com', 'Gunung tambora saya ingin kesini', '1', '2020-08-30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimoni_order`
--

CREATE TABLE `testimoni_order` (
  `idtestimoni` int(11) NOT NULL,
  `id_order` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `tgl_post` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimoni_order`
--

INSERT INTO `testimoni_order` (`idtestimoni`, `id_order`, `nama`, `email`, `pesan`, `status`, `tgl_post`) VALUES
(2, '0', 'Fauzi Madin', 'fauzimadin9@gmail.com', 'Menjelajahi Indonesia, dengan Jeep penuh pertualangan sejati. SumbawaTourkeren', '1', '2019-12-12'),
(3, '0', 'dimas rifalta', 'dimasrifalta9@gmail.com', 'Alam Indonesia yang tiada duanya, membuat saya kagum. Banyak yang harus di jelajah di negeri ini.', '1', '2019-12-12'),
(4, '0', 'amelia', 'amelia@gmail.com', 'Sangat Puas dengan berwisata dengan sumbawatour , pokoknya keren banget dah..', '1', '2019-12-12'),
(5, '0', 'renata', 'renata@gmail.com', 'Manggumkan sebuah pengalaman besa travel dengan sumbawa tour', '1', '2019-12-12'),
(13, 'INV180120000001', 'dimas rifalta', 'dimasrifalta9@gmail.com', 'Saya sangat puas dengan pelayanan dari sumbawa island tour, tahun depan mau pergi lagi ', '1', '2020-01-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tour_gate`
--

CREATE TABLE `tour_gate` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tour_gate`
--

INSERT INTO `tour_gate` (`id`, `nama`, `no_hp`, `gambar`, `status`) VALUES
(1, 'Surya Abdai1', '088229232921', '8fdf3b6e00d29aaa68b8a7c3a19c6a8a.jpg', 1),
(2, 'damara', '088229232921', '9a1aa66f818b932cda43cc541035c5be.jpg', 3),
(3, 'Nadya rahma', '088229232921', '17a235367dd7800001b6d324ac8c1e12.jpg', 3),
(4, 'amelia', '088229232921', 'ef6d3f5004b2e0fd7e638b5daf15802a.jpg', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_tranksaksi` int(11) NOT NULL,
  `id_order` varchar(15) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `jenkel` varchar(2) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `berangkat` date DEFAULT NULL,
  `kembali` date DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `metode_id` int(11) DEFAULT NULL,
  `paket_id_order` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `kode_booking` varchar(10) NOT NULL,
  `status` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_tranksaksi`, `id_order`, `id_user`, `nama`, `jenkel`, `alamat`, `notelp`, `email`, `berangkat`, `kembali`, `adult`, `kids`, `metode_id`, `paket_id_order`, `keterangan`, `tanggal`, `total`, `date_created`, `no_ktp`, `kode_booking`, `status`) VALUES
(6, 'INV141219000001', 51, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-25', '2019-12-28', 1, 0, 2, 5, '323532', '2019-12-14', 550000, '2019-12-15 16:12:37', '2412412412412421', 'B4S4Z7', 'LUNAS'),
(7, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(8, 'INV291219000002', 51, 'dimas rifalta', 'La', 'weewcwc', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 5, 5, '', '2019-12-29', 550000, '2019-12-29 15:50:20', '2412412412412421', 'X8XJ4K', 'LUNAS'),
(9, 'INV291219000002', 51, 'dimas rifalta', 'La', 'weewcwc', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 5, 5, '', '2019-12-29', 550000, '2019-12-29 15:50:20', '2412412412412421', 'X8XJ4K', 'LUNAS'),
(10, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(11, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(12, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(13, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(14, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(15, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(16, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(17, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(18, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(19, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(20, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(21, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(22, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(23, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(24, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(25, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(26, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(27, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(28, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(29, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(30, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(31, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(32, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(33, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(34, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(35, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(36, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(37, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(38, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(39, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(40, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(41, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(42, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(43, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(44, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(45, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(46, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(47, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(48, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(49, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(50, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(51, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(52, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(53, 'INV291219000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2019-12-29', 550000, '2019-12-30 18:09:50', '2412412412412421', '154NHI', 'LUNAS'),
(54, 'INV020120000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 6, 5, 'tttttt', '2020-01-02', 550000, '2020-01-02 14:15:14', '2412412412412421', '950S1K', 'LUNAS'),
(55, 'INV020120000002', 51, 'dimas rifalta', 'La', 'sariasih bandung jawa barat indonesia1', '088229232921', 'dimasrifalta9@gmail.com', '2019-12-28', '2019-12-30', 1, 0, 2, 5, '', '2020-01-02', 550000, '2020-01-02 17:39:49', '2412412412412421', '2IT65Z', 'LUNAS'),
(56, 'INV060120000001', 51, 'dimas rifalta', 'La', 'sariasih bandung jawa barat indonesia', '088229232921', 'dimasrifalta9@gmail.com', '2020-01-08', '2020-01-11', 7, 0, 2, 5, '', '2020-01-06', 3675000, '2020-01-18 21:15:55', '2412412412412421', 'IWQT5V', 'LUNAS'),
(57, 'INV100120000001', 51, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta9@gmail.com', '2020-01-24', '2020-01-26', 3, 0, 2, 5, '', '2020-01-10', 1575000, '2020-01-10 10:36:32', '2412412412412421', '7WODWF', 'LUNAS'),
(58, 'INV070120000001', 51, 'damara', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'damara@gmail.com', '2020-02-08', '2020-03-01', 1, 0, 2, 5, '', '2020-01-07', 525000, '2020-01-10 10:38:52', '2412412412412421', 'KALFQL', 'LUNAS'),
(59, 'INV170120000001', 53, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimascloud3@gmail.com', '2020-01-24', '2020-01-26', 6, 0, 2, 5, '', '2020-01-17', 3150000, '2020-01-17 08:56:20', '2412412412412421', 'C4WHNK', 'LUNAS'),
(60, 'INV060120000001', 51, 'dimas rifalta', 'La', 'sariasih bandung jawa barat indonesia', '088229232921', 'dimasrifalta9@gmail.com', '2020-01-08', '2020-01-11', 7, 0, 2, 5, '', '2020-01-06', 3675000, '2020-01-18 21:15:55', '2412412412412421', 'IWQT5V', 'LUNAS'),
(61, 'INV060120000001', 51, 'dimas rifalta', 'La', 'sariasih bandung jawa barat indonesia', '088229232921', 'dimasrifalta9@gmail.com', '2020-01-08', '2020-01-11', 7, 0, 2, 5, '', '2020-01-06', 3675000, '2020-01-18 21:15:55', '2412412412412421', 'IWQT5V', 'LUNAS'),
(62, 'INV070120000002', 51, 'amelia', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'amelia@gmail.com', '2020-02-08', '2020-03-01', 7, 0, 2, 5, '', '2020-01-07', 3675000, '2020-01-18 21:20:54', '2412412412412421', 'PF1KOA', 'LUNAS'),
(63, 'INV180120000001', 51, 'dimas rifalta', 'La', 'sumedang', '088229232921', 'dimasrifalta9@gmail.com', '2020-02-08', '2020-02-08', 5, 0, 2, 3, '', '2020-01-18', 8825000, '2020-01-18 21:42:58', '2412412412412421', 'HR36RH', 'LUNAS'),
(64, 'INV240120000001', 51, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta9@gmail.com', '2020-01-26', '2020-01-29', 3, 1, 5, 7, 'SAYA INGIN MOBILNYA BESARAN DIKIT', '2020-01-24', 5840000, '2020-01-24 10:27:39', '2412412412412421', '77HCHO', 'LUNAS'),
(65, 'INV280120000001', 51, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta9@gmail.com', '2020-02-08', '2020-02-09', 1, 0, 2, 5, 'saya sangat ingin kesini', '2020-01-28', 525000, '2020-01-28 13:08:13', '2412412412412421', 'ARSA2Q', 'LUNAS'),
(66, 'INV220720000001', 62, 'dimas', 'La', 'sariasih bandung', '0824527257362', 'dimasrifalta9@gmail.com', '2020-07-24', '2020-08-08', 1, 0, 2, 3, '', '2020-07-22', 1765000, '2020-07-22 09:08:01', '12223456789', 'KIVGK2', 'LUNAS'),
(67, 'INV110720000001', 51, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta@gmail.com', '2020-07-13', '2020-08-08', 1, 0, 5, 3, '', '2020-07-11', 1765000, '2020-07-25 02:04:44', '2412412412412421', 'PKM9RC', 'LUNAS'),
(68, 'INV050820000001', 65, 'Dimas Rifalta', 'La', 'Bandung', '085685569888', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 3, 0, 2, 6, '', '2020-08-05', 4254000, '2020-08-05 06:52:53', '17765677876555', '1P2T8D', 'LUNAS'),
(69, 'INV050820000002', 65, 'Dimas', 'La', 'Bandung', '085464464979', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 1, 0, 2, 6, '', '2020-08-05', 1418000, '2020-08-15 16:22:02', '7949484848484844', 'PBULN2', 'LUNAS'),
(70, 'INV050820000001', 65, 'Dimas Rifalta', 'La', 'Bandung', '085685569888', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 3, 0, 2, 6, '', '2020-08-05', 4254000, '2020-08-05 06:52:53', '17765677876555', '1P2T8D', 'LUNAS'),
(71, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-08-05 06:44:05', '', '1W5G9S', 'LUNAS'),
(72, 'INV050820000001', 65, 'Dimas Rifalta', 'La', 'Bandung', '085685569888', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 3, 0, 2, 6, '', '2020-08-05', 4254000, '2020-08-05 06:52:53', '17765677876555', '1P2T8D', 'LUNAS'),
(73, 'INV050820000001', 65, 'Dimas Rifalta', 'La', 'Bandung', '085685569888', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 3, 0, 2, 6, '', '2020-08-05', 4254000, '2020-08-05 06:52:53', '17765677876555', '1P2T8D', 'LUNAS'),
(74, 'INV050820000001', 65, 'Dimas Rifalta', 'La', 'Bandung', '085685569888', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 3, 0, 2, 6, '', '2020-08-05', 4254000, '2020-08-05 06:52:53', '17765677876555', '1P2T8D', 'LUNAS'),
(75, 'INV130820000001', 65, 'dimas rifalta', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta@gmail.com', NULL, NULL, 1, 0, 2, 5, '', '2020-08-13', 525000, '2020-08-13 04:18:43', '2412412412412421', 'T77EZP', 'LUNAS'),
(76, 'INV130820000002', 65, 'dimas', 'La', 'Bandung', '0854979797557', 'dimasrifalta@gmail.com', '2020-08-16', '2020-08-17', 9, 0, 5, 5, '', '2020-08-13', 4725000, '2020-08-13 12:34:50', '3737373777', '7SLXIA', 'LUNAS'),
(77, 'INV050820000002', 65, 'Dimas', 'La', 'Bandung', '085464464979', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 1, 0, 2, 6, '', '2020-08-05', 1418000, '2020-08-15 16:22:02', '7949484848484844', 'PBULN2', 'LUNAS'),
(78, 'INV130820000003', 65, 'dimas', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta@gmail.com', '2020-08-16', '2020-08-17', 1, 0, 2, 5, 'tes', '2020-08-13', 525000, '2020-08-13 14:19:45', '2412412412412421', 'ZX66CK', 'LUNAS'),
(79, 'INV130820000003', 65, 'dimas', 'La', 'Jln.bandung raya lembang, bandung barat jawa barat', '088229232921', 'dimasrifalta@gmail.com', '2020-08-16', '2020-08-17', 1, 0, 2, 5, 'tes', '2020-08-13', 525000, '2020-08-13 14:19:45', '2412412412412421', 'ZX66CK', 'LUNAS'),
(80, 'INV150820000001', 65, 'Nadya rahma', 'Pe', 'sariasih bandung jawa barat indonesia1', '088229232921', 'dimasrifalta@gmail.com', '2020-08-18', '2020-08-19', 3, 0, 2, 5, '', '2020-08-15', 1575000, '2020-08-15 13:23:33', '2412412412412421', '1IOS1O', 'LUNAS'),
(81, 'INV150820000001', 65, 'Nadya rahma', 'Pe', 'sariasih bandung jawa barat indonesia1', '088229232921', 'dimasrifalta@gmail.com', '2020-08-18', '2020-08-19', 3, 0, 2, 5, '', '2020-08-15', 1575000, '2020-08-15 13:23:33', '2412412412412421', '1IOS1O', 'LUNAS'),
(82, 'INV050820000002', 65, 'Dimas', 'La', 'Bandung', '085464464979', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 1, 0, 2, 6, '', '2020-08-05', 1418000, '2020-08-15 16:22:02', '7949484848484844', 'PBULN2', 'LUNAS'),
(83, 'INV050820000002', 65, 'Dimas', 'La', 'Bandung', '085464464979', 'dimasrifalta@gmail.com', '2020-08-07', '2020-08-10', 1, 0, 2, 6, '', '2020-08-05', 1418000, '2020-08-15 16:22:02', '7949484848484844', 'PBULN2', 'LUNAS'),
(84, 'INV300820000003', 67, 'dimas new', 'La', 'Airsuning', '048484548484', 'dimasrifalta9@gmail.com', '2020-09-02', '2020-09-05', 5, 0, 2, 7, '', '2020-08-30', 10000000, '2020-08-30 11:31:33', '6444488732363636', 'HNZP0J', 'LUNAS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'adminsumbawatour', 'admin@gmail.com', 'default.jpg', '$2y$10$GtzWVbxDei93slkx0JEdNu44VMOvw6hpTBkLpcuSubvumpxkKK5ni', 1, 1, 1593311761),
(65, 'dimas', 'dimasrifalta@gmail.com', 'default.jpg', '$2y$10$QoKOEGG.8eoXeT5pXZjvAuhUF2n6Kwsuht49dd7C.HbkqGCFJlX2S', 2, 1, 1595510872),
(67, 'dimas new', 'dimasrifalta9@gmail.com', 'default.jpg', '$2y$10$ZF9uPUS5m7WD3dfc.d0Bt.H8H5Z6QWxWwyEj3dyyu06zuAZz3MbMS', 2, 1, 1598777226);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(45, 'dimasrifalta1998@gmail.com', '0cYKNfY48RE37R0EZLWHOoM4dFt/VdkIAAlp8KJCO3A=', 1597550076),
(46, 'dimasrifalta@gmail.com', 'PYeKRlf0kedIOwlksOLRQRl7rk7QrrS9RPT4/fkvcCI=', 1597550964);

-- --------------------------------------------------------

--
-- Struktur dari tabel `wisata`
--

CREATE TABLE `wisata` (
  `idwisata` int(11) NOT NULL,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `wisata`
--

INSERT INTO `wisata` (`idwisata`, `nama_wisata`, `deskripsi`, `gambar`) VALUES
(13, 'Gunung Tambora', '<p>Gunung Ini Menyimpan Keindahan Alam yang Sangat Menakjubkan</p>\r\n\r\n<p>Indonesia terkenal memiliki gunung berapi yang masih aktif. Namun, ternyata gunung-gunung tersebut menyimpan beberapa keindahan alam yang masih sangat asri dan akan disayangkan jika anda lewatkan. Salah satunya ialah wisata Gunung Tambora di Kabupaten Bima, Pulau Sumbawa, Nusa Tenggara Barat. Gunung Tambora adalah salah satu gunung yang cukup terkenal di kalangan para pendaki baik dari Indonesia maupun dari manca negara. Gunung Tambora menjadi destinasi wajib bagi para pecinta wisata ketinggian.</p>\r\n\r\n<p>Dengan ketinggian 2.851 meter di atas permukaan laut, gunung ini menyimpan keindahan alam yang sangat menakjubkan. Dengan susah payah anda mendaki, takkan pulang dengan tangan hampa. karena pesona alam yang ada di Gunung Tambora terbilang unik. &nbsp;Gunung ini dijuluki sebagai gunung dengan kawah terbesar di Indonesia atau biasa di sebut dengan the Greatest Crater In Indonesia. Kawah di gunung ini mempunyai lebar 7 kilometer, dengan keliling 18 kilometer dan kedalaman 800 meter.</p>\r\n\r\n<p>Selain itu, Gunung Tambora juga mempunyai keindahan alam lainnya yang tak kalah menakjubkan. Disini terdapat padang pasir yang sangat luas yang berada di sepanjang bibir kawah gunung ini. Di sepanjang bibir kawah juga ditumbuhi oleh bunga edelweiss yang tumbuh dengan berjauhan sekitar 1,5 meter sampai 100 meter. Ditambah dengan batuan-batuan berlapis yang sangat indah. Batu-batu berlapis tersebut bagian atasnya datar seperti meja yang membuat fenomena alam tersendiri. Yang membuat menarik, dari gunung ini anda bisa melihat keindahan lautan, kawah, pulau satonda dan juga padang pasir yang sangat indah.</p>\r\n\r\n<p>Selain itu kawasan ini juga menjadi dua kawasan untuk konservasi, yaitu Tambora Utara Wildlife Reserve yang memiliki luas 80.000 hektar dan Tambora Selatan Hunting Park dengan luas 30.000 hektar. Dengan hal tersebut, gunung ini menyimpan banyak kekayaan dari flora maupun fauna. Gunung Tambora sangat kaya sekali dengan beranekaragaman flora dan fauna. Flora dan fauna yang tinggal di gunung antara lain seperti alang-alang, edelwies, ixora, perdu anggrek dan untuk faunanya seperti rusa timur, kera berekor panjang, Agas dan masih banyak lainnya. Pada tahun 1815 pernah terjadi ledakan dasyat di gunung ini yang membuat kawah dengan lebar yang sangat besar.</p>\r\n\r\n<p>Untuk melakukan pendakian biasanya pendaki akan melalui jalur resmi yaitu di Desa Pancasila. Banyak alternatif angkutan yang bisa anda gunakan untuk menuju ke Desa Pancasila ini. Salah satunya jika anda berada di Dompu, anda dapat naik angkot yang berwarna kuning terlebih dahulu untuk menuju ke terminal Dompu. Setibanya di Terminal Dompu anda dapat mencari bus umum yang akan menuju ke Desa Pancasila. setelah tiba di Desa Pancasila anda dapat melanjutkan perjalanan dengan berjalan kaki untuk menuju pintu rimba.</p>\r\n\r\n<p>Dari Desa Pancasila pendakian baru dimulai, perjalanan tahap pertama akan menuju Pos I. Normalnya jika berjalan kaki akan menempuh waktu sekitar empat jam perjalanan. Selama perjalanan anda akan melewati perkebunan kopi penduduk sampai menuju pintu rimba, pohon-pohon besar di sisi kiri dan kanan jalan akan sering anda lihat sampai akhirnya tiba di Pos I. Disini terdapat sebuah pondok dan sumber air yang merupakan bocoran dari pipa yang menuju ke Desa. Selanjutnya perjalanan akan menuju ke Pos II, perjalanan ini akan melalui jalur bekas aliran sungai dengan kondisi hutan yang sangat lebat. Dapat di tempuh dengan waktu normal sekitar satu jam perjalanan.</p>\r\n\r\n<p>Dari sini perjalanan akan dilanjutkan kembali menuju Pos III dengan waktu tempuh sekitar tiga jam. Kondisi jalurnya akan lebih sulit karena semakin menanjak dan berliku, selain itu banyak tumbuhan Jelatang yang apabila terkena kulit dapat menyebabkan gatal. Kondisi semakin sulit dengan banyaknya pohon-pohon besar yang tumbang menghadang jalur. Jadi persiapkan tenaga ekstra dan tetap berhati-hatilah saat berjalan. Setibanya di Pos III biasanya pendaki akan bermalam disini. Tersedia lahan datar yang cukup lapang untuk mendirikan tenda dan sekitar 500 meter ke bawah terdapat pula sumber air yang berupa genangan air tadah hujan. Sumber air disini adalah yang terakhir yang bisa anda jumpai, jadi persiapkanlah bekal anda secukupnya sebelum akan melanjutkan pendakian.</p>\r\n\r\n<p>Dini hari sekitar pukul 02.00 WITA biasanya pendaki akan mulai melanjutkan pendakian untuk melihat matahari terbit di puncak. Sebelumnya perjalanan akan dilanjutkan menuju Pos IV dengan waktu tempuh sekitar satu jam perjalanan. Kondisi jalurnya cukup landai dengan hutan lebat di sisi kiri dan kanan jalur, anda harus tetap berhati-hati karena disini banyak terdapat tumbuhan Jelatang. Kemudian perjalanan dilanjutkan menuju Pos V dengan waktu tempuh yang hanya sekitar 30 menit. Di jalur ini tumbuhan Jelatang sudah mulai berkurang dan pemandangan pun sudah lebih terbuka.</p>\r\n\r\n<p>Dari Pos V tujuan selanjutnya adalah menuju bibir kawah Gunung Tambora dengan waktu tempuh sekitar dua jam perjalanan. Setibanya di bibir kawah anda akan menyaksikan pemandangan yang sungguh sangat luar biasa indahnya. Dijamin cukup untuk membayar semua penat yang dirasakan. Sebuah kawah yang bernama Doro Afi Toi dengan telaga yang berwarna hijau di dasarnya terlihat sangat jelas di depan mata, belum lagi keindahan batuan yang berlapis-lapis di sepanjang tebingnya pasti akan membuat anda terpukau. jika anda melihat ke arah Barat akan nampak sebuah bukit kecil.</p>\r\n\r\n<p>Bukit itulah yang merupakan puncaknya Gunung Tambora . Perjalanan menuju Puncak memakan waktu sekitar 30 menit dan dari puncak sinilah pemandangan akan semakin luas. Anda bisa melihat keseluruhan dari daerah di nusa tenggara barat, kawah gunung dan juga telaga hijau di dasar kawah akibat letusan dasyat pada zaman dulu. Gunung Tambora merupakan gunung yang menyimpan banyak keindahan luar biasa. Pesona kawahnya yang sungguh sangat besar dijamin akan membuat anda terpukau kala melihatnya secara langsung.</p>\r\n', '05004fc0df60387bc6d9cbf3f2dc1861.jpg'),
(14, 'Pulau Kenawa', '<p>Akses untuk sampai ke pulau Kenawa adalah via pelabuhan Kayangan. Dari Mataram ke Pelabuhan Kayangan tentunya butuh waktu ber jam-jam voyagers! Lagi-lagi silahkan buka peta Lombok yak. Coba liat dari ujung Barat ke ujung Timur. Helaaaaw super sekali. Nah, ketika sampai di pelabuhan Kayangan yang dilakukan yaitu nitipin motor nih guys. 1 motor biayanya 10.000 rupiah/hari. Tapi kalau kamu mau keliling Sumbawa berarti kamu harus ikut nyebrangin motor sampai Pototano dengan biaya sekitar 54.000 rupiah/motor.</p>\r\n\r\n<p>Penyeberangan dari pelabuhan Kayangan ke Kenawa ga langsung alias harus transit. Jadi, Penyebrangan dilakukan dari Pelabuhan Kayangan (kapal Ferry) ke Pelabuhan Pototano kurang lebih 1,5 jam. Sampai di Pelabuhan Pototano kami lanjut naik kapal warga yang sebelumnya sudah kami hubungi pemilik kapalnya.</p>\r\n\r\n<p>pulau kenawa island - akses ke pulau kenawa</p>\r\n\r\n<p>Penyebrangan dari pelabuhan Pototano ke pulau Kenawa hanya membutuhkan waktu 25-35 menit. Ah sebentar kook. Hahay, memang sebentar tapi sensasinya kadang membuat deg-degan. Kala itu, saya dan strangers menyebrang saat cuaca sudah mendung dan rintik hujan mulai membasahi bumi ditambah lagi bulan sudah menyambut (yes you&rsquo;re right, it was night).</p>\r\n\r\n<p>Awalnya memang ga yakin, karena seketika hujan sempat turun. Hujan waktu itu tidak deras namun cukup membuat saya ciut untuk melakukan penyebrangan dengan kapal warga a.k.a perahu nelayan gitu.</p>\r\n\r\n<p>Bismilahirrohmanirrohim, setelah hujan sedikit reda dan ombak sedikit tenang kami melakukan penyebrangan.</p>\r\n\r\n<p>Wisata Pulau Kenawa<br />\r\nAkhirnya kami sampai di pulau Kenawa, betapa senangnya kami dan tak sabar untuk meyambut pagi di pulau private ini.</p>\r\n\r\n<p>wisata pulau kenawa island<br />\r\nSampai di sana kami langsung mendirikan tenda dan mulai memasak. Masak apa yaa? Mie adalah jawaban paling tepat untuk para backpacker yang baru pertama kali camping hehehehe.</p>\r\n\r\n<p>pulau kenawa island - backpacker ke pulau kenawa</p>\r\n\r\n<p>Deburan ombak di tepi pantai waktu itu sangat kencang, angin mulai menggerayangi kaki-kaki kami, dan menggoyang tenda, sampai pada akhirnya tenda kami patah di pagi hari.</p>\r\n\r\n<p>Oh ya mau mengingatkan sebelum asik-asikan di pulau ini, pastikan kalian minta dijemput sesuai dengan jam yang kalian tentukan keesokan harinya. Jangan hanya mengandalkan sms saja, karena sinyal sangat sulit didapat ketika di Kenawa.</p>\r\n\r\n<p>Pagi hari adalah waktu yang paling kami nanti. Akan ada momen paling indah di atas puncak bukit Kenawa. Tanpa berlama-lama kami langsung naik ke puncak Bukit sebelum sinar emasnya pergi meninggalkan kami.</p>\r\n\r\n<p>pulau kenawa island sunrise di kenawa</p>\r\n\r\n<p>Ini lah kehangatan pagi yang kami dapatkan dari pelukkan yang diberikan sang surya. Keindahan yang cukup simple. Orang-orang mungkin akan berkata, akan ada yang lebih baik dari sun rises di Kenawa. Memang bukan sun rises nya yang kami ingin kan namun seberapa tangguh kami dapat menaklukan pulau ini, dengan singgah walaupun hanya sehari saja bersama orang-orang yang baru saja saling kenal.</p>\r\n\r\n<p>pulau kenawa island</p>\r\n\r\n<p>Menikmati keindahan yang cukup simple, namun membuat hati tak bisa move on. Alam memang selalu menyajikan yang terbaik. Keindahan pulau Kenawa tak berhenti sampai pada sunrises nya, hamparan rumput hijau yang mengelilinginya juga semakin menambahkan kecantikan pulau Kenawa, bahkan kecantikannya tak hilang walaupun diterpa musim kemarau.</p>\r\n\r\n<p>pulau kenawa island - landscape</p>\r\n\r\n<p>Tak hanya itu, keindahan pantai di pulau Kenawa mampu menyejukan hati, biru lautnya bahkan bisa mengusir hati yang sedang biru hahaha.</p>\r\n\r\n<p>Tapi saya mau ingetin kalau di pulau Kenawa tidak tersedia sumber air bersih. Air bersih yang ada di pulau Kenawa dijual dalam bentuk gallon seharga 15.000 rupiah. So, sedia air bersih sebelum melakukan penyebrangan ke pulau cantik ini.</p>\r\n', '1961ebc90b81825ac4304c3a5a838af7.jpg'),
(15, 'Pulau Moyo', '<p>Membicarakan pariwisata di Indonesia memang tidak pernah ada habisnya. Terutama tentang wisata alamnya. Kali ini, The Langkah Travel akan bercerita kembali mengenai objek wisata di Provinsi Nusa Tenggara Barat (NTB), tepatnya di Pulau Moyo.</p>\r\n\r\n<p>Nama Pulau Moyo semakin dikenal setelah sejumlah selebriti kelas dunia melakukan perjalanan wisatanya ke sana. Sebut saja mendiang Putri Diana, Mick Jagger, Edwin van der Sar, serta baru-baru ini Rain dan Kim Tae Hee pernah berkunjung ke pulau ini.</p>\r\n\r\n<p>Sebuah pulau yang terletak sejauh 2,5 km dari utara Pulau Sumbawa ini memiliki luas sebesar 350 km2, ketinggian maksimum 671 meter, dan garis pantai 88 km.</p>\r\n\r\n<p>Bagaimana Mencapai Pulau Moyo?<br />\r\nLalu, setelah berada di Pulau Sumbawa, bagaimana caranya agar bisa tiba di Pulau Moyo. Jangan khawatir, teman-teman cukup menyewa boat seharga 1,5 juta (slow boat) atau 3 juta (fast boat) untuk diantarkan pulang pergi secara khusus.</p>\r\n\r\n<p>Biaya sebesar itu tentu termasuk terjangkau jika dipakai berangkat bersama-sama. Namun tidak jika kalian melakukan perjalanan dalam kelompok yang jauh lebih kecil.</p>\r\n\r\n<p>Alternatifnya adalah dengan mengikuti perahu warga (public boat) yang rutin mengantar warga dari Pulau Moyo berbelanja atau berjualan ke Pasar di Sumbawa. Untuk yang satu ini, kalian hanya perlu mengeluarkan biaya sebesar 50 ribu per orangnya.</p>\r\n\r\n<p>Public boat akan menyeberang dari dermaga Muara Kali yang terletak di Labuhan Sumbawa menuju Pulau Moyo sekitar Pukul 11.00 dengan waktu tempuh kurang lebih 2 jam. &nbsp;Cukup lama ya? Dibawa asyik aja ya teman-teman, namanya juga perjalanan wisata. Kalau gak asyik, gak bisa dinikmati. Bener gak?</p>\r\n\r\n<p>Apa saja yang bisa dilakukan di Pulau Moyo?<br />\r\nBerkunjung ke Pulau Moyo berarti melakukan perjalanan secara komplit. Ya, pulau ini menawarkan destinasi wisata lengkap mulai dari hutan tropis, lautan yang indah, air terjun yang memukau, dan masih banyak lagi.</p>\r\n\r\n<p>Pulau Moyo NTB</p>\r\n\r\n<p>Untuk urusan air terjun misalnya, siapa sih yang tidak mengenal air terjun Mata Jitu? Sebuah air terjun ternama di Pulau Moyo yang meskipun sangat susah dicapai, namun akan membuat kita tak henti-hentinya terpukau saat melihatnya langsung.</p>\r\n\r\n<p>Ya, air terjun Mata Jitu adalah salah satu dari sekian banyak hasil karya Sang Pencipta. Anda tidak akan percaya jika belum melihatnya langsung. Hijaunya pepohonan di sekitarnya, aliran air terjun, kolam-kolam alami bertingkat menjadi paket komplit dari keindahan air terjun Mata Jitu itu sendiri.</p>\r\n\r\n<p>Berikut beberapa tips yang bisa anda lakukan saat &nbsp;berkunjung ke Pulau Moyo:</p>\r\n\r\n<p>Lama Berkunjung<br />\r\nJika anda menggunakan public boat yang berangkat pukul 11.00 pagi dari Dermaga Muara Kali, anda akan tiba pukul 14.00 di Pulau Moyo. Sebaiknya anda menginapa dua malam di Pulau Moyo.</p>\r\n\r\n<p>Mengapa?</p>\r\n\r\n<p>Penyeberangan kembali dari Pulau Moyo menuju Sumbawa hanya ada pukul 06.00 pagi setiap harinya.</p>\r\n\r\n<p>Jika anda tiba di Pulau Moyo pukul 14.00 siang (kadang molor sampai pukul 16.00) dan harus kembali keesokan harinya jam 06.00 pagi, kami jamin anda tidak akan dapat apa2. Hanya capeknya saja.</p>\r\n\r\n<p>Jadi, cobalah menginap selama 2 malam dan khususkan sehari untuk explore Pulau Moyo. Anda bisa membangun tenda di pinggir pantai atau bermalam di beberapa homestay di Pulau Moyo dengan kisaran harga mulai Rp 200.000 &ndash; Rp 500.000 / kamar / malam.</p>\r\n\r\n<p>Sightseeing<br />\r\nJika anda sudah berada di Pulau Moyo, anda bisa menuju Air Terjun Mata Jitu dan Air Terjun Diwu Mbai.</p>\r\n\r\n<p>Ada dua cara menuju Air Terjun Mata Jitu.</p>\r\n\r\n<p>Pertama, anda yang tidak punya waktu banyak bisa menyewa ojek dengan tarif Rp 100.000 per orang. Perjalanan yang ditempuh sekitar 30 menit.</p>\r\n\r\n<p>Kedua, jika anda punya banyak waktu dan berencana berlama-lama, berjalan kaki menuju air terjun bisa menjadi pilihan yang menyehatkan. Dua jam tidak akan berasa karena anda dikelilingi oleh hutan-hutan.</p>\r\n\r\n<p>Wisata Pulau Moyo</p>\r\n\r\n<p>Saat berada di Air Terjun Mata Jitu, jangan lupa menuju Queen Waterfall yang berjarak 10 menit dari air terjun. Disinilah Lady Diana pernah menghabiskan waktunya.</p>\r\n\r\n<p>Setelah puas di Air Terjun Mata Jitu anda bisa seru-seruan di Air Terjun Diwu Mbai.</p>\r\n\r\n<p>Air Terjun Diwu Mbai bisa anda tempuh dengan ojek dari Desa Labuan Aji dengan tambahan biaya Rp 50.000.</p>\r\n\r\n<p>Di Air Terjun Diwu Mbai anda bisa mandi sepuasnya di air yang sangat jernih dan segar. Ada tali yang bisa anda gunakan untuk lompat dan terjatuh di segarnya air Diwu Mbai. Seru banget deh pokoknya.</p>\r\n\r\n<p>Setelah mengeksplore dua air terjun tersebut, anda bisa ke dermaga Labuan Aji dan cobalah untuk bertanya pada nelayan setempat untuk mengantar anda snorkeling di sekitaran Takat Sagale.</p>\r\n\r\n<p>Takat Sagale merupakan sebuah pulau kecil yang terdiri atas gundukan karang mati yang hanya terlihat saat air laut sedang surut.</p>\r\n\r\n<p>Jadi, eksplore dua air terjun dan snorkeling di Takat Sagale menghabiskan waktu seharian. Dijamin puas deh pokoknya.</p>\r\n', 'cc8b4ff93aa605acbcc3f2c53bbee441.jpg'),
(16, 'Air Terjun Mata Jitu', '<p>Tersembunyi di balik Hutan Pulau Moyo, Kabupaten Sumbawa, Nusa Tenggara Barat, gemercik air sayup-sayup terdengar dalam kesunyian alam. Air Terjun Mata Jitu, air terjun yang keindahannya bisa memukau siapa saja yang datang ke kawasan ini.</p>\r\n\r\n<p>Pemandangan asri lengkap dengan pepohonan hijau alami membuat Air Terjun Mata Jitu menjadi primadona di Pulau Moyo. Air terjun yang telah menjadi bagian cagar alam Indonesia ini konon telah terbentuk jutaan tahun lalu. Perpaduan air terjun yang berwarna hijau tua dan muda seakan-akan menghipnotis Anda untuk menceburkan diri dan bermain air di dalam air terjun ini.</p>\r\n\r\n<p>Air Terjun Mata Jitu memiliki empat undak dan tujuh kolam. Oleh penduduk setempat, &ldquo;mata jitu&rdquo; diartikan sebagai mata air yang jatuhnya tepat mengenai kolam di bawahnya.</p>\r\n\r\n<p>Keindahan Air Terjun Mata Jitu terkenal hingga ke manca negara. Bahkan, mendiang Putri Diana pernah berkunjung ke air terjun ini. Masyarakat sekitar pun menjuluki air terjun ini dengan sebutan &ldquo;Queen Waterfall&rdquo;.</p>\r\n\r\n<p>Untuk mencapai Air Terjun Mata Jitu, pengunjung bisa menyewa perahu nelayan dari Desa Ai Bari di Sumbawa. Dengan waktu tempuh 2 jam perjalanan, Anda akan disuguhi pemandangan Pulau Moyo yang mempesona.</p>\r\n\r\n<p>Sesampainya di Desa Ai Bari, perjalanan dilanjutkan dengan menggunakan ojek motor selama 20 menit atau berjalan kaki selama 1,5 jam. Selama perjalanan menuju air terjun, kita akan disuguhi pemandangan savana dan perbukitan yang indah.</p>\r\n\r\n<p>Keindahan air terjun berundak-undak ini tidak hanya pada air yang turun dari atas. Bebatuan yang telah terbentuk sejak ribuan tahun lalu juga dapat disaksikan di sini.</p>\r\n\r\n<p>Stalaktit-stalagmit yang menghiasi permukaan dinding Air Terjun Mata Jitu menambah indah pemandangan yang tersaji. Bentuk stalaktit dan stalagmit yang beragam menjadi daya tarik tersendiri bagi siapapun yang melihatnya.</p>\r\n', '531df0856f20e353c477a40ab2808617.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ac_messages`
--
ALTER TABLE `ac_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ac_profiles`
--
ALTER TABLE `ac_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ac_settings`
--
ALTER TABLE `ac_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ac_users_messages`
--
ALTER TABLE `ac_users_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_id` (`users_id`,`buddy_id`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`idalbum`);

--
-- Indeks untuk tabel `available_tour`
--
ALTER TABLE `available_tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paket_tour` (`id_paket_tour`);

--
-- Indeks untuk tabel `batal_token`
--
ALTER TABLE `batal_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`idberita`),
  ADD KEY `adminid` (`user`);

--
-- Indeks untuk tabel `diskon_tour`
--
ALTER TABLE `diskon_tour`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paket` (`id_paket`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`),
  ADD KEY `albumid` (`albumid`),
  ADD KEY `id_paket` (`id_paket`);

--
-- Indeks untuk tabel `kategori_paket`
--
ALTER TABLE `kategori_paket`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `metode_bayar`
--
ALTER TABLE `metode_bayar`
  ADD PRIMARY KEY (`id_metode`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `paket_id_order` (`paket_id_order`),
  ADD KEY `metode_id` (`metode_id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`idpaket`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `pembatalan`
--
ALTER TABLE `pembatalan`
  ADD PRIMARY KEY (`id_pembatalan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `metode_id_bayar` (`metode_id_bayar`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`idtestimoni`);

--
-- Indeks untuk tabel `testimoni_order`
--
ALTER TABLE `testimoni_order`
  ADD PRIMARY KEY (`idtestimoni`);

--
-- Indeks untuk tabel `tour_gate`
--
ALTER TABLE `tour_gate`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_tranksaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `wisata`
--
ALTER TABLE `wisata`
  ADD PRIMARY KEY (`idwisata`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ac_messages`
--
ALTER TABLE `ac_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `ac_profiles`
--
ALTER TABLE `ac_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `ac_settings`
--
ALTER TABLE `ac_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `ac_users_messages`
--
ALTER TABLE `ac_users_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `idalbum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `available_tour`
--
ALTER TABLE `available_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `batal_token`
--
ALTER TABLE `batal_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `idberita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `diskon_tour`
--
ALTER TABLE `diskon_tour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `kategori_paket`
--
ALTER TABLE `kategori_paket`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `metode_bayar`
--
ALTER TABLE `metode_bayar`
  MODIFY `id_metode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `paket`
--
ALTER TABLE `paket`
  MODIFY `idpaket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pembatalan`
--
ALTER TABLE `pembatalan`
  MODIFY `id_pembatalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1056;

--
-- AUTO_INCREMENT untuk tabel `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `idtestimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `testimoni_order`
--
ALTER TABLE `testimoni_order`
  MODIFY `idtestimoni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tour_gate`
--
ALTER TABLE `tour_gate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_tranksaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `wisata`
--
ALTER TABLE `wisata`
  MODIFY `idwisata` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD CONSTRAINT `galeri_ibfk_1` FOREIGN KEY (`albumid`) REFERENCES `album` (`idalbum`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`paket_id_order`) REFERENCES `paket` (`idpaket`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `paket`
--
ALTER TABLE `paket`
  ADD CONSTRAINT `paket_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori_paket` (`id_kategori`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
