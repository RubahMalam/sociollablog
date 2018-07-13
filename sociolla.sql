/*
Navicat MariaDB Data Transfer

Source Server         : localhost_3306
Source Server Version : 100110
Source Host           : localhost:3306
Source Database       : sociolla

Target Server Type    : MariaDB
Target Server Version : 100110
File Encoding         : 65001

Date: 2018-07-12 21:49:42
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
-- Table structure for tbl_post
-- ----------------------------
DROP TABLE IF EXISTS `tbl_post`;
CREATE TABLE `tbl_post` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` varchar(75) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  `featured_image` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_post
-- ----------------------------
INSERT INTO `tbl_post` VALUES ('32', 'Mengapa Kucing Lucu?', 'Hotdin Gurning', '2018-07-12', 'Saya pernah membaca di sebuah website tentang kucing. Katanya dulu mereka bisa berbicara dan mereka tingkah lakunya bukan seperti yang sekarang ini.\r\n\r\nNah loh!\r\n\r\nIya. Kucing lucu karena tidak hanya anjing yang bisa mengeluarkan ekspresi imut namun coba bayangkanlah jika kita menemukan kucing yang tingginya sama seperti kita karena berdiri, bisa bicara dan mengeluarkan ekspresi yang lebih kompleks lagi. Apakah imej imut itu masih akan melekat pada hewan bernama kucing?\r\n\r\nWaduh! Mati kutu tak ya aku ini nanti? Siap-siap menganga.', 'http://localhost/myblog/uploads/CDn2sIpXIAABbpS.jpg');
INSERT INTO `tbl_post` VALUES ('33', 'Perkataan seseorang yang paling saya ingat', 'Dyah Rahmawati', '2018-07-12', 'Saya punya kebiasaan untuk tidak meminta bantuan orang lain, kecuali kalau benar-benar terdesak. Bukan karena saya malu untuk meminta, tetapi saya merasa akan membebani orang lain dan akan merepotkan mereka. Itulah juga yang selalu ada dalam pikiran saya, saya lebih memilih untuk diam ketika dirundung masalah.\r\n\r\nSayangnya, saya tidak bisa bercerita kepada orang tua saya, juga kepada orang lain. Masalah yang terlalu lama saya pendam itu, berdampak buruk kepada kesehatan mental saya. Semakin lama masalah tersebut menggerogoti pikiran saya, dan berimbas kepada hubungan dengan sahabat saya. Saya bertengkar cukup hebat dengan dia. Ingin sekali saya bercerita tentang apa yang saya alami, tetapi dengan mindset -merepotkan orang lain- yang saya punya membuat saya enggan bercerita. Tetapi sepertinya dia bisa merasakan ada yang berbeda dengan saya. Ada satu hal yang dia katakan saat itu\r\n\r\n“Dyah, membahagiakan orang yang kamu peduli bukan hanya memberikan bantuan, tapi juga dengan menerima bantuannya. Kamu cuma butuh untuk buka hati kamu, biarin aku bantu kamu. Biarin aku bahagia melihat kamu bahagia lagi.”\r\n\r\nSaya tersadar saat itu. Menerima bantuan bukanlah tanda kelemahan. Meminta bantuan (pada beberapa hal), bukanlah sesuatu yang merepotkan orang lain. Saya tersadar, meminta dan menerima bantuan adalah tanda kasih sayang saya kepada mereka, orang terdekat saya. Tanda bahwa ada orang lain di sana, yang tak perduli seberapa merepotkannya bantuan itu, mereka senang bisa ada untuk saya.\r\n\r\nTerima kasih teruntuk sahabat yang telah menarik saya dari masa-masa kelam menghadapi depresi. Membuka diri untuk meminta pertolongan itu berat, tetapi menghadapi dan membawa beban sendirian, itu jauh lebih berat lagi.\r\n\r\nUntuk teman-teman yang sedang berjuang melawan ‘monster’ di dalam dirimu itu. Percayalah masih ada yang peduli denganmu. Masih ada orang di sana yang mengkhawatirkanmu, baik terang-terangan ataupun diam-diam. Yang kamu bisa lakukan adalah jujur kepada dirimu sendiri.', 'http://localhost/myblog/uploads/579_itokt-bIpSF4_(1).jpg');
INSERT INTO `tbl_post` VALUES ('34', 'Alasan orang Indonesia memakan mie dengan nasi', 'Anastasia Dopler', '2018-07-12', 'Saya senang rasa nasi yang tawar sedikit manis bercampur dengan bumbu lezat Indomie.\r\n\r\nKalau makan hanya Indomie saja, rasanya ada yang kurang. Terlalu asin, terlalu berbumbu. Tapi jika dibarengi nasi, rasanya jadi seimbang. Tidak terlalu berbumbu, dan yang pasti… lebih kenyang.\r\n\r\nMakan Indomie dengan nasi mengingatkan saya pada bekal zaman saya masih kecil. Saya suka dibekalkan nasi, Indomie, dan telur mata sapi. Terkadang saya memakan makanan yang sama untuk alasan nostalgia.\r\n\r\nTetapi ini hanya berlaku untuk Indomie/mie instan. Untuk mie pada umumnya, biasanya saya makan tanpa nasi. Pertama, karena rasanya aneh dan tidak cocok. Kedua, mie (bukan mie instan) dicampur nasi mengingatkan saya pada makanan di sekolah sewaktu TK. Saya tidak suka rasa mie yang mereka masak ditambah lagi harus dimakan bersama nasi. Sudah tidak enak, aneh pula.', 'http://localhost/myblog/uploads/51aMTpjTGoL__SX300_QL70_.jpg');
INSERT INTO `tbl_post` VALUES ('35', 'Hal-hal yang kamu rindukan di masa lalu', 'Anastasia Dopler', '2018-07-12', 'Ada beberapa potongan adegan manis yang terekam di kepala saya.\r\n\r\nSejak kecil, saya nggak tinggal sama papa. Jadi kita hanya ketemu kalau papa sempat datang mengunjungi saya di rumah kakek. Sekitar dua minggu sekali atau sebulan sekali. Waktu-waktu yang saya habiskan bersama papa itu yang indah.\r\n\r\nHal-hal kecil seperti tidur siang barengan. Biasanya papa pulang kerja itu pukul 4.30. Dia selalu capek dan bakalan tidur sampai malam. Jadi saya akan ikutan tidur di bawah ketiaknya sampai kira-kira pukul 8. Saya suka melihat jam dan menghitung berapa lama lagi waktu tersisa.\r\n\r\nKadang saya sengaja nggak membangunkan papa supaya bisa menikmati waktu tidur itu lebih lama. Karena kalau sudah 8.30 itu artinya sudah terlalu malam dan papa harus pulang ke rumahnya.\r\n\r\nSelepas papa pulang, saya senang mengendus bantal karena ada bau minyak rambut papa.\r\n\r\nSekarang tentunya akan sangat aneh untuk tidur siang lagi bersamanya.\r\n\r\nSetiap tahun, saya merayakan ulang tahun bersama teman-teman terdekat. Perayaan ulang tahun yang sederhana, hanya mengundang dua sampai tiga orang teman ke rumah lalu tiup lilin dan makan kue bersama.\r\n\r\nPapa senang memamerkan prestasi menyanyi saya di depan teman-teman. Jadi, setiap kali merayakan ulang tahun, papa akan memajang piala-piala kemenangan saya di atas meja yang dijajarkan dengan kado ulang tahun dari teman-teman yang datang.\r\n\r\nPerayaan ulang tahun itu berhenti di usia saya yang kesembilan. Dan semakin dewasa, saya nggak lagi merasa perlu merayakannya. Tapi di satu sisi, saya merindukan masa-masa itu.\r\n\r\nSepanjang hidupnya, kakek saya senang memelihara burung. Burung-burung peliharaannya ditaruh di kandang berjejer di halaman rumah yang sempit. Meskipun begitu, kakek selalu membawa pulang burung baru setiap kali berkunjung ke pasar burung.\r\n\r\nDia akan menanyakan padaku dan sepupuku, burung ini akan dinamakan siapa. Saya ingat kakek membawa pulang burung hantu warna cokelat abu-abu. Sepupuku menamainya Atuk. Saya sangat tidak setuju. Tapi kakek menyukainya. Jadi kami memanggil burung itu Atuk. Nama yang sangat jelek.\r\n\r\nSaya juga senang saat ada burung yang sakit dan kami memerhatikan kakek merawatnya. Kami dengan serius melihat kakek menyuapi obat ke dalam paruh burung yang kecil. Saya dan sepupu saya kebagian menyuapinya nasi. Lucu sekali. Di rumah, kami nggak diizinkan memelihara hewan. Jadi kami sangat senang diikutsertakan dalam peran singkat merawat burung itu.\r\n\r\nSaya kangen dengan hal-hal kecil yang kami lakukan bersama.\r\n\r\nPapa saya senang melatih saya bernyanyi. Beberapa bulan sekali, saya akan didaftarkan lomba menyanyi di mall. Saya sangat senang karena itu artinya, papa akan lebih sering datang ke rumah untuk melatih saya bernyanyi.\r\n\r\nBiasanya kami latihan di kamar. Saya akan beli kaset kosong untuk saya merekam suara saat latihan. Nantinya akan didengar lagi untuk dianalisa. Mana kekurangan saya, mana kekuatan saya. Saya akan menyanyi sebebas-bebasnya. Biasanya papa akan mendengarkan saya menyanyi sambil tiduran di kasur dan menutup mata. “Papa, jangan tidur!” Lalu papa akan melek dan bilang, “Papa nggak tidur. Papa lagi dengar, tutup mata biar konsentrasi.”\r\n\r\nIni masuk dalam daftar kenangan indah saya di masa lalu yang jauh. Kalau diingat-ingat, saya seakan membaca cerita orang lain karena memori ini semakin lama semakin meredup. Tidak sejelas saat baru terjadi. Saya terus menerus mengingatnya dan menuliskannya agar saya nggak lupa.\r\n\r\nSaya juga merindukan saat-saat saya menyanyi di atas panggung. Di stadion besar yang dikelilingi ribuan orang. Saya menikmati detik-detik di mana saya berdiri di atas panggung, dikelilingi musisi dan alat-alat musik, menggenggam mikrofon, menatap mereka yang jauh di sana, dan menyampaikan pesan lewat lagu yang saya nyanyikan.\r\n\r\nIni membuat dada saya berdegup kencang dan menjadi sangat bergairah. Saat mengontrol suara dan mencapai nada tertinggi dengan sukses, saya merasakan kemenangan dan kesenangan yang bergelora. Sampai-sampai seluruh tubuh saya seperti mengeluarkan uap panas.\r\n\r\nAda satu hal lagi yang saya rindukan di masa lalu. Saat saya dan teman-teman satu komplek bermain di hari liburan sekolah. Pagi-pagi teman saya akan berteriak memanggil nama saya lalu membunyikan bel sepedanya.\r\n\r\nSaya yang masih mengantuk langsung melonjak dan mengambil sepeda tanpa repot-repot cuci muka atau sikat gigi. Saya akan bermain sampai maghrib. Di antaranya, saya akan main petak umpet, tak jongkok, tak nyamuk, dan permainan lari-larian lain yang membuat saya harus mandi saat pulang.\r\n\r\nTak lupa memanjat pohon, pagar rumah, mengulum bunga-bunga manis di jalanan, memberi makan kucing, membaca komik di halaman rumah teman yang besar, dan main masak-masakan dengan bahan-bahan dedaunan dan tanah.\r\n\r\nIni agak aneh, tapi saya merindukan saat-saat terluka dan mengelupaskan koreng di sikut dan lutut. Sering terjadi. Saya sering berlari, kebut-kebutan sepeda, dan bermain sepatu roda sampai terguling dan berdarah-darah. Saya kangen sekali rasanya bermain sampai terluka dan tidak khawatir sama sekali soal bekas luka dan lamanya penyembuhan.\r\n\r\nSaya kangen saat-saat bermain tanpa rasa takut akan apa pun. Kalau sekarang saya melakukannya, saya akan memikirkan biaya yang akan saya tanggung sendiri akibat luka dan waktu-waktu yang terbuang karena tidak bisa bekerja.\r\n\r\nBanyak sekali yang saya kangenin dari masa lalu yang semuanya terjadi waktu masih kecil. Tapi mendingan saya berhenti di sini daripada kamu lelah membacanya.\r\n\r\nAh, masa kecil memang menyenangkan. Dipikir-pikir, saya bersyukur sekali mengalami masa-masa yang begitu aktif sambil dikelilingi teman-teman, dan keluarga (dan tak lupa kucing-kucing liar).', 'http://localhost/myblog/uploads/57f774fb55e6d.jpg');
INSERT INTO `tbl_post` VALUES ('36', 'Hal yang tidak bisa dibuktikan dengan sains', 'Hotdin Gurning', '2018-07-12', 'ains tidak bisa membuktikan bahwa Tuhan itu ada, dan pada saat yang bersamaan sains juga tidak bisa membuktikan bahwa Tuhan itu tidak ada. Salah satu scientist dan juga jenius yang berusaha membuktikan bahwa Tuhan itu tidak ada adalah Stephen Hawking. Hawking mengatakan bahwa Tuhan adalah kesenjangan. Bahkan menurutnya manusia tidak memerlukan keberadaan Tuhan dan segala teori tentang keberadaan Tuhan dapat dibuktikan dengan ilmu pengetahuan. Sehingga dia membuat beberapa teori untuk membuktikan bahwa tidak ada intervensi Tuhan dalam pembentukan dunia. Tapi itu hanya teori, artinya masih bisa dipatahkan dan belum bisa dibuktikan kebenarannya secara mutlak. Hawking sendiri sempat merilis sebuah buku yang menceritakan keberadaan Tuhan. Sempat dicekal, namun tetap rilis di Amerika Serikat dan Inggris.', 'http://localhost/myblog/uploads/alat2.jpg');
INSERT INTO `tbl_post` VALUES ('37', 'Hal Terbaik Yang Bisa Dibeli Dengan Uang', 'Hotdin Gurning', '2018-07-12', 'Ketika kuliah semester 4, saya memutuskan bekerja untuk mengisi waktu luang. Ketika mendapat gaji pertama (yang sangat kecil) saya kepikiran untuk membeli Ibu saya hadiah kecil. Setiap ada acara, ke kondangan atau kebaktian hari minggu di Gereja beliau selalu menggunakan lipstick. Sebagai anak laki-laki, saya tidak tahu lipstick yang bagus itu seperti apa. Tapi menurut saya waktu itu, semakin merah semakin bagus. Saya beli lipstick di supermarket di samping kampus. Saya lupa merknya, tapi yang jelas warnanya merah banget. Saya kasih ke Ibu saya dan bilang bahwa itu adalah hadiah karena saya baru saja menerima gaji pertama. Saya melihat kebahagiaan yang luar biasa di wajah ibu. Besoknya, dia menggunakan lipstick itu pada kebaktian hari Minggu di Gereja. Terlihat bahagia sekali. Sampai saat ini, lipstick merah merona itu adalah hal terbaik yang pernah saya beli dengan uang.\r\n\r\nKita semua tau bahwa membelikan hadiah kecil buat orangtua bisa membuat mereka bahagia luar biasa. Sayangnya, kita sering melupakan hal ini dan sadar ketika semuanya sudah terlambat.', 'http://localhost/myblog/uploads/3-bully-paling-menyakiti-uang-rupiah-baru-dari-palu-arit-hingga-mirip-yuan-MfsMbN2UfY.jpg');
INSERT INTO `tbl_post` VALUES ('38', 'Memperbanyak Teman Di Lingkungan Baru', 'Anastasia Dopler', '2018-07-12', 'Ada satu rahasia yang membuat saya selalu didekati orang saat berada di lingkungan baru.\r\n\r\nMakanan.\r\n\r\nSaya senang membawa makanan dan camilan. Setiap kali ada makanan, selalu ada yang tersenyum. Dari situ saya mulai bisa bercakap-cakap, mencari kesamaan minat, bertanya tentang hal-hal yang mereka sukai atau lebih ahli, dan secara umum: bersosialisasi.\r\n\r\nMeskipun saya tidak suka keramaian, saya juga kadang-kadang merasa penting untuk mengikuti acara-acara yang mereka adakan. Di situ saya akan bertemu dengan lebih banyak orang yang membuat saya jadi punya kenalan dan pengalaman baru.\r\n\r\nApalagi saat menemukan mereka yang memiliki minat yang sama, saya bisa mengikuti lebih banyak kegiatan seputar hal itu. Selain menyenangkan karena dapat teman baru, saya juga bisa melakukan hal yang disukai bersama-sama.', 'http://localhost/myblog/uploads/Inilah-5-Orang-yang-Tidak-Layak-Dijadikan-Teman.jpg');
INSERT INTO `tbl_post` VALUES ('39', 'Mendeskripsikan Diri Sendiri', 'Anastasia Dopler', '2018-07-12', 'Aneh.\r\n\r\nIni kata orang-orang yang sering berinteraksi dengan saya. Sampai sekarang saya masih belum mengerti kenapa.\r\n\r\nJika saya tanya, mereka akan bilang, “Aneh lah pokoknya. Punya pemikiran sendiri, nggak peduli apa kata orang, pake baju sesukanya. Nggak suka apa yang orang suka.”\r\n\r\nMereka suka bilang, “Selera lu aneh. Susah dibuat senang.”\r\n\r\nAda juga yang bilang, “Eksentrik. Gaya bajunya. Selera filmnya. Aneh lah pokoknya.”\r\n\r\nEntahlah. Saya sendiri merasa itu semua normal. Tapi kalau merujuk pada apa yang atasan saya katakan, “It\'s not you who sees it. You, yourself won\'t understand.”\r\n\r\nYa… okelah.', 'http://localhost/myblog/uploads/diri-sendiri.jpg');
INSERT INTO `tbl_post` VALUES ('40', 'Memaafkan Orang Lain', 'Hotdin Gurning', '2018-07-12', 'Orang yang dimaafkan harus menerima pemberian maaf tanpa harus menuntut agar kesalahannya dilupakan. Ia tidak punya hak. Sekali lagi, ia tidak punya hak untuk minta kesalahannya dilupakan oleh orang yang sudah ia rugikan. Jika sudah dimaafkan, tapi kesalahannya tetap diingat, terimalah. Itu sudah merupakan kompromi terbaik yang bisa diberikan oleh orang yang mengalami kerugian oleh apa yang dilakukan oleh si pembuat kesalahan. Si pembuat kesalahan harus menyadari bahwa dunia ada aturannya, dan tidak selamanya dunia akan menuruti keinginan hatinya. Apakah benar-benar dimaafkan itu tidak relevan.\r\n\r\nA: Anda saya maafkan, tapi saya tidak lupa.\r\n\r\nB: Lho, tidak bisa dong. Anda harus melupakan kesalahan saya.\r\n\r\nA: Saya yang dirugikan, saya memberi maaf, saya menerima kerugian yang sudah Anda timbulkan, Anda kok menuntut saya lebih banyak lagi.\r\n\r\nB: Iya, dong. Anda kan mau memberi maaf, maka aturannya Anda harus melupakan kesalahan saya.\r\n\r\nA: Aturan dari nenekmu?', 'http://localhost/myblog/uploads/hipwee-memaafkan-1-750x422.jpg');

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
INSERT INTO `tbl_user` VALUES ('1', 'dokterweb', '$2a$12$XlXoiSpqF8zeVejlAu8RLuV90kadN.5mOEIjz5MUFbCLn.Xi/3qVe', '2016-10-27');
INSERT INTO `tbl_user` VALUES ('2', 'admin', '$2a$12$Gsu.d/pNW2ReELGDkKu9BOE5zeYSOQM1VF0lxbpnzaZxQlsTloBTu', '2016-10-30');
INSERT INTO `tbl_user` VALUES ('3', 'hafizh', '$2a$12$97Gj.cs3TvTYbjZK8Hg4c.7U3maEC9XQV9qBQXDqiI2QLpzLwKz1S', '2016-12-10');
INSERT INTO `tbl_user` VALUES ('4', 'aisyah', '$2a$12$/0gVRugqPbvn7GGmzBmFl.b4d9HkEQ1ZclU7CSzKLwQiCCbr7t1ee', '2016-12-10');
INSERT INTO `tbl_user` VALUES ('5', 'abi', '$2a$12$r2oYBFCDNfhpY2hY5uOG6Oi9tdFAWzfqm5PZbLSA3VRn5VrpAug9.', '2016-12-12');
INSERT INTO `tbl_user` VALUES ('6', 'lia', '$2a$12$tOuqNEyyYz1N5CDM.o5ZrOV1Be4tRaz5s0ohbWt7STxcF1AtWBKU6', '2016-12-12');
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
