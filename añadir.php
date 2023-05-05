<?php
	include ("config/conexion.php");
	$nombre = $_POST["nombre"];
	$alias = $_POST["alias"];
	$rut = $_POST["rut"];
	$email = $_POST["email"];
	$region = $_POST["region"];
	$comuna = $_POST["comuna"];
	$candidato = $_POST["candidato"];
	$web = $_POST["web"];
	$tv = $_POST["tv"];
	$redes = $_POST["redes"];
	$amigo = $_POST["amigo"];

	$resultado = $mysqli->query("SELECT * FROM formulario WHERE rut='$rut'");
	$resultadorut = $resultado->fetch_all(MYSQLI_ASSOC);
	foreach ($resultadorut as $row) {

		if ($row != 0){
			$rutvalido = 1;
			echo'<script type="text/javascript">
        	alert("Rut ya registrado");
        	window.location.href="index.php";
        	</script>';
		}
	}

	if ($rutvalido != 1) {
		$sentencia = $mysqli->prepare("INSERT INTO formulario
		(nombre, alias, rut, email, region_id, comuna_id, candidato_id, web, tv, redes, amigos)
		VALUES
		(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
		$sentencia->bind_param("ssssiiissss", $nombre, $alias, $rut, $email, $region, $comuna, $candidato, $web, $tv, $redes, $amigo);
		if ($sentencia->execute()) { 
   			echo'<script type="text/javascript">
        		alert("Registro Guardado");
        		window.location.href="index.php";
        		</script>';
		} else {
   			echo'<script type="text/javascript">
        		alert("Error al registrar");
        		window.location.href="index.php";
        		</script>';
		}
	}
?>
