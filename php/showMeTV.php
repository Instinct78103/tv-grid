<?
include('functions.php');
include('class_channel.php');

//��� ������� �� �������� ������ � ������ div.list, 
//����������� json-���������� "fileName", 
//����� ���������� ������ $obj = new Channel($arr['fileName']).

$jsonStr = file_get_contents('php://input');
$arr = json_decode($jsonStr, true);
$obj = new Channel($arr['fileName']);

result( $obj->raw() );