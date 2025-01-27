<?php
$host = "localhost";
$dbname = "invenalokosto";  
$username = "root";  
$password = "";  

try {//Capturas de Excepciones  // Creando la conexión
    $conexion = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
    
} // Mensaje de Coneción
echo " Base de datos conectada"
?>