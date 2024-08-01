-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: edufast
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `edufast`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `edufast` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `edufast`;

--
-- Table structure for table `actividad`
--

DROP TABLE IF EXISTS `actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad` (
  `idactividad` int(11) NOT NULL AUTO_INCREMENT,
  `nomActividad` varchar(50) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  PRIMARY KEY (`idactividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividad_logro`
--

DROP TABLE IF EXISTS `actividad_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad_logro` (
  `idactividad` int(11) NOT NULL,
  `numlogro` int(11) NOT NULL,
  KEY `idactividad` (`idactividad`),
  KEY `numlogro` (`numlogro`),
  CONSTRAINT `actividad_logro_ibfk_1` FOREIGN KEY (`idactividad`) REFERENCES `actividad` (`idactividad`),
  CONSTRAINT `actividad_logro_ibfk_2` FOREIGN KEY (`numlogro`) REFERENCES `logro` (`numlogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad_logro`
--

LOCK TABLES `actividad_logro` WRITE;
/*!40000 ALTER TABLE `actividad_logro` DISABLE KEYS */;
/*!40000 ALTER TABLE `actividad_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_logro`
--

DROP TABLE IF EXISTS `boletin_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_logro` (
  `numlogro` int(11) NOT NULL,
  `idboletines` int(11) NOT NULL,
  KEY `numlogro` (`numlogro`),
  KEY `idboletines` (`idboletines`),
  CONSTRAINT `boletin_logro_ibfk_1` FOREIGN KEY (`numlogro`) REFERENCES `logro` (`numlogro`),
  CONSTRAINT `boletin_logro_ibfk_2` FOREIGN KEY (`idboletines`) REFERENCES `boletines` (`idboletines`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_logro`
--

LOCK TABLES `boletin_logro` WRITE;
/*!40000 ALTER TABLE `boletin_logro` DISABLE KEYS */;
/*!40000 ALTER TABLE `boletin_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_materia`
--

DROP TABLE IF EXISTS `boletin_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_materia` (
  `idboletines` int(11) NOT NULL,
  `idmateria` int(11) NOT NULL,
  KEY `idboletines` (`idboletines`),
  KEY `idmateria` (`idmateria`),
  CONSTRAINT `boletin_materia_ibfk_1` FOREIGN KEY (`idboletines`) REFERENCES `boletines` (`idboletines`),
  CONSTRAINT `boletin_materia_ibfk_2` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_materia`
--

LOCK TABLES `boletin_materia` WRITE;
/*!40000 ALTER TABLE `boletin_materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `boletin_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_nota`
--

DROP TABLE IF EXISTS `boletin_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_nota` (
  `idboletines` int(11) NOT NULL,
  `idnota` int(11) NOT NULL,
  KEY `idboletines` (`idboletines`),
  KEY `idnota` (`idnota`),
  CONSTRAINT `boletin_nota_ibfk_1` FOREIGN KEY (`idboletines`) REFERENCES `boletines` (`idboletines`),
  CONSTRAINT `boletin_nota_ibfk_2` FOREIGN KEY (`idnota`) REFERENCES `nota` (`idnota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_nota`
--

LOCK TABLES `boletin_nota` WRITE;
/*!40000 ALTER TABLE `boletin_nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `boletin_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletine_curso`
--

DROP TABLE IF EXISTS `boletine_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletine_curso` (
  `idboletines` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL,
  KEY `idboletines` (`idboletines`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `boletine_curso_ibfk_1` FOREIGN KEY (`idboletines`) REFERENCES `boletines` (`idboletines`),
  CONSTRAINT `boletine_curso_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletine_curso`
--

LOCK TABLES `boletine_curso` WRITE;
/*!40000 ALTER TABLE `boletine_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `boletine_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletines`
--

DROP TABLE IF EXISTS `boletines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletines` (
  `idboletines` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idboletines`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletines`
--

LOCK TABLES `boletines` WRITE;
/*!40000 ALTER TABLE `boletines` DISABLE KEYS */;
/*!40000 ALTER TABLE `boletines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `idcita` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(50) NOT NULL,
  `nombreCitado` varchar(50) NOT NULL,
  `fechaCita` date NOT NULL,
  `horaCita` time NOT NULL,
  PRIMARY KEY (`idcita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_matriculas`
--

DROP TABLE IF EXISTS `cita_matriculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_matriculas` (
  `id_matricula` int(11) NOT NULL,
  `idcita` int(11) NOT NULL,
  KEY `id_matricula` (`id_matricula`),
  KEY `idcita` (`idcita`),
  CONSTRAINT `cita_matriculas_ibfk_1` FOREIGN KEY (`id_matricula`) REFERENCES `matricula` (`id_matricula`),
  CONSTRAINT `cita_matriculas_ibfk_2` FOREIGN KEY (`idcita`) REFERENCES `cita` (`idcita`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_matriculas`
--

LOCK TABLES `cita_matriculas` WRITE;
/*!40000 ALTER TABLE `cita_matriculas` DISABLE KEYS */;
/*!40000 ALTER TABLE `cita_matriculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idcurso` int(11) NOT NULL AUTO_INCREMENT,
  `cursos` int(11) NOT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_grado`
--

DROP TABLE IF EXISTS `curso_grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso_grado` (
  `idcurso` int(11) NOT NULL,
  `idgrado` int(11) NOT NULL,
  KEY `idcurso` (`idcurso`),
  KEY `idgrado` (`idgrado`),
  CONSTRAINT `curso_grado_ibfk_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`),
  CONSTRAINT `curso_grado_ibfk_2` FOREIGN KEY (`idgrado`) REFERENCES `grado` (`idgrado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_grado`
--

LOCK TABLES `curso_grado` WRITE;
/*!40000 ALTER TABLE `curso_grado` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso_grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `idgrado` int(11) NOT NULL AUTO_INCREMENT,
  `nivelEducativo` varchar(45) NOT NULL,
  PRIMARY KEY (`idgrado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idhorario` int(11) NOT NULL AUTO_INCREMENT,
  `dia` varchar(60) NOT NULL,
  `hora` time NOT NULL,
  `salon` varchar(20) NOT NULL,
  PRIMARY KEY (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inasistencia`
--

DROP TABLE IF EXISTS `inasistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inasistencia` (
  `idinasistencias` int(11) NOT NULL AUTO_INCREMENT,
  `fechasistencia` date NOT NULL,
  `asistencia` varchar(10) NOT NULL,
  `idcurso` int(11) NOT NULL,
  PRIMARY KEY (`idinasistencias`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `inasistencia_ibfk_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inasistencia`
--

LOCK TABLES `inasistencia` WRITE;
/*!40000 ALTER TABLE `inasistencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `inasistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro`
--

DROP TABLE IF EXISTS `logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logro` (
  `numlogro` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(80) NOT NULL,
  PRIMARY KEY (`numlogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro`
--

LOCK TABLES `logro` WRITE;
/*!40000 ALTER TABLE `logro` DISABLE KEYS */;
/*!40000 ALTER TABLE `logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro_materia`
--

DROP TABLE IF EXISTS `logro_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logro_materia` (
  `idmateria` int(11) NOT NULL,
  `numlogro` int(11) NOT NULL,
  KEY `idmateria` (`idmateria`),
  KEY `numlogro` (`numlogro`),
  CONSTRAINT `logro_materia_ibfk_1` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  CONSTRAINT `logro_materia_ibfk_2` FOREIGN KEY (`numlogro`) REFERENCES `logro` (`numlogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro_materia`
--

LOCK TABLES `logro_materia` WRITE;
/*!40000 ALTER TABLE `logro_materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `logro_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `idmateria` int(11) NOT NULL AUTO_INCREMENT,
  `nomMateria` varchar(20) NOT NULL,
  `profMateria` varchar(45) NOT NULL,
  `idhorario` int(11) NOT NULL,
  PRIMARY KEY (`idmateria`),
  KEY `idhorario` (`idhorario`),
  CONSTRAINT `materia_ibfk_1` FOREIGN KEY (`idhorario`) REFERENCES `horario` (`idhorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia_curso`
--

DROP TABLE IF EXISTS `materia_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia_curso` (
  `idmateria` int(11) NOT NULL,
  `idcurso` int(11) NOT NULL,
  KEY `idmateria` (`idmateria`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `materia_curso_ibfk_1` FOREIGN KEY (`idmateria`) REFERENCES `materia` (`idmateria`),
  CONSTRAINT `materia_curso_ibfk_2` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia_curso`
--

LOCK TABLES `materia_curso` WRITE;
/*!40000 ALTER TABLE `materia_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL AUTO_INCREMENT,
  `foto` longtext NOT NULL,
  `año_matricula` varchar(15) NOT NULL,
  `jornada` varchar(15) NOT NULL,
  `grado_cursar` varchar(15) NOT NULL,
  `municipio_naci` varchar(25) NOT NULL,
  `departamento_naci` varchar(25) NOT NULL,
  `barrio` varchar(25) NOT NULL,
  `localidad` varchar(25) NOT NULL,
  `estrato` varchar(5) NOT NULL,
  `nivel_sisben` varchar(5) NOT NULL,
  `institucion` varchar(15) NOT NULL,
  `grado_hecho` varchar(25) NOT NULL,
  `año_realizado` varchar(25) NOT NULL,
  `nombres_madre` varchar(25) NOT NULL,
  `apellidos_madre` varchar(25) DEFAULT NULL,
  `doc_madre` varchar(11) DEFAULT NULL,
  `tel_madre` varchar(11) DEFAULT NULL,
  `cel_madre` varchar(11) DEFAULT NULL,
  `direc_madre` varchar(20) DEFAULT NULL,
  `correo_madre` varchar(25) DEFAULT NULL,
  `ocupacion_madre` varchar(25) DEFAULT NULL,
  `empresa_madre` varchar(25) DEFAULT NULL,
  `nombres_padre` varchar(25) DEFAULT NULL,
  `apellidos_padre` varchar(25) DEFAULT NULL,
  `doc_padre` varchar(11) DEFAULT NULL,
  `tel_padre` varchar(11) DEFAULT NULL,
  `cel_padre` varchar(11) DEFAULT NULL,
  `direc_padre` varchar(20) DEFAULT NULL,
  `correo_padre` varchar(25) DEFAULT NULL,
  `ocupacion_padre` varchar(25) DEFAULT NULL,
  `empresa_padre` varchar(25) DEFAULT NULL,
  `nombres_acudiente` varchar(25) NOT NULL,
  `apellidos_acudiente` varchar(25) NOT NULL,
  `doc_acudiente` varchar(11) NOT NULL,
  `tel_acudiente` varchar(11) NOT NULL,
  `cel_acudiente` varchar(11) NOT NULL,
  `direc_acudiente` varchar(20) NOT NULL,
  `correo_acudiente` varchar(25) NOT NULL,
  `ocupacion_acudiente` varchar(25) NOT NULL,
  `empresa_acudiente` varchar(25) NOT NULL,
  `idboletines` int(11) NOT NULL,
  PRIMARY KEY (`id_matricula`),
  KEY `fk_boletin` (`idboletines`),
  CONSTRAINT `fk_boletin` FOREIGN KEY (`idboletines`) REFERENCES `boletines` (`idboletines`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `idnota` int(11) NOT NULL AUTO_INCREMENT,
  `nota` varchar(5) NOT NULL,
  `fechaNota` date NOT NULL,
  `idactividad` int(11) NOT NULL,
  PRIMARY KEY (`idnota`),
  KEY `fk_actividad` (`idactividad`),
  CONSTRAINT `fk_actividad` FOREIGN KEY (`idactividad`) REFERENCES `actividad` (`idactividad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observador`
--

DROP TABLE IF EXISTS `observador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observador` (
  `idobservador` int(11) NOT NULL AUTO_INCREMENT,
  `fechaobservacion` varchar(60) NOT NULL,
  `observacion` varchar(60) NOT NULL,
  `firma` longtext NOT NULL,
  `idcurso` int(11) NOT NULL,
  PRIMARY KEY (`idobservador`),
  KEY `idcurso` (`idcurso`),
  CONSTRAINT `observador_ibfk_1` FOREIGN KEY (`idcurso`) REFERENCES `curso` (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observador`
--

LOCK TABLES `observador` WRITE;
/*!40000 ALTER TABLE `observador` DISABLE KEYS */;
/*!40000 ALTER TABLE `observador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicacion`
--

DROP TABLE IF EXISTS `publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicacion` (
  `idPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` longtext NOT NULL,
  `evento` varchar(100) NOT NULL,
  `fechaEvento` date NOT NULL,
  PRIMARY KEY (`idPublicacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicacion`
--

LOCK TABLES `publicacion` WRITE;
/*!40000 ALTER TABLE `publicacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `numIdent` int(11) NOT NULL,
  `tipoDoc` varchar(15) NOT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `apellidos` varchar(45) NOT NULL,
  `fecha_naci` date NOT NULL,
  `pais` varchar(30) NOT NULL,
  `genero` varchar(10) NOT NULL,
  `edad` varchar(10) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `contraseña` varchar(20) NOT NULL,
  PRIMARY KEY (`numIdent`),
  UNIQUE KEY `numIdent` (`numIdent`),
  UNIQUE KEY `fecha_naci` (`fecha_naci`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23 15:32:52
