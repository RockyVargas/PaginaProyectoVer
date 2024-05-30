-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-05-2024 a las 06:21:39
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyectomnmark`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--


CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `cod_compra` int(2) NOT NULL,
  `cod_producto` varchar(3) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`cod_compra`, `cod_producto`, `cantidad`, `precio`, `total`) VALUES
(1, '14', 2, 85, 170);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `cod_producto` int(3) NOT NULL,
  `nombre_producto` varchar(40) DEFAULT NULL,
  `precio` double NOT NULL,
  `imagen` varchar(60) DEFAULT NULL,
  `categoria` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`cod_producto`, `nombre_producto`, `precio`, `imagen`, `categoria`, `stock`) VALUES
(1, 'Cerveza Cusqueña Ori', 16, 'Fotitos/Bebidasalcoholicas/cervezatrigo.png', 'Bebidas Alcohólicas', 61),
(2, 'Mojito Cartavio', 75, 'Fotitos/Bebidasalcoholicas/mojito.png', 'Bebidas Alcohólicas', 41),
(3, 'Cerveza Chivas Regal GOLD', 65, 'Fotitos/Bebidasalcoholicas/ChivasRegal.png', 'Bebidas Alcohólicas', 63),
(4, 'Jack Daniels', 90, 'Fotitos/Bebidasalcoholicas/135-Jack-Daniels.png', 'Bebidas Alcohólicas', 84),
(5, 'Six pack Cristal Bot', 20, 'Fotitos/Bebidasalcoholicas/cervezalsd.png', 'Bebidas Alcohólicas', 15),
(6, 'Licor de crema Baley', 65, 'Fotitos/Bebidasalcoholicas/Baleys.png', 'Bebidas Alcohólicas', 17),
(7, 'Blue Label', 200, 'Fotitos/Bebidasalcoholicas/bluelabe.png', 'Bebidas Alcohólicas', 2),
(8, 'Mikes Hard Lemonade', 12, 'Fotitos/Bebidasalcoholicas/mike.png', 'Bebidas Alcohólicas', 48),
(9, 'Cerveza Cusqueña Neg', 18, 'Fotitos/Bebidasalcoholicas/negra.png', 'Bebidas Alcohólicas', 56),
(10, 'Cerveza Chivas Regal EXTRA', 70, 'Fotitos/Bebidasalcoholicas/regalroj.png', 'Bebidas Alcohólicas', 88),
(11, 'Ron Havanna Club', 60, 'Fotitos/Bebidasalcoholicas/havana.png', 'Bebidas Alcohólicas', 15),
(12, 'Ceveza Heineken', 30, 'Fotitos/Bebidasalcoholicas/heinik.png', 'Bebidas Alcohólicas', 65),
(13, 'Fernet BRANCA', 55, 'Fotitos/Bebidasalcoholicas/fernet.png', 'Bebidas Alcohólicas', 41),
(14, 'Vodka Absolute', 85, 'Fotitos/Bebidasalcoholicas/absolut-vodka-15l.png', 'Bebidas Alcohólicas', 16),
(15, 'Red Label', 550, 'Fotitos/Bebidasalcoholicas/redlabel.webp', 'Bebidas Alcohólicas', 81),
(16, 'Vodka SMIRNOFF Ready', 50.9, 'Fotitos/Bebidasalcoholicas/smirmof.png', 'Bebidas Alcohólicas', 41),
(17, 'Six Pack cristal lat', 25, 'Fotitos/Bebidasalcoholicas/cerveza.png', 'Bebidas Alcohólicas', 12),
(18, 'Vodka SMIRNOFF Apple', 40, 'Fotitos/Bebidasalcoholicas/vodka.png', 'Bebidas Alcohólicas', 36),
(19, 'Margarita Pizza de jamón y queso', 15, 'Fotitos/Alimentos/Pizza con jamón y pimienta.png', 'Alimentos', 18),
(20, 'Hamburguesa de carne', 10, 'Fotitos/Alimentos/Hamburguesa de carne.png', 'Alimentos', 8),
(21, 'Sopa instantanea AJI', 14.5, 'Fotitos/Alimentos/sopanormal.jpg', 'Alimentos', 10),
(23, 'Hamburguesa Completa', 5.5, 'Fotitos/Alimentos/hamburguesa.png', 'Alimentos', 10),
(24, 'Sopa instantanea AJI', 12, 'Fotitos/Alimentos/soparoja.png', 'Alimentos', 5),
(25, 'Hamburguesa de pollo', 8, 'Fotitos/Alimentos/Hamburguesa de pollo.png', 'Alimentos', 4),
(26, 'Vaporizador Meloso', 85, 'Fotitos/Cigarros/vapemeloso.png', 'Cigarrillos', 46),
(27, 'Vaporizador STLTH 8K', 80, 'Fotitos/Cigarros/stlth8krosa.png', 'Cigarrillos', 34),
(28, 'Cigarrillos Lucky St', 30, 'Fotitos/Cigarros/LUCKY STRIKER WILD.png', 'Cigarrillos', 61),
(29, 'Vaporizador GEEK BAR', 80, 'Fotitos/Cigarros/geekbar.png', 'Cigarrillos', 10),
(30, 'Cigarrillos Malboro', 10, 'Fotitos/Cigarros/cigarillos.png', 'Cigarrillos', 19),
(31, 'Cigarrillos LyM Azul', 20, 'Fotitos/Cigarros/LM.png', 'Cigarrillos', 41),
(32, 'Pack de Encendedores', 30, 'Fotitos/Cigarros/Encendedor.png', 'Cigarrillos', 61),
(33, 'Vaporizador STLTH 8K', 80, 'Fotitos/Cigarros/stlth8kamarillo.png', 'Cigarrillos', 11),
(35, 'Cigarrillos Wiston W', 22, 'Fotitos/Cigarros/winston.png', 'Cigarrillos', 22),
(36, 'Chifles Karinto', 1, 'Fotitos/Snacks/karinto-chifles-42gr.png', 'Snacks', 20),
(37, 'Papas fritas Lays', 2, 'Fotitos/Snacks/papaslays.png', 'Snacks', 12),
(39, 'Papas Pringles Papri', 15, 'Fotitos/Snacks/pringles-paprika-165gr.png', 'Snacks', 23),
(40, 'Papas fritas Lays Sa', 2.5, 'Fotitos/Snacks/papas-lays-pollo-a-la-brasa.png', 'Snacks', 20),
(41, 'Los cuates Natural', 1.5, 'Fotitos/Snacks/los-cuates-tradicional.png', 'Snacks', 30),
(43, 'Papas Pringles Pizza', 18, 'Fotitos/Snacks/Pringles-Pizza-165-Gramos (1).png', 'Snacks', 12),
(45, 'Papas Pringles', 12, 'Fotitos/Snacks/pringlesoriginal.png', 'Snacks', 1),
(46, 'Cheese Tris', 1.8, 'Fotitos/Snacks/Snack-CHEESE-TRIS-34-x-93-gr.xx.png', 'Snacks', 9),
(47, 'Los Cuates Picantes', 1.5, 'Fotitos/Snacks/PRODUCTO809 (1).png', 'Snacks', 7),
(48, 'Gomitas Trululu Pinguinos', 3.5, 'Fotitos/Confiteria/gomitasceleste.png', 'Confiteria', 95),
(49, 'Gomitas Trululu Serpientes', 3.5, 'Fotitos/Confiteria/gomitasverde.png', 'Confiteria', 62),
(50, 'Chicle Bubbalo Azul', 0.2, 'Fotitos/Confiteria/azulmora.png', 'Confiteria', 42),
(51, 'Cholocate MYM BROWN', 3, 'Fotitos/Confiteria/brown.png', 'Confiteria', 30),
(52, 'Galleta Rellenita de', 0.8, 'Fotitos/Confiteria/galleta.png', 'Confiteria', 17),
(53, 'Chicle Bubbalo Rojo', 0.2, 'Fotitos/Confiteria/rojo.png', 'Confiteria', 14),
(54, 'Chicle Bubbalo Rosa', 0.2, 'Fotitos/Confiteria/rosa.png', 'Confiteria', 23),
(55, 'Galleta RITZ de queso', 3.5, 'Fotitos/Confiteria/ritzqueso.png', 'Confiteria', 14),
(56, 'Barrita SNICKERS', 1.7, 'Fotitos/Confiteria/snicker.png', 'Confiteria', 14),
(57, 'Galleta Oreo', 1.8, 'Fotitos/Confiteria/OreoOriginal.png', 'Confiteria', 20),
(58, 'Gomitas Trululu Bolitas', 3.5, 'Fotitos/Confiteria/bolitas.png', 'Confiteria', 17),
(59, 'Chocolate MYM Original', 3.5, 'Fotitos/Confiteria/mymoriginal.png', 'Confiteria', 13),
(60, 'Chicle Boogie', 1, 'Fotitos/Confiteria/boogie.png', 'Confiteria', 14),
(61, 'Galleta RITZ', 1.5, 'Fotitos/Confiteria/galletritz.png', 'Confiteria', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `cod_compra` varchar(7) NOT NULL,
  `fecha` date NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`cod_compra`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`cod_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  MODIFY `cod_compra` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `cod_producto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
