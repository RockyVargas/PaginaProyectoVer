<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MINIMARKET Lima-39</title>
    <link rel="stylesheet" href="StilosCSS/stylePrincipal.css">
</head>
<body>
    <header>
         <!-- Aquí iría logo -->
         <h1>
            <span class="parte1">Minimarket</span>
            <span class="espacio"></span>
            <span class="parte2">| LIMA-39</span>
          </h1>
    </header>
    <div class="mira">
        <nav class="menux">
            <ul class="menu_itemsx">
                <li class="menu_itemx"><a href="paginaprincipal.php" class="menu_item-linkx">INICIO</a></li>
            </ul>
        </nav>
        <nav class="iniciosesion">
        <a href="Login.php" target="_blank">
            <img src="images/iniciosesion.png" alt="">
        </a>
    </nav>
        <div class="search">
            <form action="/search" method="get">
                <input type="text" id="search" name="search" placeholder="Buscar..." class="search_input">
                <button class="search_btn" id="search_btn" name="search_btn" >
                    <img src="images/VisualEditor_-_Icon_-_Search.svg.png" alt="" class="search_btn-img">
                </button>
            </form>
        </div>
    </div>
    <nav class="menu">
        <ul class="menu_items">
            <li class="menu_item"><a href="Categoriadebebidas.php" class="menu_item-link">Bebidas Alcohólicas</a></li>
            <li class="menu_item"><a href="PaginaAlimentos.php" class="menu_item-link">Alimentos</a></li>
            <li class="menu_item"><a href="PaginaCigarrillos.php" class="menu_item-link">Cigarrillos</a></li>
            <li class="menu_item"><a href="PaginaSnacks.php" class="menu_item-link">Snacks</a></li>
            <li class="menu_item"><a href="PaginaConfiteria.php" class="menu_item-link">Confitería</a></li>
        </ul>
    </nav>
    <main>
        <!-- Aquí irían productos -->
        <div class="cudrito">
    <?php
    include 'Conexionesdebd/conexionbebidas.php';
    $conn->close();
    ?>
    </div>
        <!-- Aquí irían productos -->
    </main>
    <div id="botones">
        <button onclick="cambiarPagina(-1)" class="left_btn" id="left_btn" name="left_btn"> 
            <img src="images/IZQUIERDA.png" alt="" class="left_btn-img">
        </button>
    
        <button onclick="cambiarPagina(1)" class="right_btn" id="right_btn" name="right_btn">
            <img src="images/DERECHA.png" alt="" class="right_btn-img">
        </button>
    </div>
    
    <footer>
        <!-- Aquí iría información de contacto -->
    </footer>
    <script src="Javascriptscodigo/busqueda.js"></script>
    <script src="Javascriptscodigo/vista.js"></script>
    <script src="Javascriptscodigo/animation.js"></script>
</body>
</html>

