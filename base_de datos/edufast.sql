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
  `idActividad` int(11) NOT NULL AUTO_INCREMENT,
  `nombreActividad` char(70) NOT NULL,
  `descripActividad` char(70) NOT NULL,
  `Actividad` longtext NOT NULL,
  PRIMARY KEY (`idActividad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad`
--

LOCK TABLES `actividad` WRITE;
/*!40000 ALTER TABLE `actividad` DISABLE KEYS */;
INSERT INTO `actividad` VALUES (1,'Proyecto de Ciencias','Investigación sobre energías renovables','Desarrollar un proyecto que explore las diferentes fuentes de energías renovables y sus aplicaciones'),(2,'Taller de Matemáticas','Resolución de problemas complejos','Participar en talleres semanales para resolver problemas matemáticos avanzados'),(3,'Lectura de Literatura','Análisis de obras clásicas','Leer y analizar obras literarias clásicas en grupo'),(4,'Laboratorio de Química','Experimentos de reacciones químicas','Realizar experimentos en el laboratorio para observar y analizar reacciones químicas'),(5,'Debate Escolar','Debate sobre temas actuales','Participar en debates sobre temas actuales y relevantes para la sociedad'),(6,'Exposición de Arte','Presentación de obras artísticas','Exponer y discutir obras de arte creadas durante el curso'),(7,'Simulación de Empresa','Creación y gestión de una empresa simulada','Desarrollar y gestionar una empresa ficticia como proyecto de clase'),(8,'Concurso de Ciencias','Competencia de proyectos científicos','Participar en un concurso donde se presentan proyectos científicos'),(9,'Feria de Matemáticas','Exposición de proyectos matemáticos','Participar en una feria para presentar proyectos y soluciones matemáticas'),(10,'Torneo Deportivo','Competencias deportivas escolares','Participar en torneos deportivos representando a la escuela');
/*!40000 ALTER TABLE `actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actividad_has_logro`
--

DROP TABLE IF EXISTS `actividad_has_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actividad_has_logro` (
  `idActividad` int(11) NOT NULL,
  `idLogro` int(11) NOT NULL,
  KEY `idActividad` (`idActividad`),
  KEY `idLogro` (`idLogro`),
  CONSTRAINT `actividad_has_logro_ibfk_1` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`),
  CONSTRAINT `actividad_has_logro_ibfk_2` FOREIGN KEY (`idLogro`) REFERENCES `logro` (`idLogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actividad_has_logro`
--

LOCK TABLES `actividad_has_logro` WRITE;
/*!40000 ALTER TABLE `actividad_has_logro` DISABLE KEYS */;
INSERT INTO `actividad_has_logro` VALUES (1,2),(1,5),(2,6),(2,5),(8,9),(1,6),(5,4),(6,8),(2,1),(1,1);
/*!40000 ALTER TABLE `actividad_has_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin`
--

DROP TABLE IF EXISTS `boletin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin` (
  `idBoletin` int(11) NOT NULL,
  PRIMARY KEY (`idBoletin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin`
--

LOCK TABLES `boletin` WRITE;
/*!40000 ALTER TABLE `boletin` DISABLE KEYS */;
INSERT INTO `boletin` VALUES (2346),(2347),(2348),(2349),(2350),(2351),(2352),(2353),(2354),(2355);
/*!40000 ALTER TABLE `boletin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_has_curso`
--

DROP TABLE IF EXISTS `boletin_has_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_has_curso` (
  `idBoletin` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  KEY `idCurso` (`idCurso`),
  KEY `idBoletin` (`idBoletin`),
  CONSTRAINT `boletin_has_curso_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `boletin_has_curso_ibfk_2` FOREIGN KEY (`idBoletin`) REFERENCES `boletin` (`idBoletin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_has_curso`
--

LOCK TABLES `boletin_has_curso` WRITE;
/*!40000 ALTER TABLE `boletin_has_curso` DISABLE KEYS */;
INSERT INTO `boletin_has_curso` VALUES (2346,1),(2347,4),(2348,3),(2349,6),(2350,8),(2351,6),(2352,10),(2353,5),(2355,7),(2355,2);
/*!40000 ALTER TABLE `boletin_has_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_has_logro`
--

DROP TABLE IF EXISTS `boletin_has_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_has_logro` (
  `idBoletin` int(11) NOT NULL,
  `idLogro` int(11) NOT NULL,
  KEY `idLogro` (`idLogro`),
  KEY `idBoletin` (`idBoletin`),
  CONSTRAINT `boletin_has_logro_ibfk_1` FOREIGN KEY (`idLogro`) REFERENCES `logro` (`idLogro`),
  CONSTRAINT `boletin_has_logro_ibfk_2` FOREIGN KEY (`idBoletin`) REFERENCES `boletin` (`idBoletin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_has_logro`
--

LOCK TABLES `boletin_has_logro` WRITE;
/*!40000 ALTER TABLE `boletin_has_logro` DISABLE KEYS */;
INSERT INTO `boletin_has_logro` VALUES (2346,1),(2347,4),(2348,3),(2349,6),(2350,8),(2351,6),(2352,10),(2353,5),(2355,7),(2355,2);
/*!40000 ALTER TABLE `boletin_has_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_has_materia`
--

DROP TABLE IF EXISTS `boletin_has_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_has_materia` (
  `idBoletin` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  KEY `idMateria` (`idMateria`),
  KEY `idBoletin` (`idBoletin`),
  CONSTRAINT `boletin_has_materia_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`),
  CONSTRAINT `boletin_has_materia_ibfk_2` FOREIGN KEY (`idBoletin`) REFERENCES `boletin` (`idBoletin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_has_materia`
--

LOCK TABLES `boletin_has_materia` WRITE;
/*!40000 ALTER TABLE `boletin_has_materia` DISABLE KEYS */;
INSERT INTO `boletin_has_materia` VALUES (2346,1),(2347,4),(2348,3),(2349,9),(2350,8),(2351,6),(2352,10),(2353,5),(2355,7),(2355,2);
/*!40000 ALTER TABLE `boletin_has_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boletin_has_nota`
--

DROP TABLE IF EXISTS `boletin_has_nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `boletin_has_nota` (
  `idBoletin` int(11) NOT NULL,
  `idNota` int(11) NOT NULL,
  KEY `idBoletin` (`idBoletin`),
  KEY `idNota` (`idNota`),
  CONSTRAINT `boletin_has_nota_ibfk_1` FOREIGN KEY (`idBoletin`) REFERENCES `boletin` (`idBoletin`),
  CONSTRAINT `boletin_has_nota_ibfk_2` FOREIGN KEY (`idNota`) REFERENCES `nota` (`idNota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boletin_has_nota`
--

LOCK TABLES `boletin_has_nota` WRITE;
/*!40000 ALTER TABLE `boletin_has_nota` DISABLE KEYS */;
INSERT INTO `boletin_has_nota` VALUES (2346,1),(2347,4),(2348,3),(2349,6),(2350,8),(2351,6),(2352,10),(2353,5),(2355,7),(2355,2);
/*!40000 ALTER TABLE `boletin_has_nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `motivo` varchar(100) NOT NULL,
  `citado` varchar(40) NOT NULL,
  `fechaCita` date NOT NULL,
  `horaCita` time NOT NULL,
  PRIMARY KEY (`idCita`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'Llegadas tarde','Juan','2024-01-10','10:00:00'),(2,'Mal comportamiento','jhon','2024-01-15','09:00:00'),(3,'Mal comportamiento','jhon','2024-01-15','09:00:00'),(4,'Llegada tarde','laura','2024-01-10','09:00:00'),(5,'Malas notas','JOhan','2024-01-15','10:30:00'),(6,'Grosero','mauricio','2024-01-30','09:30:00'),(7,'Faltas','carlos','2024-01-30','10:30:00'),(8,'Uniforme','camila','2024-02-03','08:00:00'),(9,'REportes de notas','Profesora Andrea','2024-02-10','08:30:00'),(10,'REportes de notas','Profesora Julian','2024-02-10','09:30:00'),(11,'Fallas','catalina','2024-02-10','10:30:00'),(12,'Fallas','Ffernanda','2024-02-10','09:30:00');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cita_has_matricula`
--

DROP TABLE IF EXISTS `cita_has_matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita_has_matricula` (
  `idCita` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  KEY `idCita` (`idCita`),
  KEY `idMatricula` (`idMatricula`),
  CONSTRAINT `cita_has_matricula_ibfk_1` FOREIGN KEY (`idCita`) REFERENCES `cita` (`idCita`),
  CONSTRAINT `cita_has_matricula_ibfk_2` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`idMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita_has_matricula`
--

LOCK TABLES `cita_has_matricula` WRITE;
/*!40000 ALTER TABLE `cita_has_matricula` DISABLE KEYS */;
INSERT INTO `cita_has_matricula` VALUES (1,2),(1,5),(2,6),(2,5),(8,9),(1,6),(5,4),(6,8),(2,1),(1,1);
/*!40000 ALTER TABLE `cita_has_matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso`
--

DROP TABLE IF EXISTS `curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `cursos` char(9) NOT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso`
--

LOCK TABLES `curso` WRITE;
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
INSERT INTO `curso` VALUES (1,'1-05'),(2,'1-06'),(3,'1-07'),(4,'2-05'),(5,'2-06'),(6,'2-07'),(7,'3-05'),(8,'3-06'),(9,'3-07'),(10,'3-08');
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curso_has_grado`
--

DROP TABLE IF EXISTS `curso_has_grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curso_has_grado` (
  `idCurso` int(11) NOT NULL,
  `idGrado` int(11) NOT NULL,
  KEY `idCurso` (`idCurso`),
  KEY `idGrado` (`idGrado`),
  CONSTRAINT `curso_has_grado_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `curso_has_grado_ibfk_2` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`idGrado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curso_has_grado`
--

LOCK TABLES `curso_has_grado` WRITE;
/*!40000 ALTER TABLE `curso_has_grado` DISABLE KEYS */;
INSERT INTO `curso_has_grado` VALUES (9,1),(4,4),(2,3),(6,6),(1,8),(2,6),(3,10),(8,5),(6,2),(4,2);
/*!40000 ALTER TABLE `curso_has_grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grado` (
  `idGrado` int(11) NOT NULL AUTO_INCREMENT,
  `nivelEducativo` varchar(45) NOT NULL,
  PRIMARY KEY (`idGrado`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'Primero de Primaria'),(2,'Segundo de Primaria'),(3,'Tercero de Primaria'),(4,'Cuarto de Primaria'),(5,'Quinto de Primaria'),(6,'Sexto de Secundaria'),(7,'Séptimo de Secundaria'),(8,'Octavo de Secundaria'),(9,'Noveno de Secundaria'),(10,'Décimo de Secundaria'),(11,'Undécimo de Secundaria');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horario` (
  `idHorario` int(11) NOT NULL AUTO_INCREMENT,
  `dia` char(10) NOT NULL,
  `hora` time NOT NULL,
  `salon` char(10) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  PRIMARY KEY (`idHorario`),
  KEY `fk_cursohorario` (`idCurso`),
  KEY `fk_horarioMateria` (`idMateria`),
  CONSTRAINT `fk_cursohorario` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `fk_horarioMateria` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,'Lunes','08:00:00','A101',1,1),(2,'Lunes','10:00:00','B202',2,2),(3,'Martes','08:00:00','C303',3,3),(4,'Martes','10:00:00','D404',4,4),(5,'Miércoles','08:00:00','E505',5,5),(6,'Miércoles','10:00:00','F606',6,6),(7,'Jueves','08:00:00','G707',7,7),(8,'Jueves','10:00:00','H808',8,8),(9,'Viernes','08:00:00','I909',9,9),(10,'Viernes','10:00:00','J1010',10,10);
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inasistencia`
--

DROP TABLE IF EXISTS `inasistencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inasistencia` (
  `idInasistencia` int(11) NOT NULL AUTO_INCREMENT,
  `fechaInasistencia` date NOT NULL,
  `asistencia` char(7) NOT NULL,
  `idCurso` int(11) NOT NULL,
  PRIMARY KEY (`idInasistencia`),
  KEY `fk_cursoInasistencia` (`idCurso`),
  CONSTRAINT `fk_cursoInasistencia` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inasistencia`
--

LOCK TABLES `inasistencia` WRITE;
/*!40000 ALTER TABLE `inasistencia` DISABLE KEYS */;
INSERT INTO `inasistencia` VALUES (1,'2024-01-10','Ausente',1),(2,'2024-01-11','Present',2),(3,'2024-01-12','Ausente',3),(4,'2024-01-13','Present',4),(5,'2024-01-14','Ausente',5),(6,'2024-01-15','Present',6),(7,'2024-01-16','Ausente',7),(8,'2024-01-17','Present',8),(9,'2024-01-18','Ausente',9),(10,'2024-01-19','Present',10);
/*!40000 ALTER TABLE `inasistencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro`
--

DROP TABLE IF EXISTS `logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logro` (
  `idLogro` int(11) NOT NULL AUTO_INCREMENT,
  `numLogro` char(30) NOT NULL,
  `nombreLogro` char(70) NOT NULL,
  `descripLogro` char(70) NOT NULL,
  PRIMARY KEY (`idLogro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro`
--

LOCK TABLES `logro` WRITE;
/*!40000 ALTER TABLE `logro` DISABLE KEYS */;
INSERT INTO `logro` VALUES (1,'L1','Excelente Asistencia','Asistió a todas las clases del semestre sin ninguna falta'),(2,'L2','Alto Rendimiento Académico','Obtuvo un promedio superior a 9.0 en todas las materias'),(3,'L3','Participación Destacada','Participó activamente en todas las actividades de clase'),(4,'L4','Trabajo en Equipo','Demostró habilidades sobresalientes en trabajos grupales'),(5,'L5','Creatividad','Presentó proyectos altamente creativos e innovadores'),(6,'L6','Liderazgo','Mostró habilidades de liderazgo en actividades y proyectos'),(7,'L7','Responsabilidad','Cumplió con todas las tareas y responsabilidades asignadas'),(8,'L8','Innovación','Desarrolló soluciones innovadoras a problemas planteados'),(9,'L9','Colaboración','Trabajó efectivamente en equipo y colaboró con compañeros'),(10,'L10','Desarrollo Personal','Demostró un notable crecimiento personal y académico');
/*!40000 ALTER TABLE `logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logro_has_materia`
--

DROP TABLE IF EXISTS `logro_has_materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logro_has_materia` (
  `idLogro` int(11) NOT NULL,
  `idMateria` int(11) NOT NULL,
  KEY `idMateria` (`idMateria`),
  KEY `idLogro` (`idLogro`),
  CONSTRAINT `logro_has_materia_ibfk_1` FOREIGN KEY (`idMateria`) REFERENCES `materia` (`idMateria`),
  CONSTRAINT `logro_has_materia_ibfk_2` FOREIGN KEY (`idLogro`) REFERENCES `logro` (`idLogro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logro_has_materia`
--

LOCK TABLES `logro_has_materia` WRITE;
/*!40000 ALTER TABLE `logro_has_materia` DISABLE KEYS */;
INSERT INTO `logro_has_materia` VALUES (9,1),(4,4),(2,3),(6,6),(1,8),(2,6),(3,10),(8,5),(6,2),(4,2);
/*!40000 ALTER TABLE `logro_has_materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materia`
--

DROP TABLE IF EXISTS `materia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materia` (
  `idMateria` int(11) NOT NULL AUTO_INCREMENT,
  `profesorMateria` char(45) NOT NULL,
  `nombreMateria` char(45) NOT NULL,
  PRIMARY KEY (`idMateria`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materia`
--

LOCK TABLES `materia` WRITE;
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
INSERT INTO `materia` VALUES (1,'Juan Pérez','Matemáticas'),(2,'María Rodríguez','Ciencias'),(3,'Luis Gómez','Literatura'),(4,'Ana Martínez','Historia'),(5,'Carlos Fernández','Química'),(6,'Laura Sánchez','Física'),(7,'Marta Díaz','Biología'),(8,'José López','Geografía'),(9,'Elena González','Arte'),(10,'Pedro García','Deportes');
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matricula` (
  `idMatricula` int(11) NOT NULL AUTO_INCREMENT,
  `foto` longtext NOT NULL,
  `anioMatricula` char(5) NOT NULL,
  `jornada` char(10) NOT NULL,
  `grado_cursar` char(4) NOT NULL,
  `municipioNacimiento` char(80) NOT NULL,
  `departamentoNacimiento` char(80) NOT NULL,
  `barrio` char(40) NOT NULL,
  `localidad` varchar(40) NOT NULL,
  `estrato` char(5) NOT NULL,
  `nivel_sisben` char(10) NOT NULL,
  `nombreMadre` varchar(40) NOT NULL,
  `apellidosMadre` varchar(40) NOT NULL,
  `documentoMadre` varchar(15) NOT NULL,
  `direccionMadre` varchar(80) NOT NULL,
  `telefonoMadre` varchar(20) NOT NULL,
  `celularMadre` varchar(15) NOT NULL,
  `correoMadre` varchar(45) NOT NULL,
  `ocupacionMadre` varchar(45) NOT NULL,
  `EmpresaMadre` varchar(60) NOT NULL,
  `nombrepadre` varchar(40) NOT NULL,
  `apellidospadre` varchar(40) NOT NULL,
  `documentopadre` varchar(15) NOT NULL,
  `direccionpadre` varchar(80) NOT NULL,
  `telefonopadre` varchar(20) NOT NULL,
  `celularpadre` varchar(15) NOT NULL,
  `correopadre` varchar(45) NOT NULL,
  `ocupacionpadre` varchar(45) NOT NULL,
  `Empresapadre` varchar(60) NOT NULL,
  `nombreAcudiente` varchar(40) NOT NULL,
  `apellidosAcudiente` varchar(40) NOT NULL,
  `documentoAcudiente` varchar(15) NOT NULL,
  `direccionAcudiente` varchar(80) NOT NULL,
  `telefonoAcudiente` varchar(20) NOT NULL,
  `celularAcudiente` varchar(15) NOT NULL,
  `correoAcudiente` varchar(45) NOT NULL,
  `ocupacionAcudiente` varchar(45) NOT NULL,
  `EmpresaAcudiente` varchar(60) NOT NULL,
  `idGrado` int(11) NOT NULL,
  `idBoletin` int(11) NOT NULL,
  PRIMARY KEY (`idMatricula`),
  KEY `fk_grado` (`idGrado`),
  KEY `fk_Boletin` (`idBoletin`),
  CONSTRAINT `fk_Boletin` FOREIGN KEY (`idBoletin`) REFERENCES `boletin` (`idBoletin`),
  CONSTRAINT `fk_grado` FOREIGN KEY (`idGrado`) REFERENCES `grado` (`idGrado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,'foto1','2024','Mañana','10','Barranquilla','Atlántico','El Prado','Centro','3','B3','Ana','Martínez','1234567890','Calle 1 #23-45','123456789','321654987','ana.martinez@example.com','Enfermera','Hospital ABC','Juan','García','0987654321','Calle 2 #67-89','987654321','654789123','juan.garcia@example.com','Ingeniero','Tech Ltda','Luis','Castro','1357924680','Calle 3 #12-34','567890123','432109876','luis.castro@example.com','Abogado','Legal Services',1,2346),(2,'foto2','2024','Tarde','11','Medellín','Antioquia','El Poblado','Norte','4','C4','Laura','García','2345678901','Avenida 1 #45-67','234567890','432109876','laura.garcia@example.com','Docente','Escuela XYZ','Carlos','Ramírez','1098765432','Avenida 2 #89-01','876543210','567890123','carlos.ramirez@example.com','Contador','Finance Inc.','Sofía','Hernández','2468135790','Avenida 3 #34-56','678901234','789012345','sofia.hernandez@example.com','Enfermera','Hospital DEF',2,2347),(3,'foto3','2024','Mañana','9','Bogotá','Cundinamarca','Chapinero','Centro','2','A2','Mónica','Sánchez','3456789012','Carrera 1 #56-78','345678901','654321098','monica.sanchez@example.com','Arquitecta','Construcciones LM','Alejandro','Pérez','2109876543','Carrera 2 #12-34','765432109','890123456','alejandro.perez@example.com','Médico','Health Clinic','Ricardo','Jiménez','3579246801','Carrera 3 #45-67','890123456','901234567','ricardo.jimenez@example.com','Profesor','Educación Ltda',3,2348),(4,'foto4','2024','Tarde','10','Cali','Valle del Cauca','San Fernando','Sur','3','B3','Paola','Córdoba','4567890123','Calle 4 #78-90','456789012','543210987','paola.cordoba@example.com','Psicóloga','Centro Psicológico','Miguel','Vargas','3210987654','Calle 5 #01-23','678901234','890123456','miguel.vargas@example.com','Arquitecto','Arquitectura y Construcción','Verónica','Ríos','4681357902','Calle 6 #34-56','789012345','901234567','veronica.rios@example.com','Ingeniera','Tecnología y Servicios',4,2349),(5,'foto5','2024','Mañana','8','Cartagena','Bolívar','Getsemaní','Centro','4','C4','Daniela','Gómez','5678901234','Calle 7 #12-34','567890123','890123456','daniela.gomez@example.com','Abogada','Legal Firm','Fernando','Álvarez','4321098765','Calle 8 #45-67','890123456','765432109','fernando.alvarez@example.com','Contador','Contabilidad y Finanzas','Catalina','Morales','5792468130','Calle 9 #78-90','901234567','876543210','catalina.morales@example.com','Enfermera','Hospital GHI',5,2350),(6,'foto6','2024','Tarde','11','Bucaramanga','Santander','Cañaveral','Norte','2','A2','Claudia','Cano','6789012345','Carrera 10 #23-45','678901234','987654321','claudia.cano@example.com','Ingeniera','Tech Solutions','Jorge','Cárdenas','5432109876','Carrera 11 #56-78','876543210','654321098','jorge.cardenas@example.com','Economista','Econ Consult','Gabriela','Pardo','6802469135','Carrera 12 #89-01','987654321','765432109','gabriela.pardo@example.com','Abogada','Legal Services',6,2351),(7,'foto7','2024','Mañana','9B','Pereira','Risaralda','La Popa','Este','3','B3','José','Arrieta','7890123456','Avenida 15 #12-34','789012345','654321098','jose.arrieta@example.com','Docente','Instituto ABC','Lina','Salazar','6543210987','Avenida 16 #45-67','543210987','876543210','lina.salazar@example.com','Médico','Hospital JKL','Carlos','Hernández','7913579264','Avenida 17 #34-56','678901234','987654321','carlos.hernandez@example.com','Psicólogo','Centro Psicológico',7,2352),(8,'foto8','2024','Tarde','10C','Santa Marta','Magdalena','Rodadero','Sur','4','C4','María','Quintero','8901234567','Calle 20 #45-67','890123456','543210987','maria.quintero@example.com','Psicóloga','Psicología y Terapia','Javier','Moreno','6789012345','Calle 21 #56-78','765432109','890123456','javier.moreno@example.com','Ingeniero','Construcción XYZ','Sandra','Bermúdez','8012345678','Calle 22 #67-89','876543210','901234567','sandra.bermudez@example.com','Abogada','Legal Consult',8,2353),(9,'foto9','2024','Mañana','8B','Cúcuta','Norte de Santander','La Ciudadela','Centro','2','A2','Ricardo','Pérez','9012345678','Carrera 18 #34-56','901234567','876543210','ricardo.perez@example.com','Arquitecto','Arquitectura ABC','Natalia','García','7890123456','Carrera 19 #67-89','987654321','765432109','natalia.garcia@example.com','Contadora','Contabilidad Ltda','Alejandro','Castro','9123456789','Carrera 20 #12-34','890123456','654321098','alejandro.castro@example.com','Médico','Clínica Salud',9,2354),(10,'foto10','2024','Tarde','11C','Neiva','Huila','Los Lagos','Noroeste','3','B3','Angela','Vargas','0123456789','Calle 30 #78-90','012345678','987654321','angela.vargas@example.com','Enfermera','Clínica del Norte','Felipe','Jiménez','8901234567','Calle 31 #12-34','654321098','876543210','felipe.jimenez@example.com','Psicólogo','Centro de Psicología','Luisa','Muñoz','0234567890','Calle 32 #34-56','765432109','890123456','luisa.munoz@example.com','Abogada','Abogados y Asociados',10,2355);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nota`
--

DROP TABLE IF EXISTS `nota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nota` (
  `idNota` int(11) NOT NULL AUTO_INCREMENT,
  `nota` char(15) NOT NULL,
  `fechaNota` date NOT NULL,
  `idActividad` int(11) NOT NULL,
  PRIMARY KEY (`idNota`),
  KEY `fk_actividad` (`idActividad`),
  CONSTRAINT `fk_actividad` FOREIGN KEY (`idActividad`) REFERENCES `actividad` (`idActividad`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nota`
--

LOCK TABLES `nota` WRITE;
/*!40000 ALTER TABLE `nota` DISABLE KEYS */;
INSERT INTO `nota` VALUES (1,'10','2024-01-10',1),(2,'9.5','2024-01-11',2),(3,'8','2024-01-12',3),(4,'7.5','2024-01-13',4),(5,'9','2024-01-14',5),(6,'10','2024-01-15',6),(7,'8.5','2024-01-16',7),(8,'9','2024-01-17',8),(9,'7','2024-01-18',9),(10,'9.5','2024-01-19',10);
/*!40000 ALTER TABLE `nota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `observador`
--

DROP TABLE IF EXISTS `observador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `observador` (
  `idObservador` int(11) NOT NULL AUTO_INCREMENT,
  `fechaObservacion` date NOT NULL,
  `observacion` varchar(100) NOT NULL,
  `firma` longtext NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  PRIMARY KEY (`idObservador`),
  KEY `fk_matriculaobservador` (`idMatricula`),
  KEY `fk_curso` (`idCurso`),
  CONSTRAINT `fk_curso` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  CONSTRAINT `fk_matriculaobservador` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`idMatricula`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `observador`
--

LOCK TABLES `observador` WRITE;
/*!40000 ALTER TABLE `observador` DISABLE KEYS */;
INSERT INTO `observador` VALUES (1,'2024-03-15','Observación positiva sobre el desempeño en el curso.','Firma de Juan Pérez',1,1),(2,'2024-04-12','Necesita mejorar en las tareas asignadas.','Firma de María López',2,2),(3,'2024-05-20','Excelente participación en las actividades grupales.','Firma de Carlos Gómez',3,3),(4,'2024-06-18','Requiere más atención en las clases prácticas.','Firma de Ana Martínez',4,4),(5,'2024-07-25','Ha mostrado un gran avance en su aprendizaje.','Firma de Luis Fernández',5,5),(6,'2024-08-30','Participación activa en el proyecto final.','Firma de Patricia Ruiz',6,6),(7,'2024-09-15','Se sugiere mayor esfuerzo en la resolución de problemas.','Firma de Sergio Moreno',7,7),(8,'2024-10-10','Excelente actitud y responsabilidad en el curso.','Firma de Laura Ramírez',8,8),(9,'2024-11-20','Demuestra habilidades sobresalientes en la materia.','Firma de Javier Ortega',9,9),(10,'2024-12-05','Necesita trabajar en la puntualidad.','Firma de Isabel Castaño',10,10);
/*!40000 ALTER TABLE `observador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publicaciones`
--

DROP TABLE IF EXISTS `publicaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publicaciones` (
  `idPublicacion` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` longtext NOT NULL,
  `evento` char(45) NOT NULL,
  `fechaEvento` date NOT NULL,
  `NumIdenti` int(11) NOT NULL,
  PRIMARY KEY (`idPublicacion`),
  KEY `fk_registro` (`NumIdenti`),
  CONSTRAINT `fk_registro` FOREIGN KEY (`NumIdenti`) REFERENCES `registro` (`NumIdenti`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publicaciones`
--

LOCK TABLES `publicaciones` WRITE;
/*!40000 ALTER TABLE `publicaciones` DISABLE KEYS */;
INSERT INTO `publicaciones` VALUES (1,'https://example.com/images/event1.jpg','Conferencia de Ciencia','2024-03-12',101234567),(2,'https://example.com/images/event2.jpg','Feria de Tecnología','2024-04-15',102345678),(3,'https://example.com/images/event3.jpg','Taller de Programación','2024-05-20',103456789),(4,'https://example.com/images/event4.jpg','Exposición de Arte','2024-06-10',104567890),(5,'https://example.com/images/event5.jpg','Competencia de Robótica','2024-07-25',105678901),(6,'https://example.com/images/event6.jpg','Maratón de Lectura','2024-08-30',106789012),(7,'https://example.com/images/event7.jpg','Debate Académico','2024-09-15',107890123),(8,'https://example.com/images/event8.jpg','Día de la Ciencia','2024-10-05',108901234),(9,'https://example.com/images/event9.jpg','Festival Cultural','2024-11-20',109012345),(10,'https://example.com/images/event10.jpg','Gira Deportiva','2024-12-18',110123456);
/*!40000 ALTER TABLE `publicaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `registro` (
  `NumIdenti` int(11) NOT NULL,
  `tipoDoc` varchar(12) NOT NULL,
  `Nombres` varchar(50) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `pais` varchar(80) NOT NULL,
  `genero` varchar(30) NOT NULL,
  `edad` varchar(4) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `celular` varchar(20) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `usuario` char(40) NOT NULL,
  `contraseña` char(25) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  PRIMARY KEY (`NumIdenti`),
  KEY `fk_matricula` (`idMatricula`),
  CONSTRAINT `fk_matricula` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`idMatricula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
INSERT INTO `registro` VALUES (101234567,'TI','Ana María','González','2005-06-15','Colombia','Femenino','19','3216549870','312345678','ana.gonzalez@example.com','Calle 10 #20-30','anamgonzalez','pass1234',1),(102345678,'TI','Juan Pablo','Martínez','2004-08-22','Colombia','Masculino','20','3123456789','3001234567','juan.martinez@example.com','Carrera 5 #12-34','juanpablom','pass5678',2),(103456789,'TI','Laura Isabel','Pérez','2006-03-05','Colombia','Femenino','18','3007654321','3134567890','laura.perez@example.com','Avenida 3 #45-67','lauraperez','password1',3),(104567890,'TI','Carlos Alberto','Rodríguez','2005-11-12','Colombia','Masculino','19','3112345678','3156789012','carlos.rodriguez@example.com','Calle 7 #23-45','carlosrodriguez','securepass',4),(105678901,'TI','Sofía Alejandra','García','2007-01-30','Colombia','Femenino','17','3149876543','3198765432','sofia.garcia@example.com','Calle 2 #67-89','sofiagarcia','mypassword',5),(106789012,'CC','Felipe Andrés','López','2006-07-10','Colombia','Masculino','18','3201234567','3187654321','felipe.lopez@example.com','Avenida 8 #12-34','felipelopez','pass12345',6),(107890123,'CC','Valentina','Hernández','2004-05-25','Colombia','Femenino','20','3104567890','3178901234','valentina.hernandez@example.com','Calle 4 #34-56','valentinah','password123',7),(108901234,'TI','Andrés Felipe','Suárez','2005-09-18','Colombia','Masculino','19','3134567891','3102345678','andres.suarez@example.com','Carrera 10 #45-67','andressuarez','1234secure',8),(109012345,'CC','Camila María','Cruz','2006-12-07','Colombia','Femenino','18','3156789012','3123456789','camila.cruz@example.com','Avenida 1 #56-78','camilacruz','camila2024',9),(110123456,'TI','Mateo','Gómez','2004-10-03','Colombia','Masculino','20','3198765432','3112345679','mateo.gomez@example.com','Calle 6 #78-90','mateogomez','mysecurepass',10);
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

-- Dump completed on 2024-08-04 20:55:26
