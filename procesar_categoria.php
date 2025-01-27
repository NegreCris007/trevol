<?php
require 'conexion.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $descripcion = trim($_POST['descripcion']);
    $codigo = trim($_POST['codigo']);

    if (empty($descripcion) || empty($codigo)) {
        echo "El campo de categoría es obligatorio.";
        exit();
    }

    try {
        $stmt = $conexion->prepare("INSERT INTO categorias (descripcion,codigo) VALUES (:descripcion, :codigo)");
        $stmt->bindParam(":descripcion", $descripcion);
        $stmt->bindParam(":codigo", $codigo);
        $stmt->execute();
        echo "Categoría agregada con éxito.";


        header("Location: dashboard.php"); 
        exit();
    } catch (PDOException $e) {
        echo "Error al agregar la categoría: " . $e->getMessage();
    }
} else {// Volvemos al tablero
        header("Location: dashboard.php");
        exit();
}

?>
