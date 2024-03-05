CREATE DATABASE  IF NOT EXISTS `db_ianes` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_ianes`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: db_ianes
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_aluno`
--

DROP TABLE IF EXISTS `tbl_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `matricula` varchar(20) NOT NULL,
  `nome` varchar(190) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(256) NOT NULL,
  `id_sexo` int NOT NULL,
  `id_escola` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_SEXO_ALUNO` (`id_sexo`),
  KEY `FK_ESCOLA_ALUNO` (`id_escola`),
  CONSTRAINT `FK_ESCOLA_ALUNO` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`),
  CONSTRAINT `FK_SEXO_ALUNO` FOREIGN KEY (`id_sexo`) REFERENCES `tbl_sexo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno`
--

LOCK TABLES `tbl_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_aluno` DISABLE KEYS */;
INSERT INTO `tbl_aluno` VALUES (1,'44684','Luzia Jennifer Souza','25.154.312-2','589.040.178-58','2004-06-01','luzia.jennifer.souza@estadao.com.br',1,1),(2,'21986','Rafael Vinicius Moraes','49.422.481-2','699.688.908-12','2003-10-25','rafael_vinicius_moraes@marktechbr.com.br',2,1),(3,'19848','Maitê Vitória Daiane Souza','28.307.851-0','332.942.798-17','2000-09-12','maite.vitoria.souza@eldor.it',1,1),(4,'12345','Aparecida Sônia Emilly Alves','40.270.822-2','672.334.648-39','1999-03-26','aparecida_sonia_alves@band.com',1,1),(5,'15487','Tiago Renato Duarte','18.106.573-3','560.504.478-88','2002-11-04','tiagorenatoduarte@ativa.inf.br',2,1),(6,'17458','Henrique Nathan Cardoso','42.672.998-5','420.925.178-05','2003-10-30','henrique_cardoso@selaz.com.br',2,1),(7,'13958','Carla Sônia Melo','50.548.605-2','239.933.678-04','1999-10-01','carlasoniamelo@victorseguros.com.br',1,1),(8,'85479','Thomas Vinicius Benício Viana','17.518.213-9','943.867.898-04','2002-04-02','thomas.vinicius.viana@andressamelo.com.br',2,1),(9,'23987','Lorena Stella Carolina Dias','49.429.714-1','229.915.218-05','2003-09-12','lorena_stella_dias@wizardsjc.com.br',1,1),(10,'12587','Francisca Natália Silva','12.220.992-8','750.864.148-57','2004-01-20','francisca.natalia.silva@abareias.com.br',1,1),(11,'15231','Bruno Ruan Mário Bernardes','13.727.114-1','116.793.538-10','1999-01-07','bruno-bernardes85@zf-lenksysteme.com',2,1),(12,'16516','Tomás Manoel Tiago Almada','23.823.732-1','080.306.338-58','2005-10-02','tomasmanoelalmada@lubeka.com.br',2,1),(13,'65498','Helena Lívia Laís Almada','50.414.724-9','372.533.378-59','2003-10-20','helenaliviaalmada@salvagninigroup.com',1,1),(14,'46464','Rosângela Elisa Marina Pinto','22.578.426-9','711.156.838-96','2000-09-10','rosangelaelisapinto@hubersuhner.com',1,1),(15,'45644','Caleb Antonio Nathan Campos','43.632.185-3','641.427.888-25','2003-01-08','caleb_campos@paae.com.br',2,1),(16,'84664','Luana Stella Simone Nunes','42.563.691-4','456.311.688-20','2005-02-09','luana-nunes75@unitau.br',1,1),(17,'84984','Samuel Márcio Rodrigo Corte Real','27.971.685-0','647.476.158-06','2004-09-12','samuelmarciocortereal@agrosb.com.br',2,1),(18,'44645','Nicolas Pedro Henrique Pereira','38.415.681-2','967.013.248-78','2001-08-12','nicolaspedropereira@danzarin.com.br',2,1),(19,'10589','Nicole Elisa Aparecida Fernandes','25.995.037-3','096.335.918-56','1999-10-20','nicoleelisafernandes@runup.com.br',1,1),(20,'54645','Priscila Camila da Cruz','19.082.453-0','531.597.178-36','1998-10-10','priscila_dacruz@maptec.com.br',1,1),(21,'96587','Daniela Isabelle Stella Lima','29.824.168-7','340.995.578-04','1999-10-20','daniela_isabelle_lima@findout.com.br',1,1),(22,'69857','Anthony Pietro Miguel Peixoto','36.583.351-4','639.426.498-96','2001-09-01','anthonypietropeixoto@danielstrauch.com',2,1),(23,'98521','Sara Vanessa Eduarda Campos','30.755.170-2','645.434.818-01','2003-09-10','saravanessacampos@coreval.com.br',1,1),(24,'12347','Mirella Silvana da Mota','22.925.220-5','207.413.658-71','2006-01-28','mirella-damota76@pop.com.br',1,1),(25,'32587','Renan Murilo Antonio Cavalcanti','20.818.500-8','906.333.078-23','2004-10-31','renan_cavalcanti@iaru.com.br',2,1),(26,'12398','Marcelo Danilo Juan Corte Real','28.613.138-9','553.072.328-45','2004-06-10','marcelo-cortereal78@sociedadeweb.com.br',2,1),(27,'96587','Lorena Elaine Duarte','34.720.929-4','695.100.008-50','1999-10-10','lorenaelaineduarte@prifree.fr',1,1),(28,'03258','Olivia Amanda da Paz','46.011.555-8','935.939.628-10','2003-09-10','olivia.amanda.dapaz@johndeere.com',1,1),(29,'01459','Lorenzo Levi Benedito da Luz','48.590.660-0','953.888.238-57','2001-10-09','lorenzolevidaluz@zootecnista.com.br',2,1),(30,'32457','Andreia Débora Novaes','40.294.327-2','685.072.108-99','1999-01-04','andreia_novaes@henrimar.com.br',1,1);
/*!40000 ALTER TABLE `tbl_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aluno_avaliacao`
--

DROP TABLE IF EXISTS `tbl_aluno_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aluno_avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_aluno` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ALUNO_ALUNO_AVALIACAO` (`id_aluno`),
  KEY `FK_AVALIACAO_ALUNO_AVALIACAO` (`id_avaliacao`),
  CONSTRAINT `FK_ALUNO_ALUNO_AVALIACAO` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id`),
  CONSTRAINT `FK_AVALIACAO_ALUNO_AVALIACAO` FOREIGN KEY (`id_avaliacao`) REFERENCES `tbl_avaliacao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno_avaliacao`
--

LOCK TABLES `tbl_aluno_avaliacao` WRITE;
/*!40000 ALTER TABLE `tbl_aluno_avaliacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_aluno_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aluno_curso`
--

DROP TABLE IF EXISTS `tbl_aluno_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aluno_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_aluno` int NOT NULL,
  `id_curso` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ALUNO_ALUNO_CURSO` (`id_aluno`),
  KEY `FK_CURSO_ALUNO_CURSO` (`id_curso`),
  CONSTRAINT `FK_ALUNO_ALUNO_CURSO` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id`),
  CONSTRAINT `FK_CURSO_ALUNO_CURSO` FOREIGN KEY (`id_curso`) REFERENCES `tbl_curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno_curso`
--

LOCK TABLES `tbl_aluno_curso` WRITE;
/*!40000 ALTER TABLE `tbl_aluno_curso` DISABLE KEYS */;
INSERT INTO `tbl_aluno_curso` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,2),(11,11,3),(12,12,3),(13,13,3),(14,14,3),(15,15,3),(16,16,4),(17,17,5),(18,18,5),(19,19,5),(20,20,5),(21,21,6),(22,22,6),(23,23,6),(24,24,6),(25,25,6),(26,26,7),(27,27,7),(28,28,7),(29,29,7),(30,30,7),(31,1,8),(32,2,8),(33,3,8),(34,4,8),(35,5,8),(36,6,9),(37,7,9),(38,8,9),(39,9,9),(40,10,9),(41,11,10),(42,12,10),(43,13,10),(44,14,10),(45,15,10),(46,16,11),(47,17,11),(48,18,11),(49,19,11),(50,20,11),(51,21,12),(52,22,12),(53,23,12),(54,24,12),(55,25,12),(56,26,13),(57,27,13),(58,28,13),(59,29,13),(60,30,13);
/*!40000 ALTER TABLE `tbl_aluno_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_aluno_turma`
--

DROP TABLE IF EXISTS `tbl_aluno_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_aluno_turma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_aluno` int NOT NULL,
  `id_turma` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ALUNO_ALUNO_TURMA` (`id_aluno`),
  KEY `FK_TURMA_ALUNO_TURMA` (`id_turma`),
  CONSTRAINT `FK_ALUNO_ALUNO_TURMA` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id`),
  CONSTRAINT `FK_TURMA_ALUNO_TURMA` FOREIGN KEY (`id_turma`) REFERENCES `tbl_turma` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_aluno_turma`
