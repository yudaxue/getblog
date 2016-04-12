<?php
require './QueryList/vendor/autoload.php';
require './config.php';	//数据库链接文件
require './common.php';	//公共函数文件

use QL\QueryList;

//1.先获取列表数据并插入到records表中
function insertListData(){
	$page = 1;
	while($page < TOTAL_PAGE){
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
				}
			}
		}
		$page++;
	}
}



//2.插入acticle表中
//获取单条记录的数据并插入到acrticle表中
function insertActicle(){
	$data = getDetialData($v['url']);
	if(!empty($data)){
		foreach($data as $vv){
			$tag = !empty($vv['tag'])?$vv['tag']:"";
			
			$sqlA = '';
			$sqlA .= "insert into records(title, content, type, tag, crdate, readcount)";
			$sqlA .= " values('".$vv['title']."','".$vv['content']."','".$vv['type'];
			$sqlA .= "','".$tag."','";
			$sqlA .= !empty($vv['crdate'])?strtotime($vv['crdate']):0;
			$sqlA .= "','".!empty($vv['readCount'])?$vv['readCount']:"0";
			$sqlA .= "', )";
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

	$html = file_get_contents($listUrl);
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
		"content"=>array("#cnblogs_post_body", "html"), //内容
		"type"=>array("#BlogPostCategory", "text"), //分类
		"tag"=>array("#EntryTag>a", "text"),	//标签
		"date"=>array("#post-date", "text"),	//日期
		"readCount"=>array("#post_view_count", "html")	//阅读次数
	);
	
	$html = file_get_contents($url);
	$data = QueryList::Query($html, $rules, '', "UTF-8", "UTF-8")->data;
	
	return $data;
}
//print_r(getDetialData(""));	//测试


?>



	





