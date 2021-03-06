-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2017 at 04:21 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_telve`
--

-- --------------------------------------------------------

--
-- Table structure for table `favourite_link`
--

CREATE TABLE `favourite_link` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourite_link`
--

INSERT INTO `favourite_link` (`id`, `uid`, `link_id`, `created`) VALUES
(1, 2, 1, '2017-01-20 07:21:48'),
(2, 1, 1, '2017-01-20 07:26:24'),
(3, 5, 38, '2017-05-28 02:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `favourite_reply`
--

CREATE TABLE `favourite_reply` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favourite_reply`
--

INSERT INTO `favourite_reply` (`id`, `uid`, `reply_id`, `created`) VALUES
(1, 1, 1, '2017-01-20 07:47:20'),
(2, 2, 2, '2017-01-20 08:22:33'),
(4, 5, 27, '2017-05-28 02:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `text` varchar(10000) DEFAULT NULL,
  `embed` varchar(5000) DEFAULT NULL,
  `picurl` varchar(255) DEFAULT NULL,
  `domain` varchar(33) DEFAULT NULL,
  `topic` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(7) NOT NULL DEFAULT '0',
  `comments` int(7) NOT NULL DEFAULT '0',
  `reported` int(7) NOT NULL DEFAULT '0',
  `favorited` int(7) NOT NULL DEFAULT '0',
  `is_link_for_union` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `uid`, `title`, `url`, `text`, `embed`, `picurl`, `domain`, `topic`, `created`, `score`, `comments`, `reported`, `favorited`, `is_link_for_union`) VALUES
(1, 1, 'Sevimli kedicik', 'http://funnycats.blogin.com.au/wp-content/uploads/2015/01/aww-too-cute-cat.jpg', NULL, '<img src="http://funnycats.blogin.com.au/wp-content/uploads/2015/01/aww-too-cute-cat.jpg" style="max-height:315px;"/>', 'http://funnycats.blogin.com.au/wp-content/uploads/2015/01/aww-too-cute-cat.jpg', 'funnycats.blogin.com.au', 'RES??M', '2017-01-20 03:09:34', 0, 1, 0, 2, 1),
(2, 1, 'En pahal?? yemin t??reni - D??nya Haberleri', 'http://www.hurriyet.com.tr/en-pahali-yemin-toreni-40340912', 'Donald Trump bug??n resmen ABD Ba??kan?? olacak. Trump?????n ABD Kongresi???nin bah??esindeki yemin t??renine 900 bin ki??inin kat??lmas?? bekleniyor. Yemin t??reninin masraf?? 200 milyon dolar?? bulacak.', NULL, 'http://i.hurimg.com/i/hurriyet/90/590x332/58812be467b0a92e545b3867.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-01-20 03:17:49', 0, 0, 0, 0, 1),
(3, 1, 'Baklava', NULL, 'Baklava, T??rk, Orta Do??u, Balkan ve G??ney Asya mutfaklar??nda yer etmi?? ??nemli bir hamur tatl??s??d??r. ??nce yufkalar??n aras??na y??reye g??re ceviz, antep f??st??????, badem veya f??nd??k konarak yap??l??r. Genel olarak ??eker ??erbeti ile tatland??r??l??r. Ayr??ca bal ??erbeti de kullan??labilir. Baz?? ticari firmalar kendi ??zel ??erbetlerini kullan??rlar.\r\n\r\nAB Komisyonu taraf??ndan 8 A??ustos 2013 Tarihinde baklavan??n T??rk tatl??s?? oldu??u tescil edilmi??tir.', NULL, NULL, NULL, 'YEMEK', '2017-01-20 03:33:25', 0, 0, 0, 0, 1),
(4, 1, 'Afilli Filtrelerden Vazge??emeyen Selfie Tutkunlar??n?? Ele Ge??iren Yeni ????lg??nl??k: Meitu - onedio.com', 'https://onedio.com/haber/afilli-filtrelerden-vazgecemeyen-selfie-tutkunlarini-ele-geciren-yeni-cilginlik-meitu-752027', 'Foto??raf Galerisi.', NULL, 'https://img-s2.onedio.com/id-58811840b956f9851def272d/rev-0/raw/s-6605d70ce56b3524c481da632ebe3f1f2b9ac847.jpg', 'onedio.com', 'KOM??K', '2017-01-20 03:50:13', 0, 0, 0, 0, 1),
(5, 1, 'iPhone 10 ya????nda: Apple?????n en ??nemli ??r??n??n??n g??rsel tarihi', 'http://www.teknoblog.com/iphone-10-yasinda-140170/', 'iPhone 10 y??l ??nce tan??t??ld??????nda yeni bir d??nemin kap??lar??n?? a??m????t??. iPhone\'un 10 y??ll??k yolculu??unun ad??mlar??n?? sizler i??in bir kez daha s??ralad??k.', NULL, 'http://static.teknoblog.com/wp-content/uploads/2017/01/steve-jobs-iphone-110117.jpg', 'www.teknoblog.com', 'TEKNOLOJ??', '2017-01-20 03:53:31', -1, 0, 1, 0, 1),
(6, 1, '??in, Saniyede Milyarlarca ????lem Yapabilen D??nyan??n ??lk S??per Bilgisayar??n?? Yap??yor!', 'http://www.webtekno.com/cin-dunyanin-ilk-saniyede-milyarlarca-islem-yapabilen-super-bilgisayarini-yapiyor-h24317.html', '??in, 2017 bitmeden saniyede milyarlarca i??lem yapabilen d??nyan??n ilk exa ??l??ekli s??per bilgisayar prototipini yapmay?? planl??yor.', NULL, 'http://www.webtekno.com//images/editor/default/0001/09/b226776d500d71c0c2fa775d5922672b59812b4c.jpeg', 'www.webtekno.com', 'TEKNOLOJ??', '2017-01-20 03:55:47', 0, 0, 0, 0, 1),
(7, 1, 'T??rk Hava Yollar??\'n??n Yeni Reklam Y??z?? D??nya Y??ld??z?? Morgan Freeman Oldu!', 'http://www.webtekno.com/turk-hava-yollari-nin-yeni-reklam-yuzu-dunya-yildizi-morgan-freeman-oldu-h24330.html', 'T??rk Hava Yollar??, 800 milyon ki??inin izledi??i Super Bowl finalindeki reklam?? i??in d??nyaca ??nl?? oyuncu Morgan Freeman ile anla??t??.', NULL, 'http://cdn.webtekno.com/media/cache/content_detail_v2/article/24330/turk-hava-yollari-nin-yeni-reklam-yuzu-dunya-yildizi-morgan-freeman-oldu-1484853694.jpg', 'www.webtekno.com', 'HABER', '2017-01-20 03:57:08', 0, 0, 0, 0, 1),
(8, 1, 'CIA, UFO Kay??tlar?? ve Psi??ik Deneylerin Bulundu??u Dosyalar?? Yay??nlad??!', 'http://www.webtekno.com/cia-ufo-kayitlari-ve-psisik-deneylerin-bulundugu-dosyalari-yayinladi-h24331.html', 'CIA\'in bir s??re ??nce yay??nlad??????n?? 13 milyon sayfadan olu??an dosyalarda olduk??a ilgi ??ekici ??eyler mevcut.', NULL, 'http://www.webtekno.com//images/editor/default/0001/09/9f77c3347ae303b3ebd7c2241be29b7ebf1aadc6.jpeg', 'www.webtekno.com', 'HABER', '2017-01-20 03:57:51', 0, 1, 1, 0, 1),
(9, 1, 'Logan Filminden Vizyon ??ncesi Son Fragman Geldi! - Haberler - Beyazperde', 'http://www.beyazperde.com/haberler/filmler/haberler-77177/', 'Merakla beklenen X-Men spin-offu 3 Mart 2017 tarihinde ??lkemize u??rayacak!', NULL, 'http://tr.web.img3.acsta.net/newsv7/17/01/19/22/02/031987.jpg', 'www.beyazperde.com', 'S??NEMA', '2017-01-20 04:00:29', 1, 0, 0, 0, 1),
(10, 1, 'Simge\'nin \'Prens ve Prenses\'i  - M??zik Haber - PowerT??rk', 'http://www.powerturk.com/muzik/muzik-haber/simge-nin-prens-ve-prenses-i.html', 'M??zikseverlerin \'Mi?? Mi??\' ve \'Yank??\' ile be??enisini kazanan ve bu ??ark??lar ile bir??ok...', NULL, 'http://asset.powerturk.com/u/img/a/s/i/simge-17kucuk-1484036422.jpg', 'www.powerturk.com', 'M??Z??K', '2017-01-20 05:46:20', 0, 0, 0, 0, 1),
(11, 1, 'AYD??LGE / K??RALIK A??K -  Sen misin ??lac??m? KL??P - YouTube', 'https://www.youtube.com/watch?v=qBBIKdD2fo8', 'Yap??m: Ortaks Yap??m S??z-M??zik-Yorum: Aydilge D??zenleme: Alen Konako??lu Y??netmen: Devrim Yal????n Sen misin ??lac??m? Ya??mur dinmiyorsa Yollar bitmiyorsa Sen ??z??l...', '<iframe width="560" height="315" src="https://www.youtube.com/embed/qBBIKdD2fo8" frameborder="0" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/qBBIKdD2fo8/maxresdefault.jpg', 'www.youtube.com', 'M??Z??K', '2017-01-20 05:52:31', 0, 0, 0, 0, 1),
(12, 1, 'Kedi Efsanelerini Test Ettik - H??yardan Korkuyorlar M??? - YouTube', 'https://www.youtube.com/watch?v=ebL_YWNN570', 'Bu videoda kedilerle ilgili 2 ??ehir efsanesini test ediyoruz. ??ddia edildi??i gibi belirli bir alan??n i??inde, d????ar?? ????kmadan duruyorlar m??? Salatal??k yahut d...', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ebL_YWNN570" frameborder="0" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/ebL_YWNN570/maxresdefault.jpg', 'www.youtube.com', 'V??DEO', '2017-01-20 06:06:42', 0, 0, 0, 0, 1),
(13, 1, 'Aleyna Tilki ft. Emrah Karaduman - Cevaps??z ????nlama Rap Parodi (#OrkunaMeydanOkuyorum) - YouTube', 'https://youtu.be/MBVX26xPyR4', 'Ben Orkun I????tmak , #OrkunaMeydanOkuyorum serisinin yeni b??l??m??nde Aleyna Tilki ve Emrah Karaduman\'??n pop??ler ??ark??s?? Cevaps??z ????nlama\'n??n rap versiyonunu ya...', '<iframe width="560" height="315" src="https://www.youtube.com/embed/MBVX26xPyR4" frameborder="0" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/MBVX26xPyR4/maxresdefault.jpg', 'youtu.be', 'V??DEO', '2017-01-20 06:11:04', 0, 0, 0, 0, 1),
(14, 2, '??avu??o??lu, Trump\'??n kabine adaylar?? ile g??r????t?? - D??nya Haberleri', 'http://www.hurriyet.com.tr/cavusoglu-trumpin-kabine-adaylari-ile-gorustu-40341022', 'D????i??leri Bakan?? Mevl??t ??avu??o??lu, bug??n yemin ederek g??reve ba??layacak se??ilmi?? Ba??kan Donald Trump\'??n D????i??leri Bakan?? aday?? Rex Tillerson ve Savunma Bakan?? aday?? James Mattis ile g??r????t??.', NULL, 'http://i.hurimg.com/i/hurriyet/90/590x332/5881b2fdc03c0e069c7b5022.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-01-20 11:39:17', 0, 0, 0, 0, 1),
(15, 2, 'Futbol mutasyona u??ruyor! - Spor Haberleri', 'http://www.milliyet.com.tr/futbol-mutasyona-ugruyor----2381830-skorergaleri/', 'Futbol mutasyona u??ruyor!', NULL, 'http://www.milliyet.com.tr/d/i/skorer/fbskorer.jpg', 'www.milliyet.com.tr', 'HABER', '2017-01-20 11:43:48', 0, 0, 0, 0, 1),
(16, 2, 'Son dakika... T??m g??zler Washington\'da! Trump koltu??a oturuyor - D??nya Haberleri', 'http://www.milliyet.com.tr/son-dakika-tum-gozler-dunya-2381897/', 'ABD\'den son dakika haberi geldi.', NULL, 'http://icube.milliyet.com.tr/YeniAnaResim/2017/01/20/son-dakika-tum-gozler-washington-da-trump-koltuga-oturuyor-8392999.Jpeg', 'www.milliyet.com.tr', 'HABER', '2017-01-20 11:49:55', 0, 0, 0, 0, 1),
(17, 2, 'D??nyan??n En Sevimli Canl??lar?? Olan Hayvanlar?? Mizah??na Alet Edip G??ld??ren 21 Mizah????r - onedio.com', 'https://onedio.com/haber/dunyanin-en-sevimli-canlilari-olan-hayvanlari-mizahina-alet-edip-gulduren-21-mizahsor-752179', 'Foto??raf Galerisi.', NULL, 'https://img-s1.onedio.com/id-588223197102a6fc1b031456/rev-0/w-500/s-1e8765b71ca37e1174fcdb41ef3432dbc5f27c9d.jpg', 'onedio.com', 'KOM??K', '2017-01-21 02:17:37', 0, 0, 0, 0, 1),
(18, 2, 'Son dakika... E??i benzeri olmayan ??at????ma! - D??nya Haberleri', 'http://www.milliyet.com.tr/son-dakika-esi-benzeri-olmayan-dunya-2382192/', 'Son dakika... Trump ba??kanl??k koltu??una oturdu! E??i benzeri g??r??lmedi.', NULL, 'http://icube.milliyet.com.tr/YeniAnaResim/2017/01/20/son-dakika-esi-benzeri-olmayan-catisma--8396724.Jpeg', 'www.milliyet.com.tr', 'HABER', '2017-01-21 02:24:04', 0, 0, 0, 0, 1),
(19, 2, 'B??y??meye 1 puan konuttan gelecek - Ekonomi Haberleri', 'http://www.sabah.com.tr/ekonomi/2017/01/21/buyumeye-1-puan-konuttan-gelecek', 'Konutta ??ubatta ba??lamas?? beklenen yeni seferberlik ile faiz % 0.40 kadar gerileyecek. ??zellikle dar gelirlilere y??nelik projenin b??y??meyi de 1 puan art??rmas?? bekleniyor', NULL, 'http://ia.sabah.com.tr/3b6164/650/344/0/0/956/505?u=http://i.sabah.com.tr/sbh/2017/01/21/buyumeye-1-puan-konuttan-gelecek-1484953478739.jpg', 'www.sabah.com.tr', 'HABER', '2017-01-21 02:26:15', 0, 0, 0, 0, 1),
(20, 2, 'Son dakika: ikinci tur oylama bitti tasar??n??n t??m?? oylan??yor - Siyaset Haberleri', 'http://www.milliyet.com.tr/son-dakika-anayasa-degisiklik-siyaset-2382369/', 'Son dakika: Anayasa de??i??iklik teklifi 339 \'evet\' oyuyla yasala??t??.', NULL, 'http://icube.milliyet.com.tr/YeniAnaResim/2017/01/21/son-dakika-anayasa-degisiklik-teklifinin-ikinci-turunda-18-inci-madde-gorusuluyor-8397899.Jpeg', 'www.milliyet.com.tr', 'HABER', '2017-01-21 04:05:40', 0, 0, 0, 0, 1),
(21, 2, 'Washington\'daki Trump kar????t?? g??sterilerde ??iddet art??yor', 'http://www.ensonhaber.com/washingtondaki-trump-karsiti-gosteriler-2017-01-21.html', 'Ba??kentteki protestolarda 200\'?? a??k??n g??sterici g??zalt??na al??nd??, 6 polisin de aralar??nda bulundu??u ??ok say??da ki??i yaraland??.', NULL, 'http://i.cdn.ensonhaber.com/resimler/diger/trump-limuzin_872.jpg', 'www.ensonhaber.com', 'HABER', '2017-01-21 09:57:44', 0, 0, 0, 0, 1),
(22, 2, 'Trump konu??tu, dolar d&uuml;??t&uuml;! - Ekonomi Haberleri', 'http://ekonomi.haber7.com/ekonomi/haber/2248440-trump-konustu-dolar-dustu', 'ABD\'nin 45. Ba??kan?? Donald Trump\'??n, ABD Kongresi\'ndeki t&ouml;rende yemin ederek yapt?????? ilk resmi konu??man??n ard??ndan New York borsas??nda kay??plar, ABD dolar??nda d&uuml;??&uuml;?? g&ouml;r&uuml;ld&uuml;.', NULL, 'http://image.cdn.haber7.com//haber/haber7/thumbs/2017/03/trumpin_yillik_buyume_hedefi_yuzde_4_1484980285_9418.jpg', 'ekonomi.haber7.com', 'HABER', '2017-01-21 09:58:26', 0, 0, 0, 0, 1),
(23, 2, 'HDP\'li vekilin s&ouml;zleri Bah&ccedil;eli\'yi g&uuml;ld&uuml;rd&uuml;! - S??YASET Haberleri', 'http://www.haber7.com/siyaset/haber/2248509-hdpli-vekilin-sozleri-bahceliyi-guldurdu', 'Anayasa de??i??ikli??i teklifinin kabul edildi??i gece HDP\'li S??rr?? S&uuml;reyya &Ouml;nder\'in k&uuml;rs&uuml; konu??mas?? s??ras??nda s&ouml;yledi??i s&ouml;zler, MHP Genel Ba??kan?? Devlet Bah&ccedil;eli\'yi g&uuml;ld&uuml;rd&uuml;.', NULL, 'http://image.cdn.haber7.com//haber/haber7/photos/2017/03/hdpli_vekilin_sozleri_bahceliyi_guldurdu_1484981623_6483.jpg', 'www.haber7.com', 'HABER', '2017-01-21 10:00:22', 0, 0, 0, 0, 1),
(24, 1, 'Kalisi ne gul??yon?', 'https://media.giphy.com/media/Ts6KGvz9qETM4/giphy.gif', NULL, '<img src="https://media.giphy.com/media/Ts6KGvz9qETM4/giphy.gif" style="max-height:315px;"/>', 'https://media.giphy.com/media/Ts6KGvz9qETM4/giphy.gif', 'media.giphy.com', 'G??F', '2017-01-21 10:21:04', 4, 1, 0, 0, 1),
(25, 1, 'Horizon: Zero Dawn - Turuncu Levye', 'http://www.turunculevye.com/oyunlar/goster/horizon-zero-dawn', 'Guerilla Games taraf??ndan geli??tirilmekte olan Horizon: Zero Dawn, PlayStation 4 platformuna ??zel yeni bir projedir. Horizon: Zero Dawn Oyun ??ncelemesi, Sistem ??zellikleri, Ekran G??r??nt??leri, Videolar?? ve Horizon: Zero Dawn Haberleri', NULL, 'http://img.turunculevye.com/thumbnails/2015/06/horizon_slide_slide.jpg', 'www.turunculevye.com', 'OYUN', '2017-01-21 10:24:17', 0, 0, 0, 0, 1),
(26, 2, '2017 y??l??nda ????kacak oyunlar! - ShiftDelete.Net', 'http://shiftdelete.net/2017-yilinda-cikacak-oyunlar-77521', '2017 y??l??nda ????kacak oyunlarla kar????n??zday??z. 2017 y??l??nda bizleri yine harika oyunlar bekliyor. Haz??rlad??????m??z liste ile 2017\'nin en ??ok beklenen oyunlar??n?? g??rebilirsiniz.', NULL, 'http://s01.shiftdelete.net/img/general_b/16-12/14/2017-yilinda-cikacak-tum-oyunlar-1.jpg', 'shiftdelete.net', 'OYUN', '2017-01-21 10:25:28', 0, 0, 0, 0, 1),
(27, 1, 'Bu Ivana sert mi? Sertse yumu??atmak m??mk??n m???', 'http://www.butarzbenim.net/wp-content/uploads/2014/09/bu-tarz-benim-8-bolum-23-eylul-21.jpg', NULL, '<img src="http://www.butarzbenim.net/wp-content/uploads/2014/09/bu-tarz-benim-8-bolum-23-eylul-21.jpg" style="max-height:315px;"/>', 'http://www.butarzbenim.net/wp-content/uploads/2014/09/bu-tarz-benim-8-bolum-23-eylul-21.jpg', 'www.butarzbenim.net', 'SORU', '2017-01-21 10:33:44', 0, 0, 0, 0, 1),
(28, 1, '??stanbul\'a daha kar ya??ar m??? Okullar tatil olur mu?', 'http://img.haberler.com/haber/579/istanbul-icin-beklenen-kar-yilbasinda-geliyor-8006579_x_8007_o.jpg', NULL, '<img src="http://img.haberler.com/haber/579/istanbul-icin-beklenen-kar-yilbasinda-geliyor-8006579_x_8007_o.jpg" style="max-height:315px;"/>', 'http://img.haberler.com/haber/579/istanbul-icin-beklenen-kar-yilbasinda-geliyor-8006579_x_8007_o.jpg', 'img.haberler.com', 'SORU', '2017-01-21 10:35:34', 0, 0, 0, 0, 1),
(29, 1, 'Hangi Linux da????t??m?? en iyisi?', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/2000px-Tux.svg.png', NULL, '<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/2000px-Tux.svg.png" style="max-height:315px;"/>', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/2000px-Tux.svg.png', 'upload.wikimedia.org', 'SORU', '2017-01-21 10:37:38', 0, 1, 0, 0, 1),
(30, 1, '??nl?? giyimcinin AVM isyan??: Herkes haddini bilecek - Ekonomi Haberleri', 'http://www.hurriyet.com.tr/unlu-giyimcinin-avm-isyani-herkes-haddini-bilecek-40342255', 'AVM Endeksi\'ne g??re T??rkiye\'de 377 AVM var. Sadece 20 kentte AVM bulunmuyor. Erkek giyim markas?? Ki????l??\'n??n Y??netim Kurulu Ba??kan?? Abdullah Ki????l??, Ter??r?? halletti??imiz takdirde yabanc?? AVM yat??r??mc??lar??yla bu i??i ????zece??iz.. O zaman daha h??zl?? b??y??ye...', NULL, 'http://i.hurimg.com/i/hurriyet/90/0x0/58830db318c77310540d2ab8.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-01-21 10:46:30', -1, 0, 0, 0, 1),
(31, 1, 'Saffet Sancakl??: Bu olay ??ok a????r geldi, bir mucize bekliyoruz Allah\'tan - Son Dakika G??ndem Haberleri', 'http://www.hurriyet.com.tr/saffet-sancakli-bu-olay-cok-agir-geldi-bir-mucize-bekliyoruz-allahtan-40342163', 'MHP Kocaeli Milletvekili Saffet Sancakl??, Meclis k??rs??s??nde yapt?????? konu??mada  intihar giri??iminde bulunan e??i H??lya Sancakl?? i??in dua istedi.  Sancakl??, Bu olay ??ok a????r geldi bana. Allah kimseye vermesin. 6 g??n?? ge??tik, 7???nci g??ne girdik. Allah?????n d...', NULL, 'http://i.hurimg.com/i/hurriyet/90/590x332/5882d85818c77310540d2867.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-01-21 10:48:22', 0, 0, 0, 0, 1),
(32, 1, 'Ocak ay?? otomobil kampanyalar?? - Ekonomi Haberleri', 'http://www.hurriyet.com.tr/galeri-40341840', '2017 y??l??na giri??le birlikte otomobil firmalar?? hem ??TV baz??nda hem de d??viz kurlar??ndaki sabitlemelerle kampanyalara ba??lad??.', NULL, 'http://i.hurimg.com/i/hurriyet/90/0x0/5882fb6fc03c0e2c1c461f76.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-01-21 10:48:57', 0, 0, 0, 0, 1),
(33, 2, 'Dijital d??nyan??n yeni y??ld??z?? Sena ??ener - Hayat Haberleri', 'http://www.hurriyet.com.tr/dijital-dunyanin-yeni-yildizi-sena-sener-40342613', 'Kocaman, k??v??r k??v??r sa??lar??, ??????ldayan g??zleriyle bir masal kahraman??n?? and??r??yor. Daha 18 ya????nda... Ama hayallerini ger??ekle??tirme yolunda ??nemli ad??mlar att?? bile. Evde yapt?????? kay??tlar?? Soundcloud hesab??na y??kledikten k??sa s??re sonra dikkatleri ??z...', NULL, 'http://i.hurimg.com/i/hurriyet/90/0x0/588369690f25440ff0ebbd9b.jpg', 'www.hurriyet.com.tr', 'M??Z??K', '2017-01-22 12:15:09', 0, 0, 0, 0, 1),
(34, 1, 'ODT?? - Orta Do??u Teknik ??niversitesi | B??ZLER D??NYAYI DE??????T??REB??L??R??Z', 'http://www.metu.edu.tr/tr', 'B??ZLER D??NYAYI DE??????T??REB??L??R??Z', NULL, 'http://www.metu.edu.tr/tr/system/files/slider/cover/butunleme-01-tr.png', 'www.metu.edu.tr', '??N??VERS??TE', '2017-01-22 12:26:27', 0, 0, 0, 0, 1),
(35, 1, 'Napoli 9 dakikada bitirdi! | NTVSpor.net', 'http://www.ntvspor.net/futbol/napoli-9-dakikada-bitirdi-5883d63cf7022736e481f885', NULL, NULL, 'http://cdn.ntvspor.net/6deb0c055bd44456bdda1da47266f811.jpg?crop=0,29,940,558', 'www.ntvspor.net', 'FUTBOL', '2017-01-22 12:33:31', 0, 0, 0, 0, 1),
(36, 1, 'Yasin&#39;in rekor sezonu! | NTVSpor.net', 'http://www.ntvspor.net/futbol/yasin-in-rekor-sezonu-58838ec9f7022736e481f74d', NULL, NULL, 'http://cdn.ntvspor.net/ae0335b57aab4644b47c236eb5439f53.jpg?crop=0,65,940,594', 'www.ntvspor.net', 'FUTBOL', '2017-01-22 12:34:08', 0, 0, 0, 0, 1),
(37, 1, 'Kawhi Leonard ??ampiyonu devirdi | NTVSpor.net', 'http://www.ntvspor.net/basketbol/kawhi-leonard-sampiyonu-devirdi-588462a2f7022736e481f8dc', NULL, NULL, 'http://cdn.ntvspor.net/ff0fca959850445fb43b9c4c3918ec08.jpg?crop=0,0,941,529', 'www.ntvspor.net', 'BASKETBOL', '2017-01-22 12:34:48', 0, 0, 0, 0, 1),
(38, 1, 'G??l??en - Bang??r Bang??r - YouTube', 'https://www.youtube.com/watch?v=icZ-OlVSvb4', 'G??l??en\'in, DMC etiketiyle yay??nlanan &quot;Bang??r Bang??r&quot; alb??m??nde yer alan &quot;Bang??r Bang??r&quot; isimli ??ark??s??, video klibiyle netd m??zik\'te. netd m??zik, Facebook\'ta...', '<iframe width="560" height="315" src="https://www.youtube.com/embed/icZ-OlVSvb4" frameborder="0" allowfullscreen></iframe>', 'https://i.ytimg.com/vi/icZ-OlVSvb4/maxresdefault.jpg', 'www.youtube.com', 'V??DEO', '2017-01-22 14:34:43', 0, 1, 0, 1, 1),
(39, 2, 'Bu ??nl??y?? tan??yor musunuz?', 'http://onamola.com/media/uploads/42/56a114663d4bb.jpg', NULL, '<img src="http://onamola.com/media/uploads/42/56a114663d4bb.jpg" style="max-height:315px;"/>', 'http://onamola.com/media/uploads/42/56a114663d4bb.jpg', 'onamola.com', 'SORU', '2017-01-22 16:04:37', 0, 0, 0, 0, 1),
(40, 2, 'T24 Twitter\'da: &quot;Haluk Bilginer: Erkekler be?? para etmez; bu d??nya erkeklerden ar??nd??r??lmal??!&quot;', 'https://twitter.com/t24comtr/status/823079889536434176', '???Haluk Bilginer: Erkekler be?? para etmez; bu d??nya erkeklerden ar??nd??r??lmal??!&#10;https://t.co/ZibVBdG6kU???', '<blockquote class="twitter-tweet"><p lang="tr" dir="ltr">Haluk Bilginer: Erkekler be?? para etmez; bu d??nya erkeklerden ar??nd??r??lmal??!<a href="https://t.co/ZibVBdG6kU">https://t.co/ZibVBdG6kU</a> <a href="https://t.co/1eRARZ9a2g">pic.twitter.com/1eRARZ9a2g</a></p>&mdash; T24 (@t24comtr) <a href="https://twitter.com/t24comtr/status/823079889536434176">January 22, 2017</a></blockquote>\n<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>', 'https://pbs.twimg.com/media/C2wqycNW8AAWm6y.jpg:large', 'twitter.com', 'HABER', '2017-01-22 16:22:01', 0, 0, 0, 0, 1),
(41, 2, 'Cem Y??lmaz kar ya??arken i?? ba????nda', 'https://www.facebook.com/CMYLMZ/photos/pb.96803912019.-2207520000.1485098706./10154890471522020/?type=3&theater', NULL, '<div id="fb-root"></div>\n<script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = "//connect.facebook.net/tr_TR/sdk.js#xfbml=1&version=v2.3";\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, \'script\', \'facebook-jssdk\'));</script><div class="fb-post" data-href="https://www.facebook.com/CMYLMZ/photos/pb.96803912019.-2207520000.1485098706./10154890471522020/?type=3" data-width="552"><blockquote cite="https://www.facebook.com/CMYLMZ/posts/10154890471522020:0" class="fb-xfbml-parse-ignore"><p>http://instagram.com/cmylmz/</p><a href="https://www.facebook.com/CMYLMZ/">Cem Y??lmaz</a> payla??t??:&nbsp;<a href="https://www.facebook.com/CMYLMZ/posts/10154890471522020:0">9 Ocak 2017 Pazartesi</a></blockquote></div>', 'https://www.facebook.com/images/fb_icon_325x325.png', 'www.facebook.com', 'RES??M', '2017-01-22 18:27:02', 0, 0, 0, 0, 1),
(42, 2, 'K??pekle turta surat oyunu oynuyor xD', 'https://www.facebook.com/FunnyVideosbyDiply/videos/1849327055117902/', NULL, '<div id="fb-root"></div>\n<script>(function(d, s, id) {\n  var js, fjs = d.getElementsByTagName(s)[0];\n  if (d.getElementById(id)) return;\n  js = d.createElement(s); js.id = id;\n  js.src = "//connect.facebook.net/tr_TR/sdk.js#xfbml=1&version=v2.3";\n  fjs.parentNode.insertBefore(js, fjs);\n}(document, \'script\', \'facebook-jssdk\'));</script><div class="fb-video" data-href="https://www.facebook.com/FunnyVideosbyDiply/videos/1849327055117902/"><blockquote cite="https://www.facebook.com/FunnyVideosbyDiply/videos/1849327055117902/" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/FunnyVideosbyDiply/videos/1849327055117902/"></a><p>Dog is def not even mad about it\n#diplymix</p><a href="https://www.facebook.com/FunnyVideosbyDiply/">Funny Videos by Diply</a> payla??t??: 13 Ocak 2017 Cuma</blockquote></div>', 'https://www.facebook.com/images/fb_icon_325x325.png', 'www.facebook.com', 'V??DEO', '2017-01-22 18:38:09', 0, 0, 0, 0, 1),
(43, 2, '??stanbul\'da Gezilecek Yerler (Detayl??) | Gezilecek Yerler', 'http://www.gezilesiyer.com/istanbulda-gezip-gorulecek-yerler.html', '??ncelikle Merhaba Arkada??lar,  ??stanbul\'da gezilecek yerler??denince akl??m??za y??zlerce yer gelebilir. Daha ??nce hi?? ??stanbul\'a gitmemi?? iseniz bu sayfay?? sonuna kadar izlemenizi ??nerebilirim. E??er gitmi??, akraban??z??n evinde k??s k??s oturuyor, &quot;??stanbul\'un neresini gezebilirim&quot; diyor iseniz en do??ru', NULL, 'http://www.gezilesiyer.com/wp-content/uploads/2015/06/galata-kulesi-2.jpg', 'www.gezilesiyer.com', '??STANBUL', '2017-01-22 20:40:49', 0, 0, 0, 0, 1),
(44, 2, '20 TL???ye Ankara\'da Yap??lacak 40 G??zel ??ey - Geziko', 'http://www.geziko.com/blog/20-tlye-ankarada-yapilacak-40-guzel-sey/', NULL, NULL, 'http://www.geziko.com/blog/wp-content/uploads/2016/01/02-Hamamo%E2%95%A0%C3%AAnu%E2%95%A0%C3%AA-1200x797.jpg', 'www.geziko.com', 'ANKARA', '2017-01-22 20:52:31', -1, 0, 0, 0, 1),
(45, 2, 'Bir Ege R??yas?? ??zmir', 'http://www.alobilethatti.com/blog/bir-ege-ruyasi-izmir/', NULL, NULL, 'http://www.alobilethatti.com/blog/wp-content/uploads/2015/02/kemeralti-izmir.jpg', 'www.alobilethatti.com', '??ZM??R', '2017-01-22 21:13:12', 0, 0, 0, 0, 1),
(46, 2, 'Vak??fbank liderli??ini korudu | NTVSpor.net', 'http://www.ntvspor.net/voleybol/vakifbank-liderligini-korudu-58834d30f7022736e481f66c', NULL, NULL, 'http://cdn.ntvspor.net/805655b74e76481c8d23fc425630d45b.jpg?crop=0,0,941,529', 'www.ntvspor.net', 'VOLEYBOL', '2017-01-22 21:38:36', 0, 0, 0, 0, 1),
(47, 2, 'Faz??l Say, Mozart eserleriyle ??K?? sahnesinde - ??stanbul Haberleri', 'http://www.hurriyet.com.tr/fazil-say-mozart-eserleriyle-iku-sahnesinde-40320696', 'Faz??l Say, Mozart eserleriyle ??K?? sahnesinde', NULL, 'http://i.hurimg.com/i/hurriyet/90/0x0/5864bc12eb10bb19dcd70048.jpg', 'www.hurriyet.com.tr', 'SANAT', '2017-01-22 21:47:25', 0, 0, 0, 0, 1),
(48, 2, 'En sevdi??iniz m??zik t??r?? hangisidir?', 'https://rockmyrun.files.wordpress.com/2013/12/music-genres.jpg', NULL, '<img src="https://rockmyrun.files.wordpress.com/2013/12/music-genres.jpg" style="max-height:315px;"/>', 'https://rockmyrun.files.wordpress.com/2013/12/music-genres.jpg', 'rockmyrun.files.wordpress.com', 'SORU', '2017-01-22 22:21:51', 0, 2, 0, 0, 1),
(49, 2, 'Spiegel???in kapa???? ortal?????? kar????t??rd?? - D??nya Haberleri', 'http://www.hurriyet.com.tr/spiegelin-kapagi-ortaligi-karistirdi-40355912', 'ALMAN Der Spiegel dergisinin son say??s??n??n kapa????nda ABD Ba??kan?? Donald Trump????? ??zg??rl??k Heykeli???nin ba????n?? keserken g??steren g??rseli ortal?????? kar????t??rd??.', NULL, 'http://i.hurimg.com/i/hurriyet/90/0x0/58961711c03c0e27c87d4544.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-02-05 03:31:15', 1, 0, 0, 0, 1),
(50, 2, 'Instagram', 'https://www.instagram.com/p/BP2Imoeh5Le/', 'See this Instagram video by @5.min.crafts ??? 27.4k likes', '<blockquote class="instagram-media" data-instgrm-captioned data-instgrm-version="7" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:658px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:8px;"> <div style=" background:#F8F8F8; line-height:0; margin-top:40px; padding:50.0% 0; text-align:center; width:100%;"> <div style=" background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACwAAAAsCAMAAAApWqozAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAMUExURczMzPf399fX1+bm5mzY9AMAAADiSURBVDjLvZXbEsMgCES5/P8/t9FuRVCRmU73JWlzosgSIIZURCjo/ad+EQJJB4Hv8BFt+IDpQoCx1wjOSBFhh2XssxEIYn3ulI/6MNReE07UIWJEv8UEOWDS88LY97kqyTliJKKtuYBbruAyVh5wOHiXmpi5we58Ek028czwyuQdLKPG1Bkb4NnM+VeAnfHqn1k4+GPT6uGQcvu2h2OVuIf/gWUFyy8OWEpdyZSa3aVCqpVoVvzZZ2VTnn2wU8qzVjDDetO90GSy9mVLqtgYSy231MxrY6I2gGqjrTY0L8fxCxfCBbhWrsYYAAAAAElFTkSuQmCC); display:block; height:44px; margin:0 auto -44px; position:relative; top:-22px; width:44px;"></div></div> <p style=" margin:8px 0 0 0; padding:0 4px;"> <a href="https://www.instagram.com/p/BP2Imoeh5Le/" style=" color:#000; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none; word-wrap:break-word;" target="_blank">Unusual and brilliant ways to use straws! #5minutecrafts #lifehacks #straws</a></p> <p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;">A video posted by 5-Minute Crafts (@5.min.crafts) on <time style=" font-family:Arial,sans-serif; font-size:14px; line-height:17px;" datetime="2017-01-29T11:01:20+00:00">Jan 29, 2017 at 3:01am PST</time></p></div></blockquote><script async defer src="//platform.instagram.com/en_US/embeds.js"></script>', 'https://scontent-ams3-1.cdninstagram.com/t51.2885-15/s1080x1080/e15/fr/16124270_1349629781725096_4086208391943290880_n.jpg?ig_cache_key=MTQzODM3NDk3MDE2NTUzMTM1OA%3D%3D.2', 'www.instagram.com', 'HABER', '2017-02-05 03:38:40', 0, 0, 0, 0, 1),
(51, 10, 'Lakab??m ci??er s??k??c??! | Ay??e ARMAN', 'http://www.hurriyet.com.tr/yazarlar/ayse-arman/lakabim-ciger-sokucu-40355965', 'Nas??l yani? Bu, o mu? Erkeklerin korkulu r??yas??... Tir tir titredikleri kad??n...', NULL, 'http://i.hurimg.com/i/hurriyet/90/0x0/5896b9bc18c7731ac4d21e62.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-02-05 07:53:29', 0, 0, 0, 0, 1),
(52, 2, 'Cansu Dere mi Beren Saat mi - Magazin Haberleri', 'http://www.hurriyet.com.tr/cansu-dere-mi-beren-saat-mi-40370867', 'GQ ??d??l t??renine k??yafetleriyle Beren Saat ve Cansu Dere damga vurdu. Sizce hangisi daha g??zel? Stil notlar??n??z?? alal??m...Magazin Konseyi haftan??n magazin olaylar??n?? masaya yat??rd??...', NULL, 'http://i.hurimg.com/i/hurriyet/75/0x0/58a9bf5618c7732f4c4e7488.jpg', 'www.hurriyet.com.tr', 'HABER', '2017-02-20 07:02:47', 0, 0, 0, 0, 1),
(53, 2, 'Markdown kod ??rne??i', NULL, 'There are many different ways to style code with GitHub\'s markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you\'ve got a longer block of code, you can indent with four spaces:\r\n\r\n    if (isAwesome){\r\n      return true\r\n    }\r\n\r\nGitHub also supports something called code fencing, which allows for multiple lines without indentation:\r\n\r\n```\r\nif (isAwesome){\r\n  return true\r\n}\r\n```\r\n\r\nAnd if you\'d like to use syntax highlighting, include the language:\r\n\r\n```javascript\r\nif (isAwesome){\r\n  return true\r\n}\r\n```', NULL, '', NULL, 'TEKNOLOJ??', '2017-02-21 05:25:23', 0, 6, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `item_type` tinyint(4) NOT NULL,
  `action_type` tinyint(4) NOT NULL,
  `item_id` int(11) NOT NULL,
  `item_uid` int(11) NOT NULL,
  `unread` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `uid`, `item_type`, `action_type`, `item_id`, `item_uid`, `unread`, `created`) VALUES
(1, 4, 0, 0, 24, 1, 1, '2017-05-28 01:55:28'),
(2, 4, 0, 1, 30, 1, 1, '2017-05-28 02:00:04'),
(3, 4, 0, 3, 38, 1, 1, '2017-05-28 02:10:41'),
(4, 5, 1, 3, 26, 4, 1, '2017-05-28 02:13:47'),
(5, 5, 1, 0, 27, 4, 1, '2017-05-28 02:16:57'),
(6, 5, 1, 1, 26, 4, 1, '2017-05-28 02:17:25'),
(7, 5, 0, 2, 38, 1, 1, '2017-05-28 02:18:38'),
(8, 5, 1, 2, 27, 4, 1, '2017-05-28 02:19:53'),
(9, 6, 0, 3, 48, 2, 1, '2017-05-28 04:10:23'),
(10, 6, 0, 3, 29, 1, 1, '2017-05-28 04:15:50'),
(11, 7, 1, 3, 30, 6, 1, '2017-05-28 04:17:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`email`, `token`, `created`) VALUES
('mehmetmertyildiran@gmail.com', '6377f38c527466f42ce21ce43c972e77', '2017-02-20 23:23:39');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `score` int(7) NOT NULL DEFAULT '0',
  `comments` int(7) NOT NULL DEFAULT '0',
  `is_parent_link` tinyint(1) NOT NULL DEFAULT '1',
  `link_id` int(11) NOT NULL,
  `reported` int(7) NOT NULL DEFAULT '0',
  `favorited` int(7) NOT NULL DEFAULT '0',
  `is_link_for_union` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `content`, `pid`, `uid`, `created`, `score`, `comments`, `is_parent_link`, `link_id`, `reported`, `favorited`, `is_link_for_union`) VALUES
(1, 'haha ger??ekten de sevimli bir kedicik', 1, 2, '2017-01-20 07:33:26', 1, 1, 1, 1, 0, 1, 0),
(2, 'aynen :)', 1, 1, '2017-01-20 07:34:30', 1, 0, 0, 1, 0, 1, 0),
(3, 'en b??y??k p??i??ik Yuri bir kere!', 8, 2, '2017-01-20 11:07:31', 1, 2, 1, 8, 1, 0, 0),
(4, 'Red Alert 2 fan?? tespit edildi', 3, 1, '2017-01-20 11:09:01', 1, 0, 0, 8, 0, 0, 0),
(5, 'biri bana m?? seslendi?', 3, 3, '2017-01-20 11:29:32', 1, 0, 0, 8, 1, 0, 0),
(6, 'heralde Westeros\'u komple ele ge??iriyor yeni sezon da :)', 24, 3, '2017-01-22 22:38:32', 0, 0, 1, 24, 0, 0, 0),
(7, 'There are many different ways to style code with GitHub\'s markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you\'ve got a longer block of code, you can indent with four spaces:\n\n    if (isAwesome){\n      return true\n    }\n\nGitHub also supports something called code fencing, which allows for multiple lines without indentation:\n\n```\nif (isAwesome){\n  return true\n}\n```\n\nAnd if you\'d like to use syntax highlighting, include the language:\n\n```javascript\nif (isAwesome){\n  return true\n}\n```', 53, 2, '2017-02-21 05:42:58', 0, 0, 1, 53, 0, 0, 0),
(8, 'There are many different ways to style code with GitHub\'s markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you\'ve got a longer block of code, you can indent with four spaces:\n\n    if (isAwesome){\n      return true\n    }\n\nGitHub also supports something called code fencing, which allows for multiple lines without indentation:\n\n```\nif (isAwesome){\n  return true\n}\n```\n\nAnd if you\'d like to use syntax highlighting, include the language:\n\n```javascript\nif (isAwesome){\n  return true\n}\n```', 53, 2, '2017-02-21 06:24:31', 0, 0, 1, 53, 0, 0, 0),
(9, 'There are many different ways to style code with GitHub\'s markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you\'ve got a longer block of code, you can indent with four spaces:\n\n    if (isAwesome){\n      return true\n    }\n\nGitHub also supports something called code fencing, which allows for multiple lines without indentation:\n\n```\nif (isAwesome){\n  return true\n}\n```\n\nAnd if you\'d like to use syntax highlighting, include the language:\n\n```javascript\nif (isAwesome){\n  return true\n}\n```', 53, 2, '2017-02-21 06:28:13', 0, 0, 1, 53, 0, 0, 0),
(10, 'There are many different ways to style code with GitHub\'s markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you\'ve got a longer block of code, you can indent with four spaces:\n\n    if (isAwesome){\n      return true\n    }\n\nGitHub also supports something called code fencing, which allows for multiple lines without indentation:\n\n```\nif (isAwesome){\n  return true\n}\n```\n\nAnd if you\'d like to use syntax highlighting, include the language:\n\n```javascript\nif (isAwesome){\n  return true\n}\n```', 53, 2, '2017-02-21 06:30:44', 0, 0, 1, 53, 0, 0, 0),
(11, 'There are many different ways to style code with GitHub\'s markdown. If you have inline code blocks, wrap them in backticks: `var example = true`.  If you\'ve got a longer block of code, you can indent with four spaces:\n\n    if (isAwesome){\n      return true\n    }\n\nGitHub also supports something called code fencing, which allows for multiple lines without indentation:\n\n```\nif (isAwesome){\n  return true\n}\n```\n\nAnd if you\'d like to use syntax highlighting, include the language:\n\n```javascript\nif (isAwesome){\n  return true\n}\n```', 53, 2, '2017-02-21 06:32:26', 0, 0, 1, 53, 0, 0, 0),
(12, 'If you want to embed images, this is how you do it:\n\n![Image of Yaktocat](https://octodex.github.com/images/yaktocat.png)', 53, 2, '2017-02-21 06:35:36', 0, 5, 1, 53, 0, 0, 0),
(13, 'Sometimes you want numbered lists:\n\n1. One\n2. Two\n3. Three\n\nSometimes you want bullet points:\n\n* Start a line with a star\n* Profit!\n\nAlternatively,\n\n- Dashes work just as well\n- And if you have sub points, put two spaces before the dash or star:\n  - Like this\n  - And this', 12, 2, '2017-02-21 06:38:19', 0, 0, 0, 53, 0, 0, 0),
(14, 'Sometimes you want numbered lists:\n\n1. One\n2. Two\n3. Three\n\nSometimes you want bullet points:\n\n* Start a line with a star\n* Profit!\n\nAlternatively,\n\n- Dashes work just as well\n- And if you have sub points, put two spaces before the dash or star:\n  - Like this\n  - **And this**', 12, 2, '2017-02-21 06:41:39', 0, 1, 0, 53, 0, 0, 0),
(15, 'Sometimes you want numbered lists:\n\n1. One\n2. Two\n3. Three\n\nSometimes you want bullet points:\n\n* Start a line with a star\n* Profit!\n\nAlternatively,\n\n- Dashes work just as well\n- And if you have sub points, put two spaces before the dash or star:\n  - Like this\n  - And this', 12, 2, '2017-02-21 06:42:20', 0, 0, 0, 53, 0, 0, 0),
(16, 'Sometimes you want numbered lists:\n\n1. One\n2. Two\n3. Three\n\nSometimes you want bullet points:\n\n* Start a line with a star\n* Profit!\n\nAlternatively,\n\n- Dashes work just as well\n- And if you have sub points, put two spaces before the dash or star:\n  - Like this\n  - And this', 12, 2, '2017-02-21 06:46:22', 0, 0, 0, 53, 0, 0, 0),
(17, 'Sometimes you want numbered lists:\n\n1. One\n2. Two\n3. Three\n\nSometimes you want bullet points:\n\n* Start a line with a star\n* Profit!\n\nAlternatively,\n\n- Dashes work just as well\n- And if you have sub points, put two spaces before the dash or star:\n  - Like this\n  - And this', 12, 2, '2017-02-21 06:47:08', 0, 0, 0, 53, 0, 0, 0),
(18, 'Sometimes you want numbered lists:\n\n1. One\n2. Two\n3. Three\n\nSometimes you want bullet points:\n\n* Start a line with a star\n* Profit!\n\nAlternatively,\n\n- Dashes work just as well\n- And if you have sub points, put two spaces before the dash or star:\n  - Like this\n  - And this', 14, 2, '2017-02-21 06:47:21', 0, 1, 0, 53, 0, 0, 0),
(19, 'http://github.com - automatic!\n[GitHub](http://github.com)', 18, 2, '2017-02-21 06:48:27', 0, 1, 0, 53, 0, 0, 0),
(20, 'http://github.com - automatic!\n[GitHub](http://github.com)', 19, 2, '2017-02-21 06:49:09', 0, 1, 0, 53, 0, 0, 0),
(21, 'http://github.com - automatic!\n[GitHub](http://github.com)', 20, 2, '2017-02-21 06:51:11', 0, 2, 0, 53, 0, 0, 0),
(22, 'As Kanye West said:\n\n> We\'re living the future so\n> the present is our past.', 21, 2, '2017-02-21 06:51:45', 0, 1, 0, 53, 0, 0, 0),
(23, 'http://github.com - automatic!\n[GitHub](http://github.com)', 21, 2, '2017-02-21 06:52:04', 0, 1, 0, 53, 0, 0, 0),
(24, 'http://github.com - automatic!\n[GitHub](http://github.com)', 23, 2, '2017-02-21 06:52:22', 0, 0, 0, 53, 0, 0, 0),
(25, 'I think you should use an\n`<addr>` element here instead.', 22, 2, '2017-02-21 07:01:57', 0, 0, 0, 53, 0, 0, 0),
(26, 'arabesk :/', 48, 4, '2017-05-28 02:05:46', -1, 1, 1, 48, 0, 0, 0),
(27, 'yavrum kald??r kollar??n??...\n\natletini de??i??tirecem yavrum kald??rsana kollar??n??!', 38, 4, '2017-05-28 02:10:40', 1, 0, 1, 38, 0, 1, 0),
(28, 'hay??r, en g??zeli satanic metallic black arabesk!', 26, 5, '2017-05-28 02:13:47', 0, 0, 0, 48, 0, 0, 0),
(29, 'pop m??zik = bok m??zik', 48, 6, '2017-05-28 04:10:23', 0, 0, 1, 48, 0, 0, 0),
(30, 'https://neon.kde.org/', 29, 6, '2017-05-28 04:15:50', 0, 1, 1, 29, 0, 0, 0),
(31, 'bence de en iyisi KDE neon', 30, 7, '2017-05-28 04:17:34', 0, 0, 0, 29, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `report_link`
--

CREATE TABLE `report_link` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report_link`
--

INSERT INTO `report_link` (`id`, `uid`, `link_id`, `created`) VALUES
(1, 2, 5, '2017-01-20 11:12:19'),
(2, 2, 8, '2017-02-21 02:45:29');

-- --------------------------------------------------------

--
-- Table structure for table `report_reply`
--

CREATE TABLE `report_reply` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report_reply`
--

INSERT INTO `report_reply` (`id`, `uid`, `reply_id`, `created`) VALUES
(1, 2, 5, '2017-01-20 11:30:37'),
(2, 2, 3, '2017-02-21 02:45:09');

-- --------------------------------------------------------

--
-- Table structure for table `report_topic`
--

CREATE TABLE `report_topic` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `topic_name` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report_topic`
--

INSERT INTO `report_topic` (`id`, `uid`, `topic_name`, `created`) VALUES
(1, 2, 'YEMEK', '2017-01-20 11:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `subscription`
--

CREATE TABLE `subscription` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscription`
--

INSERT INTO `subscription` (`id`, `uid`, `topic`, `created`) VALUES
(1, 3, 'HABER', '2017-01-20 11:31:18'),
(2, 3, 'TEKNOLOJ??', '2017-01-20 11:31:57'),
(3, 3, 'V??DEO', '2017-01-20 11:31:59'),
(4, 3, 'KOM??K', '2017-01-20 11:32:03'),
(6, 2, 'HABER', '2017-02-21 02:44:49'),
(7, 2, 'SORU', '2017-02-21 02:44:50'),
(8, 2, 'V??DEO', '2017-02-21 02:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `subscribers` int(11) NOT NULL DEFAULT '0',
  `header_image` varchar(255) DEFAULT NULL,
  `creator_uid` int(11) NOT NULL DEFAULT '1',
  `reported` int(7) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`name`, `description`, `subscribers`, `header_image`, `creator_uid`, `reported`, `created`) VALUES
('ANKARA', 'T??rkiye\'nin ba??kenti hakk??nda her??ey', 0, 'https://media.holidayme.com/images/Ankara-Turkey/Ankara-635762507071443324.jpg', 2, 0, '2017-01-22 20:52:31'),
('BASKETBOL', 'NBA All Stars', 0, 'https://www.spaldingequipment.com/filesimages/image-header/basketball-freethrow.jpg', 1, 0, '2017-01-22 12:34:48'),
('FUTBOL', 'Ofsayt?? bilmeyenlerin giremeye??i ortam', 0, 'https://targetcareers.co.uk/sites/targetcareers.co.uk/files/public/field/image/football.jpg', 1, 0, '2017-01-22 12:33:31'),
('G??F', 'Animasyonlu mu animasyonlu i??erikler.', 0, 'https://media.giphy.com/media/6quIvmJFMH7Wg/giphy.gif', 1, 0, '2017-01-21 10:21:04'),
('HABER', 'Bu konu alt??nda en g??ncel haberleri bulabilirsiniz.', 2, 'http://farm9.staticflickr.com/8228/8434207887_1eb86f546e_o.jpg', 1, 0, '2017-01-20 03:17:49'),
('??STANBUL', 'http://www.istanbultourservice.com/images/istanbul.jpg', 0, 'http://www.istanbulbluerestaurant.com/wp-content/uploads/2015/03/slide2.jpg', 2, 0, '2017-01-22 20:40:49'),
('??ZM??R', 'Ege\'nin ??ncisi', 0, 'http://www.gomedicaltrip.com/wp-content/uploads/2014/12/izmir-yeni.jpg', 2, 0, '2017-01-22 21:13:12'),
('KOM??K', 'Her t??rl?? komik i??eri??in payla????lmas?? ??iddetle ??iddetle tavsiye edilir.', 1, 'https://lh4.googleusercontent.com/-4DUyyZvKaKA/UsCOHaIufFI/AAAAAAAAAEU/xRMrY0AAAmQ/s0-d/meme_collage.jpg', 1, 0, '2017-01-20 03:50:13'),
('M??Z??K', 'Kar??????k MP3 CD 2016', 0, 'http://az616578.vo.msecnd.net/files/2016/07/31/6360553665687961831595419134_concertsfandom.jpg', 1, 0, '2017-01-20 05:46:20'),
('OYUN', 'PC Gamers vs Console Peasants', 0, 'http://wallpapercave.com/wp/xS571ba.jpg', 1, 0, '2017-01-21 10:24:17'),
('RES??M', 'Bu konu alt??nda direk resim linkleri payla????l??r. ??rne??in bir kedi foto??raf?? :D', 0, 'https://3b0ad08da0832cf37cf5-435f6e4c96078b01f281ebf62986b022.ssl.cf3.rackcdn.com/articles/content/Catteries-and-Cat%20Sitting-Services.jpg', 1, 0, '2017-01-20 03:09:34'),
('SANAT', 'Sanata dair her??ey', 0, 'http://shop.crayola.com/dw/image/v2/AALB_PRD/on/demandware.static/-/Sites-crayola-storefront/default/dw15654f54/images/category_headers/cat-header-art-edge_1920x716.jpg?sw=1920&sh=716', 2, 0, '2017-01-22 21:47:25'),
('S??NEMA', 'Vizyondaki filmler, ele??tiriler, yorumlar ve daha fazlas??...', 0, 'http://www.smarto.com.tr/wp-content/uploads/2015/04/sinema-cinema-istanbul.jpg', 1, 0, '2017-01-20 04:00:29'),
('SORU', 'Bu konu alt??nda akl??n??za gelen her t??rl?? soruyu sorabilirsiniz.', 1, 'https://static.vecteezy.com/system/resources/previews/000/092/726/original/question-mark-background-vector.jpg', 1, 0, '2017-01-21 10:33:44'),
('TEKNOLOJ??', 'Yar??n??n teknolojiisinden haberiniz olsun.', 1, 'http://www.fixxit.co.ke/fix/fixiit/images/nootheme/vidavo_slider/technology_2560-x-720.jpg', 1, 0, '2017-01-20 03:53:31'),
('??N??VERS??TE', '??niversite ????rencileri, ??enlikler, konserler, e??lence g??rg??r ??amata sonra vize, final, b??t vs 8 sene', 0, 'http://bestpopular.biz/uploads/images/bwe0bl20160225113501.jpg', 1, 0, '2017-01-22 12:26:27'),
('V??DEO', '%90!?? YouTube\'tan ibaret olan konu.', 2, 'http://jimroyal.com/wp-content/uploads/2016/08/Videos.jpg', 1, 0, '2017-01-20 06:06:42'),
('VOLEYBOL', 'Filenin Sultanlar??', 0, 'https://www.spaldingequipment.com/filesimages/image-header/volleyball-girl-back.jpg', 2, 0, '2017-01-22 21:38:36'),
('YEMEK', 'En g??zel yemek tariflerini ve en ??zel restoranlar?? bulabilirsiniz.', 0, 'https://www.westindiessoul.com/wp-content/uploads/2014/06/banner03.jpg', 1, 1, '2017-01-20 03:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(33) NOT NULL,
  `email` varchar(33) NOT NULL,
  `karma` int(7) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `karma`, `created`) VALUES
(1, 'admin', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'admin@telve.net', 0, '2017-01-20 01:58:01'),
(2, 'moderator', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'moderator@telve.net', 0, '2017-01-20 07:17:32'),
(3, 'yuri', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'yuri@telve.net', 0, '2017-01-20 11:28:40'),
(4, 'testuser1', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser1@gmail.com', 0, '2017-02-05 07:25:06'),
(5, 'testuser2', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser2@gmail.com', 0, '2017-02-05 07:25:55'),
(6, 'testuser3', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser3@gmail.com', 0, '2017-02-05 07:28:41'),
(7, 'testuser4', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser4@gmail.com', 0, '2017-02-05 07:29:05'),
(8, 'testuser5', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser5@gmail.com', 0, '2017-02-05 07:47:15'),
(9, 'testuser6', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser6@gmail.com', 0, '2017-02-05 07:47:49'),
(10, 'testuser7', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser7@gmail.com', 0, '2017-02-05 07:48:31'),
(11, 'testuser8', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'testuser8@gmail.com', 0, '2017-02-05 07:51:16'),
(12, 'exampleuser2', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'exampleuser2@gmail.com', 0, '2017-02-19 16:50:23'),
(29, 'mertyildiran', 'b23cf2d0fb74b0ffa0cf4c70e6e04926', 'mehmetmertyildiran@gmail.com', 0, '2017-02-20 00:41:02');

-- --------------------------------------------------------

--
-- Table structure for table `vote_link`
--

CREATE TABLE `vote_link` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `link_id` int(11) NOT NULL,
  `up_down` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vote_link`
--

INSERT INTO `vote_link` (`id`, `uid`, `link_id`, `up_down`, `created`) VALUES
(1, 2, 9, 1, '2017-01-20 07:20:11'),
(2, 2, 5, 0, '2017-01-20 07:21:04'),
(3, 2, 24, 1, '2017-01-22 22:28:31'),
(4, 1, 24, 1, '2017-01-22 22:28:51'),
(5, 3, 24, 1, '2017-01-22 22:29:18'),
(6, 2, 49, 1, '2017-02-21 02:38:18'),
(7, 2, 44, 0, '2017-02-21 02:38:51'),
(8, 4, 24, 1, '2017-05-28 01:55:28'),
(9, 4, 30, 0, '2017-05-28 02:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `vote_reply`
--

CREATE TABLE `vote_reply` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `up_down` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vote_reply`
--

INSERT INTO `vote_reply` (`id`, `uid`, `reply_id`, `up_down`, `created`) VALUES
(1, 1, 1, 1, '2017-01-20 07:34:59'),
(2, 2, 2, 1, '2017-01-20 11:03:19'),
(3, 1, 3, 1, '2017-01-20 11:07:45'),
(4, 2, 4, 1, '2017-01-20 11:09:19'),
(5, 3, 5, 1, '2017-01-20 11:29:52'),
(6, 5, 27, 1, '2017-05-28 02:16:57'),
(7, 5, 26, 0, '2017-05-28 02:17:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favourite_link`
--
ALTER TABLE `favourite_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite_reply`
--
ALTER TABLE `favourite_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `link` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `link` ADD FULLTEXT KEY `text` (`text`);
ALTER TABLE `link` ADD FULLTEXT KEY `domain` (`domain`);
ALTER TABLE `link` ADD FULLTEXT KEY `url` (`url`);
ALTER TABLE `link` ADD FULLTEXT KEY `topic` (`topic`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_link`
--
ALTER TABLE `report_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_reply`
--
ALTER TABLE `report_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report_topic`
--
ALTER TABLE `report_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscription`
--
ALTER TABLE `subscription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vote_link`
--
ALTER TABLE `vote_link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vote_reply`
--
ALTER TABLE `vote_reply`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favourite_link`
--
ALTER TABLE `favourite_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `favourite_reply`
--
ALTER TABLE `favourite_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `report_link`
--
ALTER TABLE `report_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_reply`
--
ALTER TABLE `report_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `report_topic`
--
ALTER TABLE `report_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subscription`
--
ALTER TABLE `subscription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `vote_link`
--
ALTER TABLE `vote_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `vote_reply`
--
ALTER TABLE `vote_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
