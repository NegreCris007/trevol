<?php // Inicio sesión
session_start();
require 'conexion.php';
// Enviamos los datos correspondietes por POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $cedula = trim($_POST['cedula']);
    $password = trim($_POST['password']);

    if (empty($cedula) || empty($password)) {
        header("Location: login.php?error=2"); // Campos vacíos
        exit();
    }

    try {//Consulta
        $stmt = $conexion->prepare("SELECT cedula, password, nombre, departamento FROM usuario WHERE cedula = :cedula LIMIT 1");
        $stmt->bindParam(":cedula", $cedula, PDO::PARAM_STR);
        $stmt->execute();
        
        $user = $stmt->fetch(PDO::FETCH_ASSOC);

        // Verificación de contraseña
        if ($user && password_verify($password, $user['password'])) {
            session_regenerate_id(true);
            $_SESSION['cedula'] = $user['cedula'];
            $_SESSION['nombre'] = $user['nombre'];
            $_SESSION['departamento'] = $user['departamento'];

            header("Location: dashboard.php");
            exit();
        } else {
            header("Location: login.php?error=1"); // Credenciales incorrectas
            exit();
        }
    } catch (PDOException $e) {
        error_log("Error en el login: " . $e->getMessage());
        header("Location: login.php?error=3"); // Error de base de datos
        exit();
    }
} else {
    header("Location: login.php");
    exit();
}
?>