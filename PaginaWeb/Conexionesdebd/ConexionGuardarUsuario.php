<?php
// Crea la conexión a la base de datos
$conn = new mysqli('localhost', 'root', '', 'proyectomnmark');

// Verifica la conexión
if ($conn->connect_error) {
    die('Conexión fallida: ' . $conn->connect_error);
}

if ($_POST['action'] == 'register') {
    // Obtén los datos del formulario
    $nombre_usuario = $_POST['nombre_usuario'];
    $correo = $_POST['correo'];
    $contrasena = $_POST['contrasena'];
    $telefono = $_POST['telefono'];

    // Prepara la consulta SQL
    $sql = "INSERT INTO clientes (nombre, correo, contrasena, telefono) VALUES (?, ?, ?, ?)";

    // Prepara una declaración para la ejecución
    $stmt = $conn->prepare($sql);

    // Vincula las variables a la declaración preparada como parámetros
    $stmt->bind_param('ssss', $nombre_usuario, $correo, $contrasena, $telefono);

    // Ejecuta la declaración preparada
    if ($stmt->execute()) {
        echo "<script type='text/javascript'>alert('Usuario creado exitosamente'); window.location='../Login.php';</script>";
    } else {
        echo "<script type='text/javascript'>alert('Error: " . $sql . "<br>" . $conn->error . "'); window.location='../Login.php';</script>";
    }

    // Cierra la declaración
    $stmt->close();
} else if ($_POST['action'] == 'login') {
    // Obtén los datos del formulario
    $nombre_usuario = $_POST['nombre_usuario'];
    $contrasena = $_POST['contrasena'];

    // Prepara la consulta SQL
    $sql = "SELECT * FROM clientes WHERE nombre = ? AND contrasena = ?";

    // Prepara una declaración para la ejecución
    $stmt = $conn->prepare($sql);

    // Vincula las variables a la declaración preparada como parámetros
    $stmt->bind_param('ss', $nombre_usuario, $contrasena);

    // Ejecuta la declaración preparada
    $stmt->execute();

    // Obtiene los resultados
    $result = $stmt->get_result();

    // Verifica si se encontró un usuario
    if ($result->num_rows > 0) {
        echo "<script type='text/javascript'>alert('Inicio de sesión exitoso'); window.location='../paginaprincipal.php';</script>";
    } else {
        echo "<script type='text/javascript'>alert('Nombre de usuario o contraseña incorrectos'); window.location='../Login.php';</script>";
    }

    // Cierra la declaración
    $stmt->close();
}

// Cierra la conexión
$conn->close();
?>
