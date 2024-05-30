<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "proyectomnmark";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
  die("Conexión fallida: " . $conn->connect_error);
}

// Realizar consulta SQL
$sql = "SELECT cod_producto, nombre_producto, precio, imagen, categoria, stock FROM producto WHERE categoria = 'Cigarrillos'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // Mostrar resultados
  while($row = $result->fetch_assoc()) {
    echo '<div class="producto" data-name="' . $row["nombre_producto"] . '" data-categoria="' . $row["categoria"] . '">';
    echo '<img src="images/' . $row['imagen'] . ' " alt="' . $row['nombre_producto'] . '">';
    echo '<h2>' . $row["nombre_producto"] . '</h2>';
    echo '<p>ID: ' . $row["cod_producto"] . '</p>';
    echo '<p>Categoría: ' . $row["categoria"] . '</p>';
    echo '<p>Precio: S/' . $row["precio"] . '</p>';
    echo '<p>Stock: ' . $row["stock"] . '</p>';
    echo '<button>Agregar al carrito</button>';
    echo '</div>';
  }
} else {
  echo "0 resultados";
}
?>
