<?php

define ("TOTAL_PAGE", 37);

$link = mysqli_connect("localhost", "root", "root", "blog") or die("小样链接数据库失败!");
mysqli_query( $link, "set names utf8");	//设置编码

?>