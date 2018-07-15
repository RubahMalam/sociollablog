/*
Navicat MariaDB Data Transfer

Source Server         : localhost_3306
Source Server Version : 100110
Source Host           : localhost:3306
Source Database       : sociolla

Target Server Type    : MariaDB
Target Server Version : 100110
File Encoding         : 65001

Date: 2018-07-15 13:05:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `comment_id` int(4) NOT NULL AUTO_INCREMENT,
  `comment_name` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_body` text NOT NULL,
  `comment_date` date NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `post_id_fk` (`ID`),
  CONSTRAINT `post_id_fk` FOREIGN KEY (`ID`) REFERENCES `tbl_post` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('9', 'Hotdin Gurning', 'gurningku@gmail.com', 'Wah, tulisan yang sangat menarik.', '2018-07-12', '33');
INSERT INTO `comment` VALUES ('10', 'Hotdin Gurning', 'gurningku@gmail.com', 'hello', '2018-07-12', '39');

-- ----------------------------
-- Table structure for tags
-- ----------------------------
DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(100) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tag_id`),
  KEY `tags_fk` (`post_id`),
  CONSTRAINT `tags_fk` FOREIGN KEY (`post_id`) REFERENCES `tbl_post` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tags
-- ----------------------------
INSERT INTO `tags` VALUES ('27', 'Budaya', '32');
INSERT INTO `tags` VALUES ('28', 'Tips dan Trik', '32');
INSERT INTO `tags` VALUES ('29', 'Teknologi', '32');
INSERT INTO `tags` VALUES ('30', 'Kehidupan', '33');
INSERT INTO `tags` VALUES ('31', 'Tips dan Trik', '33');
INSERT INTO `tags` VALUES ('32', 'Teknologi', '33');
INSERT INTO `tags` VALUES ('36', 'Kehidupan', '35');
INSERT INTO `tags` VALUES ('37', 'Tips dan Trik', '35');
INSERT INTO `tags` VALUES ('38', 'Teknologi', '35');
INSERT INTO `tags` VALUES ('40', 'Media Sosial', '40');
INSERT INTO `tags` VALUES ('41', 'Interpersonal Skill', '40');
INSERT INTO `tags` VALUES ('42', 'Programming', '40');
INSERT INTO `tags` VALUES ('43', 'Kehidupan', '38');
INSERT INTO `tags` VALUES ('44', 'Tips dan Trik', '38');
INSERT INTO `tags` VALUES ('45', 'Teknologi', '38');
INSERT INTO `tags` VALUES ('46', 'Teknologi', '34');
INSERT INTO `tags` VALUES ('47', 'Programming', '34');
INSERT INTO `tags` VALUES ('48', 'Keluarga', '34');
INSERT INTO `tags` VALUES ('49', 'Pekerjaan dan Karir', '34');
INSERT INTO `tags` VALUES ('50', 'Interpersonal Skill', '34');
INSERT INTO `tags` VALUES ('51', 'Seni', '34');
INSERT INTO `tags` VALUES ('52', 'Programming', '36');
INSERT INTO `tags` VALUES ('53', 'Seni', '36');
INSERT INTO `tags` VALUES ('54', 'Kesehatan', '36');
INSERT INTO `tags` VALUES ('55', 'Teknologi', '36');
INSERT INTO `tags` VALUES ('56', 'Programming', '39');
INSERT INTO `tags` VALUES ('57', 'Tips dan Trik', '39');
INSERT INTO `tags` VALUES ('58', 'Keluarga', '39');
INSERT INTO `tags` VALUES ('59', 'Ilmu', '39');
INSERT INTO `tags` VALUES ('60', 'Disiplin', '39');
INSERT INTO `tags` VALUES ('61', 'Media Sosial', '39');
INSERT INTO `tags` VALUES ('62', 'Teknologi', '37');
INSERT INTO `tags` VALUES ('63', 'Keluarga', '37');
INSERT INTO `tags` VALUES ('64', 'Kesehatan', '37');
INSERT INTO `tags` VALUES ('65', 'Disiplin', '37');
INSERT INTO `tags` VALUES ('66', 'Budaya', '37');
INSERT INTO `tags` VALUES ('67', 'Masa Depan', '37');
INSERT INTO `tags` VALUES ('68', 'Keluarga', '40');
INSERT INTO `tags` VALUES ('69', 'Musik', '40');

-- ----------------------------
-- Table structure for tbl_post
-- ----------------------------
DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE `tbl_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` varchar(75) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  `featured_image` text,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_post
-- ----------------------------
INSERT INTO `tbl_post` VALUES ('32', 'Pengaruh Pendidikan Terhadap Kualitas Anak Pedalaman', 'Hotdin Gurning', '2018-07-12', 'Bukan rahasia lagi bila anak-anak yang tinggal di daerah pedalaman sangat sulit mendapatkan kehidupan yang layak seperti anak-anak pada umumnya. Mereka kesulitan mendapat air bersih, mengenyam pendidikan sesuai batas kelayakan pendidikan Indonesia dan sulit mengikuti perkembangan zaman. Tak hanya itu saja , mereka bahkan tidak mengenal alat komunikasi seperti telepon genggam.\r\n\r\nHal pokok yang menjadi sorotan utama yaitu betapa sulitnya mereka mendapat pendidikan yang layak dan mengenyam pendidikan dua belas tahun. Pada faktanya tak semua salah mereka, kesulitan mereka menjangkau lokasi sekolah menjadi masalah karena mereka harus mengarungi sungai. Mereka juga harus berjalan kaki hingga berpuluh-puluh kilo meter, bahkan ada pula yang tak memakai alas kaki.\r\n\r\nKurangnya tenaga pengajar di pedalaman karena sulitnya mencari pengajar yang mau mengajar di daerah tersebut juga sangat disayangkan. Padahal kualitas seseorang diukur melalui seberapa jauh pendidikan yang dicapai karena kualitas seorang lulusan SD berbeda dengan kualitas seorang sarjana. Sehingga dapat disimpulkan bahwa pendidikan sangat memengaruhi kualitas seorang anak pedalaman.', 'http://localhost/myblog/uploads/CDn2sIpXIAABbpS.jpg');
INSERT INTO `tbl_post` VALUES ('33', 'Manfaat Madu Bagi Kesehatan', 'Dyah Rahmawati', '2018-07-12', 'Madu adalah hasil produksi dari hewan lebah yang kini telah dikenal lebih jauh karena khasiatnya bagi kesehatan yang melimpah.Takheranjikamadubanyakdigunakanuntukpengobatanberbagaimacampenyakit. Adapunmanfaat madu, yaitu:\r\n\r\na. Manfaat madu untuk kesehatan kulit wajah\r\n\r\nMadu tak hanya dikenal sebagai pemanis alami, madu juga memiliki manfaat lain yang dapat digunakan untuk kesehatan kulit khususnya kulit wajah. Madu dipercaya dapat digunakan untuk penghilang jerawat, namun perlu ditambahkan dengan beberapa bahan lain seperti jeruk nipis. Madu pun dapat dimanfaatkan untuk mengecilkan pori-pori wajah dan menghaluskan kulit wajah.\r\n\r\nb. Madu sebagai penghilang batuk\r\n\r\nManfaat madu sebagai penghilang batuk tak hanya isapan jempol belaka yang tiada buktinya, namun manfaat ini dibuktikan dengan jurnal pula. Jurnal itu telah dirilis pada tahun 2007 dengan sampel anak-anak sebanyak 270 orang. Hasil dari penelitian yaitu dengan meminum satu sendok madu sebelum mereka tidur intensitas batuk yang terjadi mengalami penurunan.\r\n\r\nc. Madu sebagai peningkat kekebalan tubuh\r\n\r\nDi dalam madu ada aneka nutrisi yang begitu kompleks mulai dari vitamin hingga aneka mineral yang dibutuhkan tubuh. Tak heran bila kini banyak para orang tua yang mempercayai madu untuk diberikan kepada anak-anak mereka. Alasan para orang tua memberikan madu yaitu untuk menjaga kesehatan sang anak terutama untuk meningkatkan kekebalan tubuh dan stamina.\r\n\r\nd. Madu sebagai pembunuh bakteri\r\n\r\nDi dalam madu ada suatu zat yang memiliki fungsi memperlambat laju bakteri bahkan mematikan bakteri tersebut sehingga tubuh terhindarkan penyakit. Telah dibuktikan pada suatu studi bila madu efektif membasmi bakteri dalam tubuh seperti E. Coli, Salmonella dan bakteri lain sejenisnya. Maka dari itu, khasiat dari madu tak perlu diragukan lagi.', 'http://localhost/myblog/uploads/579_itokt-bIpSF4_(1).jpg');
INSERT INTO `tbl_post` VALUES ('34', 'Kebakaran Hutan di Indonesia', 'Anastasia Dopler', '2018-07-12', 'Indonesia adalah suatu negara dengan iklim tropis yang terdiri dari ribuan pulau. Walaupun daratan Indonesia tak seluas lautannya, hutan di Indonesia sangat banyak mulai dari ujung Aceh yaitu Sabang hingga Merauke (Papua). Beberapa tahun terakhir kebakaran di Indonesia kerap terjadi, hal itu disebabkan dua faktor yaitu faktor alam dan buatan (manusia).\r\n\r\nMengenai faktor alam memang tak ada yang dapat disalahkan, namun mengenai faktor buatan yaitu manusia itulah hal yang perlu dievaluasi. Manusia kini telah kehilangan kesadarannya hingga mereka melakukan hal-hal yang merugikan banyak pihak diantaranya merugikan lingkungan hidup contohnya hutan. Hutan adalah habitat dari ribuan spesies makhluk hidup yang saling bergantungan.\r\n\r\nMaka dari itu, aksi manusia membakar hutan untuk memenuhi maksud dari dalam dirinya sendiri memang perlu diadili. Alasan mereka melakukan pembakaran hutan beragam mulai dari ingin membuka lahan tanam baru hingga berdirinya gedung-gedung bertingkat. Namun, hal yang disayangkan yaitu betapa mereka tak memikirkan aneka flora dan fauna yang tinggal di dalam hutan tersebut.\r\n\r\nFlora dan fauna di dalam hutan akan melarikan diri bahkan akan mati hangus terbakar api yang berkobar karena ulah manusia. Mereka akan kehilangan habitat aslinya dan akibat dari hal tersebut yaitu larinya para satwa ke pemukiman penduduk. Mereka merasa tak lagi memiliki rumah yang dapat mereka tempati sehingga jalan terakhir ialah lari ke pemukiman warga sekitar.\r\n\r\nTak heran bila akhir-akhir ini kasus ditemukannya hewan liar seperti macan dan singa di pemukiman warga sering dikabarkan. Seperti kata pepatah bahwa apa yang kita lakukan akan berbalik ke diri sendiri, maka berbuatlah sesuatu yang baik. Sedangkan faktor alam dari kebakaran hutan yaitu musim kemarau dan adanya sambaran petir saat hujan.\r\n\r\nMusim memang tak dapat diprediksi manusia, sehingga bila musim kemarau tiba dengan jangka waktu yang sangat panjang itu wajar. Namun, hal itu memengaruhi keadaan hutan karena hutan yang setiap hari disinari matahari terik dapat menimbulkan percikan api. Hal ini juga serupa bila terjadi petir lalu petir tersebut menyambar suatu bagian hingga timbul percikan api.', 'http://localhost/myblog/uploads/51aMTpjTGoL__SX300_QL70_.jpg');
INSERT INTO `tbl_post` VALUES ('35', 'Fenomena Lelaki Tulen Berpenampilan Bagai Seorang Wanita', 'Anastasia Dopler', '2018-07-12', 'Bagi Anda yang mengikuti perkembangan berita masa kini khususnya berita di kalangan selebriti pastinya sudah sering dibahas lelaki seperti wanita. Secara lebih jelasnya, sesungguhnya mereka adalah seorang laki-laki yang entah mengapa bergaya bak seorang wanita. Mereka mengenakan baju atau pakaian yang identik dengan para perempuan bahkan hingga memakai make up cantik pula.\r\n\r\nEntah apa yang ada di dalam pikiran mereka hingga mereka mengganti seluruh penampilan tubuhnya dari ujung rambut hingga kaki. Namun, ada banyak cara yang dapat dilakukan agar Anda dan orang-orang sekitar Anda jauh dari fenomena buruk ini. Caranya, yaitu:\r\n\r\n1. Perdalam agama yang diyakini\r\n\r\nSejak lahir yang telah dimiliki ialah agama yang terbawa sejak dalam kandungan Ibu dan juga sesuai dengan agama orang tua. Agama adalah suatu pondasi paling dalam untuk menjalani kehidupan yang terus berjalan. Tanpa agama, seseorang dapat kehilangan arah tujuan hidup dan tak mengerti akan kemana arahnya. Sehingga, keinginan berganti kelamin pun dapat terjadi.\r\n\r\n2. Jaga lingkup pergaulan\r\n\r\nKini, lingkup pergaulan sudah terjalin luas dan dapat terjalin antar belahan benua satu dengan belahan benua lainnya. Seperti contoh seseorang dapat berkomunikasi atau bahkan memiliki keakraban dengan seseorang beda negara. Pergaulan yang terlalu luas dan bebas juga menjadi sebab dari fenomena janggal ini. Pergaulan menjadikan mereka tak peduli dengan agama.\r\n\r\nMelalui dua cara di atas setidaknya seseorang dapat membentengi diri dari hal-hal yang menentang takdir dan melawan kodrat. Setiap orang harus percaya dengan apa yang dimiliki dirinya sendiri sehingga tidak akan terpikir untuk menjadi jenis lain. Seorang laki-laki harus percaya bahwa suatu saat ia mampu memimpin suatu keluarga dengan baik dan perempuan harus yakin dapat menjadi Ibu yang mendidik.', 'http://localhost/myblog/uploads/57f774fb55e6d.jpg');
INSERT INTO `tbl_post` VALUES ('36', 'Fenomena Pelakor (Perebut Laki Orang) atau Perebut Suami Orang', 'Hotdin Gurning', '2018-07-12', 'Pada zaman dahulu, memang dari sebagian besar para pria mempunyai lebih dari seorang istri bahkan dapat menikah berkali-kali. Namun, seiring berjalannya waktu kesetiaan mulai tumbuh hingga hal itu berubah menjadi suatu yang biasa. Seperti halnya yang telah dicontohkan mantan Presiden kita, yaitu Bapak Habibie yang setia sehidup semati dengan Almarhumah Ibu Ainun.\r\n\r\nKemudian belakangan ini muncul lagi suatu hal yang pernah ada di masa lalu yaitu adanya istri yang lebih dari satu. Perempuan yang menjadi istri kedua dikenal dengan sebutan pelakor atau perebut laki orang (perebut suami orang). Para pelakor yang “terciduk” para istri sah atau istri pertama pasti akan viral di dunia maya karena istri sah mengungkapkan hal itu melalui curhatan.\r\n\r\nCurhatan itu lalu dibaca banyak orang hingga akhirnya booming, setelah itu sang pelakor akan mendapat ribuan hujatan dari para netizen. Hujatan itu bukan tak beralasan, sesama kaum wanita tentunya akan mampu merasakan hal yang sama dengan para istri sah. Wanita memang lebih mementingkan perasaan ketimbang logikanya, sehingga kejadian itu bukan suatu yang mengherankan.', 'http://localhost/myblog/uploads/alat2.jpg');
INSERT INTO `tbl_post` VALUES ('37', 'Berita Telur Palsu yang Telah Beredar di Masyarakat', 'Hotdin Gurning', '2018-07-12', 'Beberapa bulan yang lalu, masyarakat Indonesia dikejutkan dengan berita sensasional yaitu munculnya telur palsu di pasaran berbagai wilayah. Penyebar berita ini memberikan ciri-ciri telur palsu yaitu tidak memberi bau amis, putih telurnya encer dan warna merahnya pudar. Tak lama setelah beredarnya berita itu, seluruh warga langsung heboh hingga penjualan telur pedagang menurun.\r\n\r\nBeredarnya berita itu tak hanya merugikan pedagang, namun juga merugikan seluruh kalangan karena telur merupakan hasil hewani protein terbaik. Sejak dahulu, telur memang dipercaya memiliki kandungan protein yang baik bagi tubuh selain ikan-ikan dari laut. Tak heran bila telur diolah ke berbagai macam jenis makanan mulai dari telur goreng, telur balado hingga semur telur.\r\n\r\nNamun, perlu diketahui bagi seluruh pembaca bahwa berita tentang telur palsu itu adalah hoax atau berita yang tak memiliki kebenaran. Oknum-oknum tak bertanggung jawab sengaja mempublikasikan berita palsu demi tujuan dan maksud pribadi yang menguntungkan bagi mereka. Sehingga, kini semua orang yang perlu khawatir untuk kembali membeli telur dan mengkonsumsinya setiap hari.\r\n\r\nNah itulah contoh artikel yang menarik. Mulai dari contoh artikel di koran, contoh artikel pendidikan, contoh artikel ilmiah, contoh artikel kesehatan, contoh artikel singkat, contoh artikel panjang, contoh artikel adiwiyata, contoh artikel ekonomi, contoh artikel lingkungan hidup, contoh artikel pemanasan global, contoh artikel tentang narkoba, contoh artikel sekolah, dll.', 'http://localhost/myblog/uploads/3-bully-paling-menyakiti-uang-rupiah-baru-dari-palu-arit-hingga-mirip-yuan-MfsMbN2UfY.jpg');
INSERT INTO `tbl_post` VALUES ('38', 'Cara Membuat Makalah yang Baik dan Benar', 'Anastasia Dopler', '2018-07-12', 'Bagi sebagian orang khususnya pelajar Sekolah Dasar hingga Sekolah Menengah Atas dan mahasiswa pasti tak asing dengan kata makalah. Makalah adalah sebuah karya yang ditulis dan memiliki sifat ilmiah dan di dalamnya berisi pembahasan mengenai suatu topik tertentu. Makalah dibuat dengan aturan-aturan tertentu yang dilandasi suatu teori atau penelitian yang telah dilakukan di lapangan.\r\n\r\nStruktur pembuatan makalah yaitu dimulai dari halaman depan atau cover, kata pengantar, daftar isi, bab-bab, dan kesimpulan serta daftar pustaka. Pada halaman depan ditampilkan judul makalah, nama penulis, dan tambahan lain seperti gambar logo atau sejenisnya. Bagian kedua yaitu kata pengantar yang di dalamnya berisi ucapan terima kasih dan harapan ke berbagai pihak.\r\n\r\nPada bagian ketiga yaitu daftar isi yang jelas di dalamnya berisi letak-letak halaman materi yang ada di makalah. Bagian selanjutnya yaitu bab-bab, bagian ini terdiri dari bab I pendahuluan yang berisi latar belakang, rumusan masalah dan tujuan. Pada bab II berisi tentang pembahasan mengenai rumusan masalah dan hal-hal yang bersangkutan lainnya.', 'http://localhost/myblog/uploads/Inilah-5-Orang-yang-Tidak-Layak-Dijadikan-Teman.jpg');
INSERT INTO `tbl_post` VALUES ('39', 'Pengertian Daur Ulang Lengkap dengan Manfaat dan Cara Mengolahnya !', 'Anastasia Dopler', '2018-07-12', 'Barang – barang bekas dapat anda gunakan untuk daur ulang dan anda olah menjadi barang – barang yang berguna. Anda dapat memanfaatkan barang – barang bekas di sekitar kita untuk membuka lapangan kerja baru dan menjaga kelestarian dan kebersihan lingkungan di sekitar kita. Selain itu anda dapat menjadi seorang pengusaha.\r\n\r\nBahan – bahan yang dapat anda gunakan untuk melakukan daur ulang antara lain adalah plastik bekas, botol bekas kertas bekas dan lain – lain. Oleh karena itu, anda disarankan untuk memisahkan antara sampah yang dapat diuraikan dan sampah yang tidak dapat diuraikan oleh bakteri. Sampah yang tidak dapat diuraikan dapat digunakan untuk bahan daur ulang, contohnya plastik.\r\n\r\nBerikut ini ulasan lengkap seputar daur ulang. Mulai dari Pengertian daur ulang, manfaat daur ulang, kerajinan daur ulang, daur ulang sampah, daur ulang bahan bekas, daur ulang plastik, daur ulang limbah, daur ulang kertas, dll.', 'http://localhost/myblog/uploads/diri-sendiri.jpg');
INSERT INTO `tbl_post` VALUES ('40', 'Aplikasi Perekam Layar Terbaik untuk Android dan PC !', 'Hotdin Gurning', '2018-07-12', 'Ponsel android adalah produk dari kemajuan teknologi yang sangat pesat. Disebut juga sebagai ponsel pintar, perangkat ini bisa melakukan hampir semua hal. Tidak hanya melakukan panggilan, berkirim pesan, mengakses berbagai sosial media, atau melakukan transaksi, ponsel ini selalu bisa diandalkan. Namun, tahukah Anda bahwa sekarang tersedia aplikasi perekam layar yang bisa memudahkan kinerja Anda?\r\n\r\nDengan kemampuan untuk merekam segala aktivitas yang terjadi di layar ponsel, Anda dapat membuat tutorial, merekam video ataupun streaming permainan. Jika Anda belum terlalu familiar dengan fitur yang satu ini, ada baiknya untuk menyimak berbagai jenis aplikasi untuk merekam layar yang bisa Anda pasang pada ponsel Android. \r\n\r\nBerikut ini adalah ulasan singkat tentang Aplikasi perekam layar android, aplikasi perekam layar pc, aplikasi perekam layar terbaik, aplikasi perekam layar hp samsung, asus, iphone, xiaomi, oppo, dll', 'http://localhost/myblog/uploads/hipwee-memaafkan-1-750x422.jpg');

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active_since` date NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('2', 'admin', '$2a$12$Gsu.d/pNW2ReELGDkKu9BOE5zeYSOQM1VF0lxbpnzaZxQlsTloBTu', '2018-07-12');
INSERT INTO `tbl_user` VALUES ('7', 'hotdin', '$2a$12$5pbkogvmpB2RuFw7tos9YuaPBYEVgy0CynljYaJ9xWvA7YQwT4YDC', '2018-07-12');

-- ----------------------------
-- Table structure for testi
-- ----------------------------
DROP TABLE IF EXISTS `testi`;
CREATE TABLE `testi` (
  `testi_id` int(11) NOT NULL AUTO_INCREMENT,
  `name_testi` varchar(100) NOT NULL,
  `email_testi` varchar(150) NOT NULL,
  `testi` text NOT NULL,
  PRIMARY KEY (`testi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testi
-- ----------------------------
INSERT INTO `testi` VALUES ('9', 'Hotdin Gurning', 'gurningku@gmail.com', 'Hai, Ini adalah testimoni dari sendiri untuk diri sendiri');
INSERT INTO `testi` VALUES ('10', 'Anastasia Dopler', 'anastasia@dopler.com', 'Wah, ternyata blog kamu mayan juga yaa. hehehe...');
INSERT INTO `testi` VALUES ('11', 'Kaka Slank', 'kaka@slank.com', 'Halo, boleh posting tentang bandku di blog mu?');
INSERT INTO `testi` VALUES ('12', 'Albert Einstein', 'albert@einstein.com', 'Sukses terus ya din. Hehehe');
INSERT INTO `testi` VALUES ('13', 'Amanda Franciska', 'amanda.rogantina@gmail.com', 'Kita putus aja ya. Aku dah bosen. hehehe..');
INSERT INTO `testi` VALUES ('14', 'Asti Claretta', 'asti@gmail.com', 'Hai, denger-denger kamu baru putus ya? Oh iya, aku sekarang lagi jomblo loh. FYI aja sih. hehe..');
