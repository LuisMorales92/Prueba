<?php
include 'config/conexion.php';

$postData = json_decode(file_get_contents("php://input"));
$request = "";
if(isset($postData->request)){
   $request = $postData->request;
}

if($request == 'getComuna'){
   $region_id = 0;
   $resultado = array();$data = array();

   if(isset($postData->region_id)){
      $region_id = $postData->region_id;

      $resultadocomuna = $mysqli->query("SELECT * FROM comunas WHERE region_comuna='$region_id' ORDER BY nombre_comuna");
      $comuna = $resultadocomuna->fetch_all(MYSQLI_ASSOC);

      foreach ($comuna as $row) {

         $id = $row['comuna_id'];
         $name = $row['nombre_comuna'];

         $data[] = array(
            "id" => $id,
            "name" => $name
         );

      }

   }

   echo json_encode($data);
   die;

}