<?php
/*
 * $url 远程的图片完整路径
 * $file 保存图片的路径名称(路径加文件名称)
 */
function GrabImage($url,$file) {//先读到缓冲区再下载，比直接下载好，直接下载可能下载不全
        if($url=="") return false;
  
        ob_start();//打开输出缓冲区，也就是暂时不允许输出
        readfile($url);//读一个文件写入到输出缓冲
        $img = ob_get_contents();
        ob_end_clean();//下载完删除缓冲区，而不是输出
        $size = strlen($img); // 图片大小
  
  
        $fp2=fopen($file, "a");
        fwrite($fp2,$img);
        fclose($fp2);
  
        return filesize($file);
}

//如下测试
//$url = "https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=3697621360,2540112521&fm=58";
//print_r(GrabImage($url, "./upload/".imgName($url)));

function imgName($url){
	return date("YmdHis", time()).md5($url).'.png';
}



?>