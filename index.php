<?
if( !isset($_POST['afterDot']) ){
	$_POST['afterDot'] = null;
}
if( !isset($_POST['changeTime']) ){
	$_POST['changeTime'] = 0;
}
if( !isset($_POST['deleteReps']) ){
	$_POST['deleteReps'] = 1;
}
if( !isset($_POST['deleteShortPros']) ){
	$_POST['deleteShortPros'] = 1;
}
if( !isset($_POST['startTime']) ){
	$_POST['startTime'] = '07:00';
}
if( !isset($_POST['endTime']) ){
	$_POST['endTime'] = '02:00';
}
if( !isset($_POST['lowerCase']) ){
	$_POST['lowerCase'] = null;
}
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Чистильщик</title>
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="grid">
		<div class="mode element"><a href="http://tv-grid/list.php">Переключить режим</a></div>
		<div class="settings element"><a href="#">Настройки</a></div>
		<div class="tuning element">
			<select name="startTime" id="startTime">
				<?php
					for($h = 0; $h < 13; $h++){
						echo '<option value="' . (($h < 10) ?  '0' . $h . ':00' : $h . ':00') . '"' . ((isset($_POST['startTime']) && $_POST['startTime'] == $h) ? ' selected="selected"' : '') . '>' . (($h < 10) ?  '0' . $h . ':00' : $h . ':00') . '</option>';
					}
				?>
				</select>
				<select name="endTime" id="endTime">
				<?php
					for($h = 0; $h < 7; $h++){
						echo '<option value="' . '0' . $h . ':00' . '"' . ((isset($_POST['endTime']) && $_POST['endTime'] == $h) ? ' selected="selected"' : '') . '>' . '0' . $h . ':00' . '</option>';
					}
				?>
			</select>
			<br><br>
			<input type="checkbox" name="deleteReps" id="deleteReps" <? echo ( isset($_POST['deleteReps']) ) ? 'checked' : '' ?>>
			<label for="deleteReps">Удалять повторы</label>
			<br>
			<input type="checkbox" name="deleteShortPros" id="deleteShortPros" <? echo ( isset($_POST['deleteShortPros']) ) ? 'checked' : '' ?>>
			<label for="deleteShortPros">Удалять программы менее 10 минут</label>
			<br>
			<input type="checkbox" name="lowerCase" id="lowerCase" <? echo ( isset($_POST['lowerCase']) ) ? 'checked' : '' ?>>
			<label for="lowerCase">Сменить регистр с ЗАГЛАВНЫХ</label>
			<br>
			<input type="checkbox" name="afterDot" id="afterDot" <? echo ( isset($_POST['afterDot']) ) ? 'checked' : '' ?>>
			<label for="afterDot">Удалить часть передачи ПОСЛЕ точки или двоеточия</label>
			<br><br>
			<select name="changeTime" id="changeTime">
			<?php
				for($h = -6; $h <= 6; $h++){
					echo '<option value="' . $h . '"' . ((isset($_POST['changeTime']) && $_POST['changeTime'] == $h) ? ' selected="selected"' : '') . '>' . ( ($h <= 0) ?  $h : $h . '+' ) . '</option>';
				}
			?>
			</select>
			<span id="time">Изменить время трансляции</span>
		</div>
		<textarea name="in" class="in element" autofocus></textarea>
		<textarea name="out" class="out element"></textarea>
	</div>
	<script src="js/script.js"></script>
</body>
</html>