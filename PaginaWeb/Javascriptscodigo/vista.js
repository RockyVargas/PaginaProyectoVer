window.addEventListener('load', function() {
    var paginaActual = 1;
    var productosPorPagina = 8; // Esto dividirá tus productos en 8 por página
    var totalPaginas;

    // Función para mezclar un array
    function mezclar(array) {
        var currentIndex = array.length, temporaryValue, randomIndex;

        // Mientras queden elementos para mezclar...
        while (0 !== currentIndex) {

            // Selecciona un elemento sin mezclar...
            randomIndex = Math.floor(Math.random() * currentIndex);
            currentIndex -= 1;

            // Y lo intercambia con el elemento actual
            temporaryValue = array[currentIndex];
            array[currentIndex] = array[randomIndex];
            array[randomIndex] = temporaryValue;
        }

        return array;
    }

    function calcularTotalPaginas() {
        var productos = document.getElementsByClassName('producto');
        totalPaginas = Math.ceil(productos.length / productosPorPagina);
    }

    function cambiarPagina(direccion) {
        var nuevaPagina = paginaActual + direccion;
        if (nuevaPagina >= 1 && nuevaPagina <= totalPaginas) { // Verifica que la nueva página esté dentro del rango permitido
            paginaActual = nuevaPagina;
            mostrarProductos();
        }
    }

    function mostrarProductos() {
        var contenedor = document.getElementsByClassName('cudrito')[0];
        var productos = Array.from(contenedor.getElementsByClassName('producto'));
        var inicio = (paginaActual - 1) * productosPorPagina;
        var fin = inicio + productosPorPagina;

        // Ocultar todos los productos
        for (var i = 0; i < productos.length; i++) {
            if (productos[i].style.display !== 'none') {
                productos[i].style.display = 'none';
            }
        }

        // Mostrar solo los productos de la página actual
        for (var i = inicio; i < fin && i < productos.length; i++) {
            if (productos[i].style.display === 'none') {
                productos[i].style.display = '';
            }
        }
    }

    // Calcular el total de páginas y mostrar la primera página al cargar la página
    calcularTotalPaginas();
    var contenedor = document.getElementsByClassName('cudrito')[0];
    var productos = Array.from(contenedor.getElementsByClassName('producto'));
    productos = mezclar(productos); // Mezcla los productos

    // Limpia el contenedor
    while (contenedor.firstChild) {
        contenedor.removeChild(contenedor.firstChild);
    }

    // Añade los productos mezclados al contenedor
    productos.forEach(function(producto) {
        contenedor.appendChild(producto);
    });

    mostrarProductos();
});
