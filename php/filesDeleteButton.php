<?
require_once('define.php');
$dir = FOLDER;

$f_arr = array_values( array_diff( scandir($dir), array('.', '..') ) );
if( count($f_arr) ){
	foreach($f_arr as $item){
		unlink("$dir/$item");
	}
}
?>