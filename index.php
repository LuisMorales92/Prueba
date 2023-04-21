<?php
	include ("config/conexion.php");
	$resultado = $mysqli->query("SELECT * FROM regiones");
	$region = $resultado->fetch_all(MYSQLI_ASSOC);

	$resultadocandidato = $mysqli->query("SELECT * FROM candidatos");
	$candidato = $resultadocandidato->fetch_all(MYSQLI_ASSOC);
?>
<!doctype html>
<html>

<head>
    <meta charset="utf-8"/>
    <title></title>

    <script type="text/javascript">
    	document.addEventListener("DOMContentLoaded", function() {
  		document.getElementById("formulario").addEventListener('submit', validarFormulario); 
		});

		function validarFormulario(evento) {
  			evento.preventDefault();
  			var nombre = document.getElementById('nombre').value;
  				if(nombre.length == 0) {
    				alert('Nombre invalido');
    				return;
  				}

  			var alias = document.getElementById('alias').value;
			var validAlias = /^[0-9a-zA-Z]+$/;
  				if(!validAlias.test(alias) || (alias.length < 5)) {
    				alert('El alias debe ser mayor a 5 caracteres y debe contener numeros y letras');
    				return;
  				}

  			var rut = document.getElementById('rut').value;
			var validRut =  /^[0-9]+[-|‐]{1}[0-9kK]{1}$/;
				if(!validRut.test(rut) ){
					alert('El Rut es invalido');
					return;
				}

			var email = document.getElementById('email').value;
			var validEmail =  /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
				if(!validEmail.test(email) ){
					alert('El Email es invalido');
					return;
				}

			var region = document.getElementById('region').value;
  				if(region == 0) {
    				alert('Favor seleccionar una Región');
    				return;
  				}

  			var comuna = document.getElementById('comuna').value;
  				if(comuna == 0) {
    				alert('Favor seleccionar una Comuna');
    				return;
  				}

  			var candidato = document.getElementById('candidato').value;
  				if(candidato == 0) {
    				alert('Favor seleccionar un Candidato');
    				return;
  				}

  			var contador = 0;
  			var web = document.getElementById('web');
    			if(web.checked) {
       				contador++;
    			}
    		var tv = document.getElementById('tv');
    			if(tv.checked) {
       				contador++;
    			}
    		var redes = document.getElementById('redes');
    			if(redes.checked) {
       				contador++;
    			}
    		var amigo = document.getElementById('amigo');
    			if(amigo.checked) {
       				contador++;
    			}

    		if(contador < 2) {
    				alert('Favor seleccionar dos opciones');
    				return;
  			}
  			this.submit();
		}

    </script>
</head>
  
<body>
	<form action="añadir.php" class="profile__form" method="POST" id="formulario">
		<table>
			<tr>
				<td>FORMULARIO DE VOTACIÓN</td>
			</tr>
			<tr>
				<td>Nombre y Apellido</td>
				<td><input type="text" name="nombre" id="nombre"></td>
			</tr>
			<tr>
				<td>Alias</td>
				<td><input type="text" name="alias" id="alias"></td>
			</tr>
			<tr>
				<td>RUT</td>
				<td><input type="text" name="rut" id="rut"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="email" id="email"></td>
			</tr>
			<tr>
				<td>Región</td>
				<td><select name="region" id="region" onchange="getComuna(this.value);">
						<option value="0">Seleccionar Región</option>
						<?php
                        	foreach ($region as $row) {
                        ?>
							<option value="<?php echo $row['region_id']?>"><?php echo $row['nombre_region']?></option>
						<?php 
                            }
                        ?>
                    </select>
                </td>
			</tr>
			<tr>
				<td>Comuna</td>
				<td><select name="comuna" id="comuna">
						<option value="0">Seleccionar Comuna</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Candidato</td>
				<td><select name="candidato" id="candidato">
						<option value="0">Seleccionar Candidato</option>
						<?php
                        	foreach ($candidato as $row) {
                        ?>
							<option value="<?php echo $row['candidato_id']?>"><?php echo $row['nombre_candidato']?></option>
						<?php 
                            }
                        ?>
				 	</select>
				 </td>
			</tr>
			<tr>
				<td>Como se enteró de Nosotros</td>
				<td><input type="hidden" name="web" id="webhidden" value="No">
					<input type="checkbox" name="web" id="web" value="Si">Web 
					<input type="hidden" name="tv" id="tvhidden" value="No"> 
					<input type="checkbox" name="tv" id="tv" value="Si">TV
					<input type="hidden" name="redes" id="redeshidden" value="No"> 
					<input type="checkbox" name="redes" id="redes" value="Si">Redes Sociales 
					<input type="hidden" name="amigo" id="amigohidden" value="No">
					<input type="checkbox" name="amigo" id="amigo" value="Si">Amigo</td>
			</tr>
			<tr>
				<td><input type="submit" value="Votar"></td>
			</tr>
		</table>
	</form>
</body>

<script type="text/javascript">
		
		function getComuna(region_id){
			var comuna = document.getElementById('comuna');
			
			comuna.innerHTML = "";

			var comunaopt = document.createElement('option');
			comunaopt.value = 0;
			comunaopt.innerHTML = 'Seleccionar Comuna';
			comuna.appendChild(comunaopt);

		    var xhttp = new XMLHttpRequest();
			xhttp.open("POST", "comunas.php", true); 
			xhttp.setRequestHeader("Content-Type", "application/json");
			xhttp.onreadystatechange = function() {
			   	if (this.readyState == 4 && this.status == 200) {
			     	var response = JSON.parse(this.responseText);
			     	
			     	var len = 0;
		            if(response != null){
		               len = response.length;
		            }
		           
		            if(len > 0){
		               	for(var i=0; i<len; i++){

		                  	var id = response[i].id;
		                  	var name = response[i].name;

		                  	var opt = document.createElement('option');
						    opt.value = id;
						    opt.innerHTML = name;
						    comuna.appendChild(opt);

		               	}
		            }
			   	}
			};
			var data = {request:'getComuna',region_id: region_id};
			xhttp.send(JSON.stringify(data));
		    
		}
	</script>  

</html>