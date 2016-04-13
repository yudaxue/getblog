<?php
require './QueryList/vendor/autoload.php';
require './config.php';	//数据库链接文件
require './common.php';	//公共函数文件

use QL\QueryList;

//1.先获取列表数据并插入到records表中
function insertListData($page){
	global $link;
	//$page = 1;
	//while($page < TOTAL_PAGE){
		$listData = getListData($page);
		//print_r($listData);die;
		if(!empty($listData)){
			//插入到数据表中
			foreach($listData as $v){
				$sqlExists = "select  * from records where url='{$v['url']}'";
				$res = mysqli_query($link, $sqlExists);
				//如果没有插入就插入
				if(!$res->num_rows){
					$sql = "insert into records(url, title) values('".$v['url']."','".$v['title']."')";
					mysqli_query($link, $sql);
					
					insertActicle($v['url']);
				}
			}
		}
	//	$page++;
	//}
}

//2.插入acticle表中
//获取单条记录的数据并插入到acticle表中
function insertActicle($url){
	global $link;
	
	$data = getDetialData($url);
	//print_r($data);die;
	if(!empty($data)){
		foreach($data as $vv){
			$sqlA = '';
			$sqlA .= "insert into acticle(title, content, type, crdate, readcount)";
			$sqlA .= " values('".(!empty($vv['title'])?$vv['title']:" ")."','".$vv['content'];
			$sqlA .= "','".(!empty($vv['type'])?$vv['type']:" ");
			$sqlA .= "',"."'";
			$sqlA .= (!empty($vv['crdate'])?$vv['crdate']:0);
			$sqlA .= "','".(!empty($vv['readCount'])?$vv['readCount']:"0");
			$sqlA .= "')";

			mysqli_query($link, $sqlA);
		}
	}
}


/*******************先采集列表的Url******************************/
function getListData($page=1){
	$data = array();
	$listUrl = "http://www.cnblogs.com/yuwensong/default.html?page=".$page;
	$rules = array(
		"url"=>array("#mainContent>.forFlow>.day>.postTitle>a", "href"),
		"title"=>array("#mainContent>.forFlow>.day>.postTitle>a", "text")
	);

	$html = @file_get_contents($listUrl);
	if(empty($html)){
		return ;
	}
	$data = QueryList::Query($html, $rules, '', "UTF-8", "UTF-8" )->data;
	return $data;
}

//print_r(getListData(1));	//测试

/*******************根据采集到的列表采集详细页面的内容******************************/
function getDetialData($url){
	$data = array();
	//$url = "http://www.cnblogs.com/yuwensong/p/5370151.html";
	$rules = array(
		"title"=>array("#topics>.post>.postTitle>a", "text"), //标题
		"content"=>array("#cnblogs_post_body", "html", '', function($content){
			$doc = phpQuery::newDocumentHTML($content); 
			$imgs = pq($doc)->find('img'); 
			foreach ($imgs as $img) { 
				$src = pq($img)->attr('src');
				$localSrc = 'upload/'.md5($src).'.png'; 
				$stream = file_get_contents($src);
				file_put_contents($localSrc,$stream); 
				pq($img)->attr('src',$localSrc); 
			} 
			return $doc->htmlOuter();
		}), //内容
		"type"=>array("#BlogPostCategory", "text", '', function($content){
			return empty($content)?" ":$content;
		}), //分类
		"date"=>array("#post-date", "text", '', function($content){
			return strtotime($content);
		}),	//日期
		"readCount"=>array("#post_view_count", "html")	//阅读次数
	);
	
	$html = @file_get_contents($url);
	$data = QueryList::Query($html, $rules, '', "UTF-8", "UTF-8")->data;
	
	return $data;
}
//print_r(getDetialData(""));	//测试


?>
<?php

//在浏览器中打开，配合自动提交，解决30秒钟超时问题
$page = empty($_GET['page'])?"1":$_GET['page'];
$page ++;
file_put_contents("1.log", $page);
if($page > TOTAL_PAGE){
	echo "this is over";
	die;
}

//调用获取列表的数据
insertListData($page);

?>
<html>
	<head>
	<script src="./jquery-2.1.3.min.js"></script>		
	</head>
	<body>
	<h1>this is a test</h1>
		<form id="sub" action="./index.php?page=<?php echo $page;?>">
			<input type="text" name="page"
	 value="<?php echo $page;?>" />
			<input type="submit"   value="submit" />
		</form>
	</body>
	<script>
		$(function(){
			$("#sub").submit();
		});	
	</script>
</html>
	





