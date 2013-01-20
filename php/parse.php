<?php      

 @ini_set('memory_limit','256M');   

function getFileExtention($filename) {
	return strtolower(substr($filename, strrpos($filename, '.')+1));
}
         
function isImage($file) {
	$validExtension = array('jpg','png','gif','bmp','jpeg');
	return  in_array(getFileExtention($file), $validExtension);
}

if ( $handler = opendir('.') ) 
{
		while ( ($file= readdir($handler)) !== FALSE ) {
			if ( isImage($file)) {
				$properties = getimagesize($file) ;       
				$content  = '<html><head></head><body><img src="'.$file.'" width="'.$properties[0].'" height="'.$properties[1].'"/></body></html>';
				$newFileName = substr($file, 0, stripos($file, ".png")).".html";
				$fh = fopen($newFileName, 'w') or die("can't open file");
				fwrite($fh, $content);
				fclose($fh);
			}
		} 
}

?>