--

LOCK TABLES `tbl_aluno_turma` WRITE;
/*!40000 ALTER TABLE `tbl_aluno_turma` DISABLE KEYS */;
INSERT INTO `tbl_aluno_turma` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,2),(8,8,2),(9,9,2),(10,10,2),(11,11,3),(12,12,3),(13,13,3),(14,14,3),(15,15,3),(16,16,4),(17,17,5),(18,18,5),(19,19,5),(20,20,5),(21,21,6),(22,22,6),(23,23,6),(24,24,6),(25,25,6),(26,26,7),(27,27,7),(28,28,7),(29,29,7),(30,30,7),(31,1,8),(32,2,8),(33,3,8),(34,4,8),(35,5,8),(36,6,9),(37,7,9),(38,8,9),(39,9,9),(40,10,9),(41,11,10),(42,12,10),(43,13,10),(44,14,10),(45,15,10),(46,16,11),(47,17,11),(48,18,11),(49,19,11),(50,20,11),(51,21,12),(52,22,12),(53,23,12),(54,24,12),(55,25,12),(56,26,13),(57,27,13),(58,28,13),(59,29,13),(60,30,13);
/*!40000 ALTER TABLE `tbl_aluno_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_avaliacao`
--

DROP TABLE IF EXISTS `tbl_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota` varchar(10) NOT NULL,
  `id_tipo_avaliacao` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_TIPO_AVALIACAO_AVALIACAO` (`id_tipo_avaliacao`),
  CONSTRAINT `FK_TIPO_AVALIACAO_AVALIACAO` FOREIGN KEY (`id_tipo_avaliacao`) REFERENCES `tbl_tipo_avaliacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_avaliacao`
--

LOCK TABLES `tbl_avaliacao` WRITE;
/*!40000 ALTER TABLE `tbl_avaliacao` DISABLE KEYS */;
INSERT INTO `tbl_avaliacao` VALUES (1,'1,0',1),(2,'2,0',1),(3,'3,0',1),(4,'4,0',1),(5,'5,0',1),(6,'6,0',1),(7,'7,0',1),(8,'8,0',1),(9,'9,0',1),(10,'10,0',1),(11,'0,0',1),(12,'1,0',2),(13,'2,0',2),(14,'3,0',2),(15,'4,0',2),(16,'5,0',2),(17,'6,0',2),(18,'7,0',2),(19,'8,0',2),(20,'9,0',2),(21,'10,0',2),(22,'0,0',2);
/*!40000 ALTER TABLE `tbl_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_avaliacao_curso`
--

DROP TABLE IF EXISTS `tbl_avaliacao_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_avaliacao_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `id_avaliacao` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_CURSO_AVALIACAO_CURSO` (`id_curso`),
  KEY `FK_AVALIACAO_AVALIACAO_CURSO` (`id_avaliacao`),
  CONSTRAINT `FK_AVALIACAO_AVALIACAO_CURSO` FOREIGN KEY (`id_avaliacao`) REFERENCES `tbl_avaliacao` (`id`),
  CONSTRAINT `FK_CURSO_AVALIACAO_CURSO` FOREIGN KEY (`id_curso`) REFERENCES `tbl_curso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_avaliacao_curso`
--

LOCK TABLES `tbl_avaliacao_curso` WRITE;
/*!40000 ALTER TABLE `tbl_avaliacao_curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_avaliacao_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cidade`
--

DROP TABLE IF EXISTS `tbl_cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_cidade` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sigla` varchar(3) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `id_estado` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ESTADO_CIDADE` (`id_estado`),
  CONSTRAINT `FK_ESTADO_CIDADE` FOREIGN KEY (`id_estado`) REFERENCES `tbl_estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cidade`
--

LOCK TABLES `tbl_cidade` WRITE;
/*!40000 ALTER TABLE `tbl_cidade` DISABLE KEYS */;
INSERT INTO `tbl_cidade` VALUES (1,'JAN','JANDIRA',25),(2,'FMO','FRANCISCO MORATO',25),(3,'BAR','BARUERI',25),(4,'ITA','ITAPEVI',25),(5,'SP','SÂO PAULO',25),(6,'CB','CABO FRIO',19),(7,'NI','NITEROI',19),(8,'RJ','RIO DE JANEIRO',19);
/*!40000 ALTER TABLE `tbl_cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_curso`
--

DROP TABLE IF EXISTS `tbl_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  `duracao` varchar(50) NOT NULL,
  `id_escola` int NOT NULL,
  `id_tipo_curso` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_RSCOLA_CURSO` (`id_escola`),
  KEY `FK_TIPO_CURSO_CURSO` (`id_tipo_curso`),
  CONSTRAINT `FK_RSCOLA_CURSO` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`),
  CONSTRAINT `FK_TIPO_CURSO_CURSO` FOREIGN KEY (`id_tipo_curso`) REFERENCES `tbl_tipo_curso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curso`
--

LOCK TABLES `tbl_curso` WRITE;
/*!40000 ALTER TABLE `tbl_curso` DISABLE KEYS */;
INSERT INTO `tbl_curso` VALUES (1,'AUTOMAÇÂO HIDRAULICA INDUSTRIAL','O Curso de Aperfeiçoamento\n                  Profissional Automação Hidráulica Industrial tem por objetivo \n                  o desenvolvimento de conhecimentos e habilidades básicas referentes \n                  aos componentes hidráulicos utilizados em máquinas, equipamentos e\n                  dispositivos.','40 HORAS',1,1),(2,'CONTROLADORES LOGICOS PROGRAMAVEIS','O Curso de Aperfeiçoamento Profissional\n				  Controladores Lógicos Programáveis tem por objetivo o desenvolvimento de competências\n                  relativas à programação e configuração de Controladores Lógicos Programáveis.','60 HORAS',1,1),(3,'ELETRICA AUTOMOTIVA DE VEICULOS LEVES','O curso de Qualificação Profissional de Eletricista\n                  Automotivo de Veículos Leves tem por objetivo o desenvolvimento de competências relativas à realização\n                  de instalação e manutenção de sistemas carga, partida, sinalização e iluminação em veículos, interpretando\n                  esquemas elétricos automotivos e utilizando ferramentas e equipamentos, seguindo normas e procedimentos\n                  técnicos, ambientais e de saúde e segurança no trabalho.','160 HORAS',1,1),(4,'ELETRICISTA INSTALADOR','No curso Eletricista Instalador o aluno irá aprender interpretar circuitos\n                   e diagramas elétricos, planta baixa de instalações elétricas prediais e a montagem de infraestrutura\n                   básica para instalação elétrica predial. Ao final do curso, poderá elaborar croquis, executar e conferir\n                   instalações elétricas prediais, de acordo com normas técnicas, ambientais, de qualidade e de segurança e\n                   saúde no trabalho.','160 HORAS',1,1),(5,'ANALISTA DE RECURSOS HUMANOS','O curso de Especialização Profissional Analista de Recursos Humanos tem por\n                    objetivo o desenvolvimento de competências referentes ao planejamento, execução e orientação dos processos de\n                    recursos humanos e seus subsistemas: recrutamento e seleção, treinamento e desenvolvimento, cargos e salários e\n                    benefícios em conformidade com as normas de saúde e segurança no trabalho, de acordo com a legislação e procedimentos\n                    internos da empresa.','80 HORAS',1,1),(6,'ELETRICISTA DE MANUTENÇÂO ELETRONICA','O curso de Aprendizagem Industrial Eletricista de Manutenção Eletroeletrônica tem\n                  por objetivo proporcionar qualificação profissional na instalação e manutenção de sistemas eletroeletrônicos em baixa tensão,\n                  de acordo com normas técnicas, de qualidade, de saúde e segurança no trabalho e de meio ambiente.','1600 horas',1,2),(7,'FERRAMENTEIRO DE MOLDES PARA PLÁSTICOS','O Curso de Aprendizagem Industrial Ferramenteiro de Moldes para Plásticos tem por\n                   objetivo proporcionar aos aprendizes qualificação profissional na construção, montagem, try out e manutenção de moldes para\n                   plásticos, seguindo normas técnicas, de qualidade, de segurança do trabalho e de preservação ambiental.','1600 Horas',1,2),(8,'MECÂNICO DE MANUTENÇÃO','O curso de Aprendizagem Industrial Mecânico de Manutenção tem por objetivo proporcionar qualificação\n                   profissional para realizar a manutenção mecânica de máquinas, equipamentos e instalações, tendo em vista o aumento da confiabilidade\n                   do processo produtivo, em conformidade às normas e procedimentos de saúde e segurança no trabalho, de meio ambiente e de qualidade.','1600 horas',1,2),(9,'MECÂNICO DE USINAGEM','O Curso de Aprendizagem Industrial Mecânico de Usinagem tem por objetivo proporcionar qualificação profissional \n                    na execução de atividades relacionadas à usinagem de peças em materiais ferrosos e não ferrosos, seguindo normas e procedimentos técnicos,\n                    de manutenção, segurança, meio ambiente e qualidade.','1600 horas',1,2),(10,'TÉCNICO EM REDES DE COMPUTADORES','O Curso Técnico de Redes de Computadores tem por objetivo habilitar profissionais para administrar redes\n                  de computadores on premise e na nuvem em consonância com as evoluções e necessidades do mercado de trabalho, considerando requisitos técnicos \n                  e normas de qualidade, de meio ambiente e de saúde e segurança no trabalho.','1125 HORAS',1,3),(11,'TÉCNICO EM ADMINISTRAÇÃO','O curso técnico de Administração tem por objetivo habilitar profissionais em realizar e gerir processos administrativos\n                   das áreas da indústria e de serviços, utilizando-se de técnicas e tecnologias apropriadas e de padrões éticos, legais, de qualidade e segurança, com\n                   responsabilidade social e ambiental.','1125 horas',1,3),(12,'TÉCNICO EM DESENVOLVIMENTO DE SISTEMAS','O Curso Técnico de Desenvolvimento de Sistemas tem por objetivo habilitar profissionais para analisar requisitos\n                   funcionais e não funcionais de produtos, desenvolver e testar sistemas de software, de acordo com as especificações do projeto, considerando as boas práticas\n                   do mercado de tecnologia da informação e as necessidades do usuário.','1200 HORAS',1,3),(13,'TÉCNICO EM ELETROELETRÔNICA','O Curso Técnico de Eletroeletrônica tem por objetivo habilitar profissionais para desenvolver projetos de sistemas\n                 eletroeletrônicos de baixa tensão e atuar nos processos de instalação e manutenção de sistemas eletroeletrônicos, considerando a legislação, normas, padrões\n                 e requisitos técnicos de qualidade, saúde, segurança e de meio ambiente.','1200 HORAS',1,3);
/*!40000 ALTER TABLE `tbl_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_curso_turma`
--

DROP TABLE IF EXISTS `tbl_curso_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_curso_turma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `id_turma` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_CURSO_CURSO_TURMA` (`id_curso`),
  KEY `FK_TURMA_CURSO_TURMA` (`id_turma`),
  CONSTRAINT `FK_CURSO_CURSO_TURMA` FOREIGN KEY (`id_curso`) REFERENCES `tbl_curso` (`id`),
  CONSTRAINT `FK_TURMA_CURSO_TURMA` FOREIGN KEY (`id_turma`) REFERENCES `tbl_turma` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_curso_turma`
--

LOCK TABLES `tbl_curso_turma` WRITE;
/*!40000 ALTER TABLE `tbl_curso_turma` DISABLE KEYS */;
INSERT INTO `tbl_curso_turma` VALUES (1,1,13),(2,2,12),(3,3,11),(4,4,10),(5,5,9),(6,6,8),(7,7,7),(8,8,6),(9,9,5),(10,10,4),(11,11,3),(12,12,2),(13,13,1);
/*!40000 ALTER TABLE `tbl_curso_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_email_escola`
--

DROP TABLE IF EXISTS `tbl_email_escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_email_escola` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `id_escola` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ESCOLA_EMAIL_ESCOLA` (`id_escola`),
  CONSTRAINT `FK_ESCOLA_EMAIL_ESCOLA` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_email_escola`
--

LOCK TABLES `tbl_email_escola` WRITE;
/*!40000 ALTER TABLE `tbl_email_escola` DISABLE KEYS */;
INSERT INTO `tbl_email_escola` VALUES (1,'ianes.jandira@gmail.com',1);
/*!40000 ALTER TABLE `tbl_email_escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_email_professor`
--

DROP TABLE IF EXISTS `tbl_email_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_email_professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(256) NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_PROFESSOR_EMAIL_PROFESSOR` (`id_professor`),
  CONSTRAINT `FK_PROFESSOR_EMAIL_PROFESSOR` FOREIGN KEY (`id_professor`) REFERENCES `tbl_professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_email_professor`
--

LOCK TABLES `tbl_email_professor` WRITE;
/*!40000 ALTER TABLE `tbl_email_professor` DISABLE KEYS */;
INSERT INTO `tbl_email_professor` VALUES (1,'enricokaiquerodrigues@ianes.com',1),(2,'renanaugusto@ianes.com',2),(3,'rosângelatereza@ianes.com',3),(4,'alessandraregina@ianes.com',4),(5,'eliasbruno@ianes.com',5),(6,'HadassaHelena@ianes.com',6),(7,'BenícioGiovanni@ianes.com',7),(8,'CláudiaAlícia@ianes.com',8),(9,'MartinTiagoCauê@ianes.com',9),(10,'ManuelaSophia@ianes.com',10);
/*!40000 ALTER TABLE `tbl_email_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco_aluno`
--

DROP TABLE IF EXISTS `tbl_endereco_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_endereco_aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `id_aluno` int NOT NULL,
  `id_cidade` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ALUNO_ENDERECO_ALUNO` (`id_aluno`),
  KEY `FK_CIDADE_ENDERECO_ALUNO` (`id_cidade`),
  CONSTRAINT `FK_ALUNO_ENDERECO_ALUNO` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id`),
  CONSTRAINT `FK_CIDADE_ENDERECO_ALUNO` FOREIGN KEY (`id_cidade`) REFERENCES `tbl_cidade` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_aluno`
--

LOCK TABLES `tbl_endereco_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_aluno` DISABLE KEYS */;
INSERT INTO `tbl_endereco_aluno` VALUES (1,'Alameda Cipreste, 326','Altos de São Fernando','06630-090',1,1),(2,'Estrada Estadual Barueri-Itapevi, 1203','Jardim Nossa Senhora de Fátima','06624-000',2,1),(3,'Rua Iguaçu, 899','Jardim Nossa Senhora de Fátima','06624-050',3,1),(4,'Rua Visconde de Taunay, 514','Jardim das Margaridas','06622-100',4,1),(5,'Alameda Cipreste, 356','Altos de São Fernando','06630-090',5,1),(6,'Estrada Estadual Barueri-Itapevi, 1203','Jardim Nossa Senhora de Fátima','06624-000',6,1),(7,'Rua Iguaçu, 852','Jardim Nossa Senhora de Fátima','06624-050',7,1),(8,'Rua Visconde de Taunay, 414','Jardim das Margaridas','06622-100',8,1),(9,'Alameda Cipreste, 626','Altos de São Fernando','06630-090',9,1),(10,'Estrada Estadual Barueri-Itapevi, 12','Jardim Nossa Senhora de Fátima','06624-000',10,1),(11,'Rua Iguaçu, 199','Jardim Nossa Senhora de Fátima','06624-050',11,1),(12,'Rua Visconde de Taunay, 714','Jardim das Margaridas','06622-100',12,1),(13,'Alameda Cipreste, 626','Altos de São Fernando','06630-090',13,1),(14,'Estrada Estadual Barueri-Itapevi, 803','Jardim Nossa Senhora de Fátima','06624-000',14,1),(15,'Rua Iguaçu, 799','Jardim Nossa Senhora de Fátima','06624-050',15,1),(16,'Rua Visconde de Taunay, 2514','Jardim das Margaridas','06622-100',16,1),(17,'Alameda Cipreste, 1326','Altos de São Fernando','06630-090',17,1),(18,'Estrada Estadual Barueri-Itapevi, 1209','Jardim Nossa Senhora de Fátima','06624-000',18,1),(19,'Rua Iguaçu, 1899','Jardim Nossa Senhora de Fátima','06624-050',19,1),(20,'Rua Visconde de Taunay, 2514','Jardim das Margaridas','06622-100',20,1),(21,'Alameda Cipreste, 26','Altos de São Fernando','06630-090',21,1),(22,'Estrada Estadual Barueri-Itapevi, 1203','Jardim Nossa Senhora de Fátima','06624-000',22,1),(23,'Rua Iguaçu, 99','Jardim Nossa Senhora de Fátima','06624-050',23,1),(24,'Rua Visconde de Taunay, 54','Jardim das Margaridas','06622-100',24,1),(25,'Alameda Cipreste, 36','Altos de São Fernando','06630-090',25,1),(26,'Estrada Estadual Barueri-Itapevi, 123','Jardim Nossa Senhora de Fátima','06624-000',26,1),(27,'Rua Iguaçu, 89','Jardim Nossa Senhora de Fátima','06624-050',27,1),(28,'Rua Visconde de Taunay, 14','Jardim das Margaridas','06622-100',28,1),(29,'Rua Visconde de Taunay, 54','Jardim das Margaridas','06622-100',29,1),(30,'Rua Antônio Lopes, 28','Jardim Alvorada','06612-090',30,1);
/*!40000 ALTER TABLE `tbl_endereco_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco_escola`
--

DROP TABLE IF EXISTS `tbl_endereco_escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_endereco_escola` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `id_escola` int NOT NULL,
  `id_cidade` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_ESCOLA_ENDERECO_ESCOLA` (`id_escola`),
  KEY `FK_CIDADE_ENDERECO_ESCOLA` (`id_cidade`),
  CONSTRAINT `FK_CIDADE_ENDERECO_ESCOLA` FOREIGN KEY (`id_cidade`) REFERENCES `tbl_cidade` (`id`),
  CONSTRAINT `FK_ESCOLA_ENDERECO_ESCOLA` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_escola`
--

LOCK TABLES `tbl_endereco_escola` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_escola` DISABLE KEYS */;
INSERT INTO `tbl_endereco_escola` VALUES (1,'RUA ELTON SILVA, 905','CENTRO','06600-025',1,1);
/*!40000 ALTER TABLE `tbl_endereco_escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco_funcionario`
--

DROP TABLE IF EXISTS `tbl_endereco_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_endereco_funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `id_cidade` int NOT NULL,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_CIDADE_EMDERECO_FUNCIONARIO` (`id_cidade`),
  KEY `FK_FUNCIONARIO_ENDERECO_FUNCIONARIO` (`id_funcionario`),
  CONSTRAINT `FK_CIDADE_EMDERECO_FUNCIONARIO` FOREIGN KEY (`id_cidade`) REFERENCES `tbl_cidade` (`id`),
  CONSTRAINT `FK_FUNCIONARIO_ENDERECO_FUNCIONARIO` FOREIGN KEY (`id_funcionario`) REFERENCES `tbl_funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_funcionario`
--

LOCK TABLES `tbl_endereco_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_funcionario` DISABLE KEYS */;
INSERT INTO `tbl_endereco_funcionario` VALUES (1,'Alameda Cipreste, 326','Altos de São Fernando','06630-090',1,1),(2,'Estrada Estadual Barueri-Itapevi, 1203','Jardim Nossa Senhora de Fátima','06624-000',1,2),(3,'Rua Iguaçu, 899','Jardim Nossa Senhora de Fátima','06624-050',1,3),(4,'Rua Visconde de Taunay, 514','Jardim das Margaridas','06622-100',1,4),(5,'Rua Antônio Lopes, 828','Jardim Alvorada','06612-090',1,5),(6,'Alameda Cipreste, 926','Altos de São Fernando','06630-090',1,6),(7,'Estrada Estadual Barueri-Itapevi, 13','Jardim Nossa Senhora de Fátima','06624-000',1,7),(8,'Rua Visconde de Taunay, 1514','Jardim das Margaridas','06622-100',1,8),(9,'Rua Iguaçu, 2399','Jardim Nossa Senhora de Fátima','06624-050',1,9);
/*!40000 ALTER TABLE `tbl_endereco_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_endereco_professor`
--

DROP TABLE IF EXISTS `tbl_endereco_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_endereco_professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `id_cidade` int NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_CIDADE_ENDERECO_PROFESSOR` (`id_cidade`),
  KEY `FK_PROFESSOR_ENDERECO_PROFESSOR` (`id_professor`),
  CONSTRAINT `FK_CIDADE_ENDERECO_PROFESSOR` FOREIGN KEY (`id_cidade`) REFERENCES `tbl_cidade` (`id`),
  CONSTRAINT `FK_PROFESSOR_ENDERECO_PROFESSOR` FOREIGN KEY (`id_professor`) REFERENCES `tbl_professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_endereco_professor`
--

LOCK TABLES `tbl_endereco_professor` WRITE;
/*!40000 ALTER TABLE `tbl_endereco_professor` DISABLE KEYS */;
INSERT INTO `tbl_endereco_professor` VALUES (1,'RUA MONTE CARLO, 327','JARDIM SÃO JOÃO','06634-030',1,1),(2,'RUA TIBAGI, 936','VILA SÃO SILVESTRE','06417-130',2,2),(3,'TRAVESSA PARANANCITY, 547','PARQUE PAULISTANO','08080-366',4,3),(4,'RUA FRANCISCA TEIXEIRA CARVALHO, 819','NOVA ITAPEVI','06694-170',3,4),(5,'ALAMEDA PINTASSILGO, 137','TRANSURB','06670-370',3,5),(6,'RUA PEDRO ALEXANDRINO DE OLIVEIRA, 446','CONJUNTO HABITACIONAL JOVA RURAL','02281-212',4,6),(7,'RUA ANTONIO LOPES TEMPOS, 474','JARDIM GABRIELA I','06624-370',1,7),(8,'RUA ITAPITANGA, 699','SITIO PEDRA BONITA','06620-295',1,8),(9,'RUA MARIA RODRIGUES MACHADO, 202','JARDIM NOSSA SENHORA DE FATIMA','06624-070',1,9),(10,'RUA CAJAMAR, 738','PARQUE SANTA TEREZA','06622-290',1,10);
/*!40000 ALTER TABLE `tbl_endereco_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_escola`
--

DROP TABLE IF EXISTS `tbl_escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_escola` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(190) NOT NULL,
  `razao_social` varchar(190) DEFAULT NULL,
  `cnpj` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_escola`
--

LOCK TABLES `tbl_escola` WRITE;
/*!40000 ALTER TABLE `tbl_escola` DISABLE KEYS */;
INSERT INTO `tbl_escola` VALUES (1,'IANES','SERVIÇO NASCIONAL DE APRENDIZAGEM INDUSTRIAL','	03.774.819/0001-02');
/*!40000 ALTER TABLE `tbl_escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado`
--

DROP TABLE IF EXISTS `tbl_estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_estado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sigla` varchar(3) NOT NULL,
  `nome` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado`
--

LOCK TABLES `tbl_estado` WRITE;
/*!40000 ALTER TABLE `tbl_estado` DISABLE KEYS */;
INSERT INTO `tbl_estado` VALUES (1,'AC','ACRE'),(2,'AL','ALAGOAS'),(3,'AP','AMAPA'),(4,'AM','AMAZONAS'),(5,'BA','BAHIA'),(6,'CE','CEARA'),(7,'DF','DISTRITO FEDERAL'),(8,'ES','ESPIRITO SANTO'),(9,'GO','GOIAS'),(10,'MA','MARANHÂO'),(11,'MT','MATO GROSSO'),(12,'MS','MATO GROSSO DO SUL'),(13,'MG','MINAS GERAIS'),(14,'PA','PARA'),(15,'PB','PARAIBA'),(16,'PR','PARANA'),(17,'PE','PERNAMBUCO'),(18,'PI','PIAUI'),(19,'RJ','RIO DE JANEIRO'),(20,'RN','RIO GRANDE DO NORTE'),(21,'RS','RIO GRANDE DO SUL'),(22,'RO','RONDONIA'),(23,'RR','RORAIMA'),(24,'SC','SANTA CATARINA'),(25,'SP','SÂO PAULO'),(26,'SE','SERGIPE'),(27,'TO','TOCANTINS');
/*!40000 ALTER TABLE `tbl_estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_formacao`
--

DROP TABLE IF EXISTS `tbl_formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_formacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_formacao`
--

LOCK TABLES `tbl_formacao` WRITE;
/*!40000 ALTER TABLE `tbl_formacao` DISABLE KEYS */;
INSERT INTO `tbl_formacao` VALUES (1,'ENGENHARIA DE REDES'),(2,'GESTÂO DE TI'),(3,'GESTÂO EM ADMINISTRAÇÂO'),(4,'ANALISTA E DESENVOLVIMENTO DE SISTEMAS'),(5,'GETÂO EM RH'),(6,'ENGENHARIA ELETRICA'),(7,'ENGENHARIA MECANICA'),(8,'AUTOMAÇÂO INDUSTRIAL'),(9,'NUTRIÇAO'),(10,'MECANICA AUTOMOTIVA');
/*!40000 ALTER TABLE `tbl_formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_formacao_professor`
--

DROP TABLE IF EXISTS `tbl_formacao_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_formacao_professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_formacao` int NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_FORMACAO_FORMACAO_PROFESSOR` (`id_formacao`),
  KEY `FK_PROFESSOR_FORMACAO_PROFESSOR` (`id_professor`),
  CONSTRAINT `FK_FORMACAO_FORMACAO_PROFESSOR` FOREIGN KEY (`id_formacao`) REFERENCES `tbl_formacao` (`id`),
  CONSTRAINT `FK_PROFESSOR_FORMACAO_PROFESSOR` FOREIGN KEY (`id_professor`) REFERENCES `tbl_professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_formacao_professor`
--

LOCK TABLES `tbl_formacao_professor` WRITE;
/*!40000 ALTER TABLE `tbl_formacao_professor` DISABLE KEYS */;
INSERT INTO `tbl_formacao_professor` VALUES (1,1,2),(2,2,3),(3,3,1),(4,4,6),(5,5,5),(6,1,4),(7,6,10),(8,7,9),(9,8,8),(10,10,7);
/*!40000 ALTER TABLE `tbl_formacao_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcao`
--

DROP TABLE IF EXISTS `tbl_funcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_funcao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `descricao` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcao`
--

LOCK TABLES `tbl_funcao` WRITE;
/*!40000 ALTER TABLE `tbl_funcao` DISABLE KEYS */;
INSERT INTO `tbl_funcao` VALUES (1,'AUXILIAR DE LIMPEZA',NULL),(2,'AUXILIAR DE MANUNTENÇÃO',NULL),(3,'AUXILIAR ADMINISTRATIVO',NULL),(4,'CONTROLADOR DE ACESSO',NULL),(5,'COORDENADOR',NULL),(6,'DIRETOR',NULL);
/*!40000 ALTER TABLE `tbl_funcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_funcionario`
--

DROP TABLE IF EXISTS `tbl_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(190) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(256) DEFAULT NULL,
  `id_sexo` int NOT NULL,
  `id_escola` int NOT NULL,
  `id_funcao` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_SEXO_FUNCIONARIO` (`id_sexo`),
  KEY `FK_ESCOLA_FUNCIONARIO` (`id_escola`),
  KEY `FK_FUNCAO_FUNCIONARIO` (`id_funcao`),
  CONSTRAINT `FK_ESCOLA_FUNCIONARIO` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`),
  CONSTRAINT `FK_FUNCAO_FUNCIONARIO` FOREIGN KEY (`id_funcao`) REFERENCES `tbl_funcao` (`id`),
  CONSTRAINT `FK_SEXO_FUNCIONARIO` FOREIGN KEY (`id_sexo`) REFERENCES `tbl_sexo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionario`
--

LOCK TABLES `tbl_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_funcionario` DISABLE KEYS */;
INSERT INTO `tbl_funcionario` VALUES (1,'Victor Marcelo Barbosa','893.566.258-59','38.085.478-8','1998-11-13','victor_barbosa@tatyanecolo.com',2,1,4),(2,'Natália Emily Sophie Porto','363.696.498-48','34.126.139-7','1990-01-04','natalia_porto@aprimor.com',1,1,3),(3,'Carolina Elisa Costa','319.967.228-08','35.683.557-1','1996-01-02','carolina.elisa.costa@gruposandino.com.',1,1,1),(4,'Marcos Vinicius Mário Jorge Ramos','070.627.848-85','25.457.294-7','1984-06-17','marcosviniciusramos@mundivox.com.br',2,1,2),(5,'Raquel Márcia da Mota','656.121.128-66','43.753.719-5','1987-11-08','raquel_damota@cppcoder.com',1,1,1),(6,'Sarah Caroline Isabella Fogaça','25.838.821-3','44.002.150-9','1969-01-05','sarah_fogaca@picolotoengenharia.com.br',1,1,6),(7,'Yago Sérgio Freitas','560.402.495-36','21.905.113-6','1987-10-20','yago.sergio.freitas@cfaraujo.eng.br',2,1,5),(8,'Renato Daniel Pedro Bernardes','114.435.090-51','44.953.650-6','1979-01-02','renato_bernardes@silicotex.net',2,1,5),(9,'Rayssa Lavínia Amanda da Mata','759.796.780-26','46.131.994-9','1978-04-01','rayssa_lavinia_damata@validtecnologia.com.br',1,1,5);
/*!40000 ALTER TABLE `tbl_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_professor`
--

DROP TABLE IF EXISTS `tbl_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(190) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `rg` varchar(20) NOT NULL,
  `data_nascimento` date NOT NULL,
  `id_sexo` int NOT NULL,
  `id_escola` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_SEXO_PROFESSOR` (`id_sexo`),
  KEY `FK_ESCOLA_PROFESSOR` (`id_escola`),
  CONSTRAINT `FK_ESCOLA_PROFESSOR` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`),
  CONSTRAINT `FK_SEXO_PROFESSOR` FOREIGN KEY (`id_sexo`) REFERENCES `tbl_sexo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_professor`
--

LOCK TABLES `tbl_professor` WRITE;
/*!40000 ALTER TABLE `tbl_professor` DISABLE KEYS */;
INSERT INTO `tbl_professor` VALUES (1,'Enrico Kaique Rodrigues','773.176.747-70','16.476.068-4','1997-04-09',2,1),(2,'Renan Augusto Thomas Nascimento','285.619.311-08','46.143.339-4','1949-06-12',2,1),(3,'Rosângela Tereza Laís Vieira','598.663.879-41','32.438.445-2','1969-04-23',1,1),(4,'Alessandra Regina Alves','390.755.710-70','35.761.449-5','1977-01-16',1,1),(5,'Elias Bruno da Rocha','171.034.088-66','13.045.107-1','1963-03-24',2,1),(6,'Hadassa Helena da Costa','033.277.926-23','46.390.386-9','1967-11-24',1,1),(7,'Benício Giovanni Martin da Mata','021.656.764-52','28.324.150-0','1976-10-29',2,1),(8,'Cláudia Alícia Yasmin Viana','462.759.068-71','50.983.118-7','1968-02-04',1,1),(9,'Martin Tiago Cauê Pires','844.923.966-40','20.353.665-4','1963-09-20',2,1),(10,'Manuela Sophia Aragão','105.814.326-30','38.391.799-2','1953-07-10',1,1);
/*!40000 ALTER TABLE `tbl_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_professor_curso`
--

DROP TABLE IF EXISTS `tbl_professor_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_professor_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_curso` int NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_CURSO_PROFESSOR_CURSO` (`id_curso`),
  KEY `FK_PROFESSOR_PROFESSOR_CURSO` (`id_professor`),
  CONSTRAINT `FK_CURSO_PROFESSOR_CURSO` FOREIGN KEY (`id_curso`) REFERENCES `tbl_curso` (`id`),
  CONSTRAINT `FK_PROFESSOR_PROFESSOR_CURSO` FOREIGN KEY (`id_professor`) REFERENCES `tbl_professor` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_professor_curso`
--

LOCK TABLES `tbl_professor_curso` WRITE;
/*!40000 ALTER TABLE `tbl_professor_curso` DISABLE KEYS */;
INSERT INTO `tbl_professor_curso` VALUES (1,1,3),(2,2,1),(3,3,4),(4,4,6),(5,5,10),(6,6,2),(7,7,5),(8,8,7),(9,9,8),(10,10,9),(11,11,3),(12,12,4),(13,13,8);
/*!40000 ALTER TABLE `tbl_professor_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sala`
--

DROP TABLE IF EXISTS `tbl_sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sala` (
  `id` int NOT NULL AUTO_INCREMENT,
  `numero` int NOT NULL,
  `andar` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sala`
--

LOCK TABLES `tbl_sala` WRITE;
/*!40000 ALTER TABLE `tbl_sala` DISABLE KEYS */;
INSERT INTO `tbl_sala` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,1),(7,7,1),(8,8,1),(9,9,1),(10,10,1),(11,11,2),(12,12,2),(13,13,2),(14,14,2),(15,15,2);
/*!40000 ALTER TABLE `tbl_sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sala_turma`
--

DROP TABLE IF EXISTS `tbl_sala_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sala_turma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_sala` int NOT NULL,
  `id_turma` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_SALA_TURMA_SALA` (`id_sala`),
  KEY `FK_TURMA_SALA_TURMA` (`id_turma`),
  CONSTRAINT `FK_SALA_TURMA_SALA` FOREIGN KEY (`id_sala`) REFERENCES `tbl_sala` (`id`),
  CONSTRAINT `FK_TURMA_SALA_TURMA` FOREIGN KEY (`id_turma`) REFERENCES `tbl_turma` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sala_turma`
--

LOCK TABLES `tbl_sala_turma` WRITE;
/*!40000 ALTER TABLE `tbl_sala_turma` DISABLE KEYS */;
INSERT INTO `tbl_sala_turma` VALUES (1,1,15),(2,2,14),(3,3,13),(4,4,12),(5,5,11),(6,6,10),(7,7,9),(8,8,8),(9,9,7),(10,10,6),(11,11,5),(12,12,4),(13,13,3),(14,14,2),(15,15,1);
/*!40000 ALTER TABLE `tbl_sala_turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_sexo`
--

DROP TABLE IF EXISTS `tbl_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_sexo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sigla` varchar(2) NOT NULL,
  `nome` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_sexo`
--

LOCK TABLES `tbl_sexo` WRITE;
/*!40000 ALTER TABLE `tbl_sexo` DISABLE KEYS */;
INSERT INTO `tbl_sexo` VALUES (1,'F','FEMININO'),(2,'M','MASCULINO');
/*!40000 ALTER TABLE `tbl_sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_telefone_aluno`
--

DROP TABLE IF EXISTS `tbl_telefone_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_telefone_aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ddd` varchar(3) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `id_tipo_telefone` int NOT NULL,
  `id_aluno` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_TIPO_TELEFONE_ALUNO_TELEFONE` (`id_tipo_telefone`),
  KEY `FK_ALUNO_TELEFONE_ALUNO` (`id_aluno`),
  CONSTRAINT `FK_ALUNO_TELEFONE_ALUNO` FOREIGN KEY (`id_aluno`) REFERENCES `tbl_aluno` (`id`),
  CONSTRAINT `FK_TIPO_TELEFONE_ALUNO_TELEFONE` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tbl_tipo_telefone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_telefone_aluno`
--

LOCK TABLES `tbl_telefone_aluno` WRITE;
/*!40000 ALTER TABLE `tbl_telefone_aluno` DISABLE KEYS */;
INSERT INTO `tbl_telefone_aluno` VALUES (1,'11','4436-5412',1,1),(2,'11','4436-5469',1,2),(3,'11','4496-5123',1,3),(4,'11','4436-9658',1,4),(5,'11','4436-9612',1,5),(6,'11','4436-5987',1,6),(7,'11','4696-5412',1,7),(8,'11','4439-4412',1,8),(9,'11','4466-9632',1,9),(10,'11','4437-9631',1,10),(11,'11','4436-5412',1,11),(12,'11','4436-5469',1,12),(13,'11','4496-5123',1,13),(14,'11','4436-9658',1,14),(15,'11','4436-9612',1,15),(16,'11','4436-5987',1,16),(17,'11','4696-5412',1,17),(18,'11','4439-4412',1,18),(19,'11','4466-9632',1,19),(20,'11','4437-9631',1,20),(21,'11','4436-5412',1,21),(22,'11','4436-5469',1,22),(23,'11','4496-5123',1,23),(24,'11','4436-9658',1,24),(25,'11','4436-9612',1,25),(26,'11','4436-5987',1,26),(27,'11','4696-5412',1,27),(28,'11','4439-4412',1,28),(29,'11','4466-9632',1,29),(30,'11','4437-9631',1,30);
/*!40000 ALTER TABLE `tbl_telefone_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_telefone_escola`
--

DROP TABLE IF EXISTS `tbl_telefone_escola`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_telefone_escola` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ddd` varchar(3) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `id_tipo_telefone` int NOT NULL,
  `id_escola` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_TIPO_TELEFONE_TELEFONE_ESCOLE` (`id_tipo_telefone`),
  KEY `FK_ESCOLA_TELEFONE_ESCOLA` (`id_escola`),
  CONSTRAINT `FK_ESCOLA_TELEFONE_ESCOLA` FOREIGN KEY (`id_escola`) REFERENCES `tbl_escola` (`id`),
  CONSTRAINT `FK_TIPO_TELEFONE_TELEFONE_ESCOLE` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tbl_tipo_telefone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_telefone_escola`
--

LOCK TABLES `tbl_telefone_escola` WRITE;
/*!40000 ALTER TABLE `tbl_telefone_escola` DISABLE KEYS */;
INSERT INTO `tbl_telefone_escola` VALUES (1,'11',' 4772-4700',2,1);
/*!40000 ALTER TABLE `tbl_telefone_escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_telefone_funcionario`
--

DROP TABLE IF EXISTS `tbl_telefone_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_telefone_funcionario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ddd` varchar(3) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `id_tipo_telefone` int NOT NULL,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_TIPO_TELEFONE_TELEFONE_FUNCIONARIO` (`id_tipo_telefone`),
  KEY `FK_FUNCIONARIO_TELEFONE_FUNCIONARIO` (`id_funcionario`),
  CONSTRAINT `FK_FUNCIONARIO_TELEFONE_FUNCIONARIO` FOREIGN KEY (`id_funcionario`) REFERENCES `tbl_funcionario` (`id`),
  CONSTRAINT `FK_TIPO_TELEFONE_TELEFONE_FUNCIONARIO` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tbl_tipo_telefone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_telefone_funcionario`
--

LOCK TABLES `tbl_telefone_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_telefone_funcionario` DISABLE KEYS */;
INSERT INTO `tbl_telefone_funcionario` VALUES (1,'11','2523-2208',1,1),(2,'11','99534-0044',2,2),(3,'11','98961-4328',2,3),(4,'11','4488-6692',1,4),(5,'11','99155-4945',2,4),(6,'11','2523-2268',1,6),(7,'11','99534-0244',2,7),(8,'11','98961-4828',2,8),(9,'11','4488-6652',1,9);
/*!40000 ALTER TABLE `tbl_telefone_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_telefone_professor`
--

DROP TABLE IF EXISTS `tbl_telefone_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_telefone_professor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ddd` varchar(2) NOT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `id_tipo_telefone` int NOT NULL,
  `id_professor` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `FK_TIPO_TELEFONE_TELEFONE_PROFESSOR` (`id_tipo_telefone`),
  KEY `FK_PROFESSOR_TELEFONE_PROFESSOR` (`id_professor`),
  CONSTRAINT `FK_PROFESSOR_TELEFONE_PROFESSOR` FOREIGN KEY (`id_professor`) REFERENCES `tbl_professor` (`id`),
  CONSTRAINT `FK_TIPO_TELEFONE_TELEFONE_PROFESSOR` FOREIGN KEY (`id_tipo_telefone`) REFERENCES `tbl_tipo_telefone` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_telefone_professor`
--

LOCK TABLES `tbl_telefone_professor` WRITE;
/*!40000 ALTER TABLE `tbl_telefone_professor` DISABLE KEYS */;
INSERT INTO `tbl_telefone_professor` VALUES (1,'11','99277-8029',2,1),(2,'11','3551-4255',1,2),(3,'11','2756-7524',1,3),(4,'11','99530-8522',2,4),(5,'11','98610-0262',2,5),(6,'11','3882-6998',1,6),(7,'11','3636-5184',1,7),(8,'11','99747-8278',2,8),(9,'11','99249-8113',2,9),(10,'11','2503-3868',1,10);
/*!40000 ALTER TABLE `tbl_telefone_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_avaliacao`
--

DROP TABLE IF EXISTS `tbl_tipo_avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_avaliacao`
--

LOCK TABLES `tbl_tipo_avaliacao` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_avaliacao` DISABLE KEYS */;
INSERT INTO `tbl_tipo_avaliacao` VALUES (1,'Prova'),(2,'Projeto');
/*!40000 ALTER TABLE `tbl_tipo_avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_curso`
--

DROP TABLE IF EXISTS `tbl_tipo_curso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_curso` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(190) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_curso`
--

LOCK TABLES `tbl_tipo_curso` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_curso` DISABLE KEYS */;
INSERT INTO `tbl_tipo_curso` VALUES (1,'FORMAÇÂO INICIAL E CONTINUADA'),(2,'APRENDIZAGEM INDUSRTIAL'),(3,'CURSOS TÉCNICOS');
/*!40000 ALTER TABLE `tbl_tipo_curso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tipo_telefone`
--

DROP TABLE IF EXISTS `tbl_tipo_telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tipo_telefone` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_telefone` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tipo_telefone`
--

LOCK TABLES `tbl_tipo_telefone` WRITE;
/*!40000 ALTER TABLE `tbl_tipo_telefone` DISABLE KEYS */;
INSERT INTO `tbl_tipo_telefone` VALUES (1,'FIXO'),(2,'CELULAR');
/*!40000 ALTER TABLE `tbl_tipo_telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_turma`
--

DROP TABLE IF EXISTS `tbl_turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_turma` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_inicio` date DEFAULT NULL,
  `data_termino` date DEFAULT NULL,
  `hora_inicio` time DEFAULT NULL,
  `hora_termino` time DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_turma`
--

LOCK TABLES `tbl_turma` WRITE;
/*!40000 ALTER TABLE `tbl_turma` DISABLE KEYS */;
INSERT INTO `tbl_turma` VALUES (1,'2024-02-09',NULL,'08:00:00','12:00:00'),(2,'2024-02-09',NULL,'08:00:00','12:00:00'),(3,'2024-02-09',NULL,'08:00:00','12:00:00'),(4,'2024-02-09',NULL,'08:00:00','12:00:00'),(5,'2024-02-09',NULL,'08:00:00','12:00:00'),(6,'2024-02-09',NULL,'13:00:00','16:00:00'),(7,'2024-02-09',NULL,'13:00:00','16:00:00'),(8,'2024-02-09',NULL,'13:00:00','16:00:00'),(9,'2024-02-09',NULL,'13:00:00','16:00:00'),(10,'2024-02-09',NULL,'13:00:00','16:00:00'),(11,'2024-02-09',NULL,'18:00:00','22:00:00'),(12,'2024-02-09',NULL,'18:00:00','22:00:00'),(13,'2024-02-09',NULL,'18:00:00','22:00:00'),(14,'2024-02-09',NULL,'18:00:00','22:00:00'),(15,'2024-02-09',NULL,'18:00:00','22:00:00');
/*!40000 ALTER TABLE `tbl_turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-11 12:21:49
