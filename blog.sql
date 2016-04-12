-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 �?04 �?12 �?18:19
-- 服务器版本: 5.5.40
-- PHP 版本: 5.6.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `acticle`
--

CREATE TABLE IF NOT EXISTS `acticle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `content` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内容',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '分类',
  `tag` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '标签',
  `crdate` int(11) NOT NULL COMMENT '日期',
  `readcount` int(11) NOT NULL COMMENT '阅读次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `records`
--

CREATE TABLE IF NOT EXISTS `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '采集的详细url地址',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=482 ;

--
-- 转存表中的数据 `records`
--

INSERT INTO `records` (`id`, `url`, `title`) VALUES
(392, 'http://www.cnblogs.com/yuwensong/archive/2012/12/28/2837019.html', '[缃?《]鐩存帴鍐欐枃浠跺悕灏卞彲浠ユ墽琛岃剼鏈?枃浠'),
(393, 'http://www.cnblogs.com/yuwensong/p/5370151.html', 'C 绠?崟1'),
(394, 'http://www.cnblogs.com/yuwensong/p/5344699.html', 'webpack  window  娣诲姞ES6鏀?嚭'),
(395, 'http://www.cnblogs.com/yuwensong/p/5344656.html', 'webpack window 娣诲姞绗?笁鏂瑰簱'),
(396, 'http://www.cnblogs.com/yuwensong/p/5344638.html', 'webpack window 澶勭悊鍥剧墖鍜屽叾浠栭潤鎬佹枃浠'),
(397, 'http://www.cnblogs.com/yuwensong/p/5344537.html', 'webpack window 浣跨敤sass鏉ョ紪璇慶ss鏍峰紡'),
(398, 'http://www.cnblogs.com/yuwensong/p/5344408.html', 'webpack  window  瀹夎?loader'),
(399, 'http://www.cnblogs.com/yuwensong/p/5344297.html', 'webpack  window dev-server閰嶇疆'),
(400, 'http://www.cnblogs.com/yuwensong/p/5342109.html', 'webpack  window涓嬮厤缃?殑hello world'),
(401, 'http://www.cnblogs.com/yuwensong/p/5341022.html', 'Vue.js 娣诲姞缁勪欢'),
(402, 'http://www.cnblogs.com/yuwensong/p/5340434.html', 'Vue.js 缁煎悎'),
(403, 'http://www.cnblogs.com/yuwensong/p/5340181.html', 'Vue.js hello world'),
(404, 'http://www.cnblogs.com/yuwensong/p/5327890.html', 'React(0.13)  鏈嶅姟绔?覆鏌撶殑涓や釜鍑芥暟'),
(405, 'http://www.cnblogs.com/yuwensong/p/5325602.html', 'React(0.13)  缁勪欢鐨勭粍鍚堜娇鐢'),
(406, 'http://www.cnblogs.com/yuwensong/p/5325558.html', 'React(0.13)  鍒╃敤componentDidMount 鏂规硶璁剧疆涓?釜瀹氭椂鍣'),
(407, 'http://www.cnblogs.com/yuwensong/p/5320056.html', 'React(0.13)  瀹氫箟涓?釜浣跨敤鍔ㄧ敾'),
(408, 'http://www.cnblogs.com/yuwensong/p/5319693.html', 'React(0.13)  瀹氫箟涓?釜checked缁勪欢'),
(409, 'http://www.cnblogs.com/yuwensong/p/5319613.html', 'React(0.13)  瀹氫箟涓?釜澶氶?鐨勭粍浠'),
(410, 'http://www.cnblogs.com/yuwensong/p/5319465.html', 'React(0.13)  瀹氫箟涓?釜input缁勪欢锛屼娇鍏惰緭鍏ョ殑鍊艰浆涓哄ぇ鍐'),
(411, 'http://www.cnblogs.com/yuwensong/p/5318293.html', 'php 鎵ц?鍛戒护鍑芥暟'),
(412, 'http://www.cnblogs.com/yuwensong/p/5316046.html', '寰?俊澶氬?鏈嶆彃浠惰幏鍙杘penid'),
(413, 'http://www.cnblogs.com/yuwensong/p/5315274.html', 'React(0.13)  瀹氫箟涓?釜鍔ㄦ?鐨勭粍浠?娉ㄩ噴锛屾牱寮?'),
(414, 'http://www.cnblogs.com/yuwensong/p/5315139.html', 'React(0.13)  瀹氫箟涓?釜鍔ㄦ?鐨勭粍浠?灞炴?)'),
(415, 'http://www.cnblogs.com/yuwensong/p/5314941.html', 'React(0.13)  瀹氫箟涓?釜鍔ㄦ?鐨勭粍浠?鍑芥暟浣滀负鍔ㄦ?鐨勫?)'),
(416, 'http://www.cnblogs.com/yuwensong/p/5314917.html', 'React(0.13)  瀹氫箟涓?釜鍔ㄦ?鐨勭粍浠'),
(417, 'http://www.cnblogs.com/yuwensong/p/5314891.html', 'React(0.13) hello world'),
(418, 'http://www.cnblogs.com/yuwensong/p/5311659.html', 'window 64bit 涓媟eact navtive瀹夎?'),
(419, 'http://www.cnblogs.com/yuwensong/p/5302599.html', 'ubuntu(14.04) 缃戣矾绠＄悊'),
(420, 'http://www.cnblogs.com/yuwensong/p/5302317.html', '12涓?湀浠界粺璁″垎缁'),
(421, 'http://www.cnblogs.com/yuwensong/p/5274955.html', 'ubuntu(14.04)  sphinx瀹夎?'),
(422, 'http://www.cnblogs.com/yuwensong/p/5262875.html', 'window 涓嬪畨瑁卹edis'),
(423, 'http://www.cnblogs.com/yuwensong/p/5253630.html', 'ubuntu(14.04) 涓嬮厤缃?噸鍐'),
(424, 'http://www.cnblogs.com/yuwensong/p/5241676.html', 'C++涓嬬殑鍛藉悕绌洪棿'),
(425, 'http://www.cnblogs.com/yuwensong/p/5216907.html', 'ubuntu(14.04) 涓嬪畨瑁厃af鎷撳睍'),
(426, 'http://www.cnblogs.com/yuwensong/p/5195624.html', 'ubuntu(14.04) remote access锛堣繙绋嬭繛鎺ユ暟鎹?簱)'),
(427, 'http://www.cnblogs.com/yuwensong/p/5195555.html', 'ubuntu(14.4) 瀹夎?phpmyadmin'),
(428, 'http://www.cnblogs.com/yuwensong/p/5195470.html', 'ubuntu(14.04) 瀹夎?ssh锛屽苟浣跨敤root鐢ㄦ埛鐧诲綍'),
(429, 'http://www.cnblogs.com/yuwensong/p/5194819.html', 'ubuntu锛?4.04鐗堟湰锛?閰嶇疆铏氭嫙鐜??锛堜竴涓猧p瀵瑰簲澶氫釜鍩熷悕锛'),
(430, 'http://www.cnblogs.com/yuwensong/p/5193115.html', 'ubuntu 涓?暟鎹?殑杩佺Щ'),
(431, 'http://www.cnblogs.com/yuwensong/p/5192369.html', 'ubuntu淇?敼鍥哄畾ip'),
(432, 'http://www.cnblogs.com/yuwensong/p/5192262.html', 'ubuntu涓嬪畨瑁卨amp鐜??'),
(433, 'http://www.cnblogs.com/yuwensong/p/5169343.html', 'canvas鐢诲浘'),
(434, 'http://www.cnblogs.com/yuwensong/p/5167161.html', 'javascript楂樼骇绋嬪簭璁捐?绗?笁绔'),
(435, 'http://www.cnblogs.com/yuwensong/p/5166019.html', 'javascript楂樼骇绋嬪簭璁捐?绗?簩绔'),
(436, 'http://www.cnblogs.com/yuwensong/p/5165953.html', 'javascript楂樼骇绋嬪簭璁捐?绗?竴绔'),
(437, 'http://www.cnblogs.com/yuwensong/p/5163756.html', 'centos锛?锛?浣跨敤yum杩涜?瀹夎?lamp鐜??'),
(438, 'http://www.cnblogs.com/yuwensong/p/5160216.html', 'subline涓婅?node.js鎻掍欢'),
(439, 'http://www.cnblogs.com/yuwensong/p/5158162.html', '鍩轰簬node.js鐨剋eb妗嗘灦express'),
(440, 'http://www.cnblogs.com/yuwensong/p/5157604.html', '瀹㈡埛绔?嵆鏃剁浉搴旂殑妗嗘灦鍙?互浣跨敤workerman'),
(441, 'http://www.cnblogs.com/yuwensong/p/5150974.html', '鑷?垱鐐瑰悕鍣'),
(442, 'http://www.cnblogs.com/yuwensong/p/5139402.html', '2/8/16 杞?0杩涘埗'),
(443, 'http://www.cnblogs.com/yuwensong/p/5139276.html', '鍗佽繘鍒惰浆鍖栦负2/8/16'),
(444, 'http://www.cnblogs.com/yuwensong/p/5138768.html', 'or    ||'),
(445, 'http://www.cnblogs.com/yuwensong/p/5102047.html', 'php 鐨剆tdClass绫荤殑绠?崟瀹炵敤'),
(446, 'http://www.cnblogs.com/yuwensong/p/5091763.html', '寮?彂瀹夊叏鍑犵偣'),
(447, 'http://www.cnblogs.com/yuwensong/p/5089600.html', 'js  Circle绫'),
(448, 'http://www.cnblogs.com/yuwensong/p/5089537.html', 'js   鎺掑簭'),
(449, 'http://www.cnblogs.com/yuwensong/p/5089475.html', 'js unique'),
(450, 'http://www.cnblogs.com/yuwensong/p/5086588.html', 'js涓?殑php rand鍑芥暟'),
(451, 'http://www.cnblogs.com/yuwensong/p/5086141.html', '椤圭洰涓婄嚎锛宲hp鐨勯敊璇?俊鎭?繀椤讳笉璁╁叾鍦ㄩ〉闈?腑鏄剧ず缁欏?鎴凤紝'),
(452, 'http://www.cnblogs.com/yuwensong/p/5086074.html', 'excel鏂囦欢鎬庝箞浣跨敤php杩涜?澶勭悊'),
(453, 'http://www.cnblogs.com/yuwensong/p/4968645.html', 'ubuntu 瀹夎?ssh 鏈嶅姟'),
(454, 'http://www.cnblogs.com/yuwensong/p/4968618.html', 'ubuntu 瀹夎?php-redis'),
(455, 'http://www.cnblogs.com/yuwensong/p/4959543.html', 'ubuntu 蹇樿?root瀵嗙爜浜嗕笉鐢ㄦ?锛岀湅杩欓噷'),
(456, 'http://www.cnblogs.com/yuwensong/p/4957458.html', 'ubuntu  瀹夎? LAMP鐜??'),
(457, 'http://www.cnblogs.com/yuwensong/p/4923008.html', 'yaf windows瀹夎?'),
(458, 'http://www.cnblogs.com/yuwensong/p/4846886.html', 'bookstrap table鎻掍欢'),
(459, 'http://www.cnblogs.com/yuwensong/p/4832955.html', '涓婁紶鏂囦欢'),
(460, 'http://www.cnblogs.com/yuwensong/p/4791971.html', 'laravel 5.1 鍛戒护鍒涘缓涓?棿浠'),
(461, 'http://www.cnblogs.com/yuwensong/p/4789593.html', 'laravel 5.1 娣诲姞绗?笁鏂规墿灞曞簱'),
(462, 'http://www.cnblogs.com/yuwensong/p/4787172.html', '鍙栨秷svn鐗堟湰鎺у埗'),
(463, 'http://www.cnblogs.com/yuwensong/p/4775768.html', 'Sublime Text 2鎼?缓Go寮?彂鐜??锛圵indows锛'),
(464, 'http://www.cnblogs.com/yuwensong/p/4774995.html', 'RESTful API 璁捐?鎸囧崡'),
(465, 'http://www.cnblogs.com/yuwensong/p/4766563.html', 'laravel-v5.1鍒嗛〉骞跺甫鍙傛暟'),
(466, 'http://www.cnblogs.com/yuwensong/p/4766492.html', 'laravel-v5.1鏁版嵁搴撹繛鎺ユ枃浠舵槸.env鏂囦欢'),
(467, 'http://www.cnblogs.com/yuwensong/p/4766454.html', 'laravel浣跨敤鐨勬ā鏉垮紩鎿?blade'),
(468, 'http://www.cnblogs.com/yuwensong/p/4766338.html', '鎺у埗鍣ㄤ腑娣诲姞DB绫绘墠鍙?互鎿嶄綔鏁版嵁搴撹〃涓?殑鏁版嵁'),
(469, 'http://www.cnblogs.com/yuwensong/p/4766209.html', '绠?崟hello world'),
(470, 'http://www.cnblogs.com/yuwensong/p/4766201.html', '鍒涘缓鎺у埗鍣ㄥ懡浠'),
(471, 'http://www.cnblogs.com/yuwensong/p/4765965.html', '鍛戒护鍒涘缓妯″瀷绫'),
(472, 'http://www.cnblogs.com/yuwensong/p/4727254.html', '鏂板缓鐢ㄦ埛骞舵巿鏉'),
(473, 'http://www.cnblogs.com/yuwensong/p/4726774.html', 'explain mysql鎬ц兘浼樺寲'),
(474, 'http://www.cnblogs.com/yuwensong/p/4703197.html', 'mysql(琛ㄧ被鍨嬬殑閫夋嫨)'),
(475, 'http://www.cnblogs.com/yuwensong/p/4662975.html', 'ubuntu 涓?畨瑁卹edis'),
(476, 'http://www.cnblogs.com/yuwensong/p/4646327.html', 'ubuntu 涓?畨瑁卪emcache,骞剁粰鍑轰竴涓?畝鍗曠殑瀹炰緥路'),
(477, 'http://www.cnblogs.com/yuwensong/p/4645831.html', '绋嬪簭鍛樻渶鑹伴毦鐨勫崄澶т换鍔'),
(478, 'http://www.cnblogs.com/yuwensong/p/4644074.html', 'ssh(瀹夊叏澶栧３鍗忚?)'),
(479, 'http://www.cnblogs.com/yuwensong/p/4642975.html', '鏁版嵁搴撳?浠?璁″垝浠诲姟'),
(480, 'http://www.cnblogs.com/yuwensong/p/4641735.html', '璁″垝浠诲姟 crontab'),
(481, 'http://www.cnblogs.com/yuwensong/p/4641284.html', '鏁版嵁搴撹?璁′簩');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
