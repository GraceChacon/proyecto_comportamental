-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2019 a las 02:31:21
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_comportamental`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudiente`
--

CREATE TABLE `acudiente` (
  `id_acudiente` int(11) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `documento` int(10) NOT NULL,
  `primer_nombre` char(20) NOT NULL,
  `segundo_nombre` char(20) NOT NULL,
  `primer_apellido` char(20) NOT NULL,
  `segundo_apellido` char(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `estado` char(8) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acudiente_estudiante`
--

CREATE TABLE `acudiente_estudiante` (
  `id_acudiente` int(11) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_parentesco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimension`
--

CREATE TABLE `dimension` (
  `id_dimension` int(11) NOT NULL,
  `dimension` char(20) NOT NULL,
  `descripcion` char(250) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `estado` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id_docente` int(11) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `documente` int(10) NOT NULL,
  `primer_nombre` char(20) NOT NULL,
  `segundo_nombre` char(20) NOT NULL,
  `primer_apellido` char(20) NOT NULL,
  `segundo_apellido` char(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `estado` char(8) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id_estudiante` int(11) NOT NULL,
  `tipo_documento` int(11) NOT NULL,
  `documento` int(10) NOT NULL,
  `primer_nombre` char(20) NOT NULL,
  `segundo_nombre` char(20) NOT NULL,
  `primer_apellido` char(20) NOT NULL,
  `segundo_apellido` char(20) NOT NULL,
  `fecha_nac` date NOT NULL,
  `estado` char(8) NOT NULL,
  `id_grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faltas`
--

CREATE TABLE `faltas` (
  `id_faltas` int(11) NOT NULL,
  `falta` char(100) NOT NULL,
  `id_tipo_falta` int(11) NOT NULL,
  `correctivo` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL,
  `grado` char(10) NOT NULL,
  `descripcion` char(250) NOT NULL,
  `id_nivel_escolar` int(11) NOT NULL,
  `estado_grado` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `grado`, `descripcion`, `id_nivel_escolar`, `estado_grado`) VALUES
(1, 'Jardín', 'Es un grado para los niños', 1, 'Activo'),
(2, 'Segundo', 'dsdsd', 2, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo`
--

CREATE TABLE `grupo` (
  `id_grupo` int(11) NOT NULL,
  `grupo` char(15) NOT NULL,
  `descripcion` char(250) NOT NULL,
  `id_docente` int(11) NOT NULL,
  `id_grado` int(11) NOT NULL,
  `estado` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel_escolar`
--

CREATE TABLE `nivel_escolar` (
  `id_nivel_escolar` int(11) NOT NULL,
  `nivel_escolar` char(12) NOT NULL,
  `estado` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nivel_escolar`
--

INSERT INTO `nivel_escolar` (`id_nivel_escolar`, `nivel_escolar`, `estado`) VALUES
(1, 'Preescolar', 'Activo'),
(2, 'Primaria', 'Activo'),
(3, 'Bachillerato', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parentesco`
--

CREATE TABLE `parentesco` (
  `id_parentesco` int(11) NOT NULL,
  `parentesco` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_falta_estudiante_docente`
--

CREATE TABLE `relacion_falta_estudiante_docente` (
  `fecha` date NOT NULL,
  `id_falta` int(11) NOT NULL,
  `descripcion` char(250) NOT NULL,
  `id_estudiante` int(11) NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `periodo` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_de_falta`
--

CREATE TABLE `tipo_de_falta` (
  `id_tipo_de_falta` int(11) NOT NULL,
  `tipo_de_falta` char(15) NOT NULL,
  `descripcion` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_documento`
--

CREATE TABLE `tipo_documento` (
  `id_tipo_documento` int(11) NOT NULL,
  `tipo_documento` char(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `tipo_usuario` char(15) NOT NULL,
  `descripcion` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `contrasena` varchar(15) NOT NULL,
  `tipo_usuario` int(11) NOT NULL,
  `estado` char(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD PRIMARY KEY (`id_acudiente`),
  ADD KEY `fk_tipo_documento_acudiente` (`tipo_documento`),
  ADD KEY `fk_acudiente_usuario` (`id_usuario`);

--
-- Indices de la tabla `acudiente_estudiante`
--
ALTER TABLE `acudiente_estudiante`
  ADD KEY `fk_acudiente_relacion_acudiente_estudiante` (`id_acudiente`),
  ADD KEY `fk_estudiante_relacion_acudiente_estudiante` (`id_estudiante`),
  ADD KEY `fk_parentesco_relacion_acudiente_estudiante` (`id_parentesco`);

--
-- Indices de la tabla `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`id_dimension`),
  ADD KEY `id_grado` (`id_grado`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id_docente`),
  ADD KEY `fk_tipo_documento_docente` (`tipo_documento`),
  ADD KEY `fk_docente_usuario` (`id_usuario`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id_estudiante`),
  ADD KEY `fk_tipo_documento_estudiante` (`tipo_documento`),
  ADD KEY `fk_grupo_estudiante` (`id_grupo`);

--
-- Indices de la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD PRIMARY KEY (`id_faltas`),
  ADD KEY `fk_falta_tipo_falta` (`id_tipo_falta`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`),
  ADD KEY `fk_nivel_escolar_grado` (`id_nivel_escolar`);

--
-- Indices de la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id_grupo`),
  ADD KEY `fk_docente_grupo` (`id_docente`),
  ADD KEY `fk_grado_grupo` (`id_grado`);

--
-- Indices de la tabla `nivel_escolar`
--
ALTER TABLE `nivel_escolar`
  ADD PRIMARY KEY (`id_nivel_escolar`);

--
-- Indices de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  ADD PRIMARY KEY (`id_parentesco`);

--
-- Indices de la tabla `relacion_falta_estudiante_docente`
--
ALTER TABLE `relacion_falta_estudiante_docente`
  ADD KEY `fk_relacion_falta_estudiante` (`id_estudiante`),
  ADD KEY `fk_relacion_falta` (`id_falta`),
  ADD KEY `fk_relacion_grupo` (`id_grupo`);

--
-- Indices de la tabla `tipo_de_falta`
--
ALTER TABLE `tipo_de_falta`
  ADD PRIMARY KEY (`id_tipo_de_falta`);

--
-- Indices de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  ADD PRIMARY KEY (`id_tipo_documento`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_tipo_usuario` (`tipo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acudiente`
--
ALTER TABLE `acudiente`
  MODIFY `id_acudiente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `dimension`
--
ALTER TABLE `dimension`
  MODIFY `id_dimension` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id_docente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id_estudiante` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `faltas`
--
ALTER TABLE `faltas`
  MODIFY `id_faltas` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id_grupo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel_escolar`
--
ALTER TABLE `nivel_escolar`
  MODIFY `id_nivel_escolar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `parentesco`
--
ALTER TABLE `parentesco`
  MODIFY `id_parentesco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_de_falta`
--
ALTER TABLE `tipo_de_falta`
  MODIFY `id_tipo_de_falta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_documento`
--
ALTER TABLE `tipo_documento`
  MODIFY `id_tipo_documento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acudiente`
--
ALTER TABLE `acudiente`
  ADD CONSTRAINT `fk_acudiente_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_documento_acudiente` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `acudiente_estudiante`
--
ALTER TABLE `acudiente_estudiante`
  ADD CONSTRAINT `fk_acudiente_relacion_acudiente_estudiante` FOREIGN KEY (`id_acudiente`) REFERENCES `acudiente` (`id_acudiente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_estudiante_relacion_acudiente_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_parentesco_relacion_acudiente_estudiante` FOREIGN KEY (`id_parentesco`) REFERENCES `parentesco` (`id_parentesco`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `dimension`
--
ALTER TABLE `dimension`
  ADD CONSTRAINT `fk_dimension_grado` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `fk_docente_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_documento_docente` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_grupo_estudiante` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tipo_documento_estudiante` FOREIGN KEY (`tipo_documento`) REFERENCES `tipo_documento` (`id_tipo_documento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `faltas`
--
ALTER TABLE `faltas`
  ADD CONSTRAINT `fk_falta_tipo_falta` FOREIGN KEY (`id_tipo_falta`) REFERENCES `tipo_de_falta` (`id_tipo_de_falta`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grado`
--
ALTER TABLE `grado`
  ADD CONSTRAINT `fk_nivel_escolar_grado` FOREIGN KEY (`id_nivel_escolar`) REFERENCES `nivel_escolar` (`id_nivel_escolar`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `grupo`
--
ALTER TABLE `grupo`
  ADD CONSTRAINT `fk_docente_grupo` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_grado_grupo` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `relacion_falta_estudiante_docente`
--
ALTER TABLE `relacion_falta_estudiante_docente`
  ADD CONSTRAINT `fk_relacion_falta` FOREIGN KEY (`id_falta`) REFERENCES `faltas` (`id_faltas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_relacion_falta_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id_estudiante`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_relacion_grupo` FOREIGN KEY (`id_grupo`) REFERENCES `grupo` (`id_grupo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_tipo_usuario` FOREIGN KEY (`tipo_usuario`) REFERENCES `tipo_usuario` (`id_tipo_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
