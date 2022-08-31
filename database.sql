/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - placement management system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`placement management system` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `placement management system`;

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `Complaint_id` int(11) NOT NULL AUTO_INCREMENT,
  `Comp_Date` varchar(50) DEFAULT NULL,
  `s_id` int(11) DEFAULT NULL,
  `Complaint` varchar(100) DEFAULT NULL,
  `Reply` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Complaint_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  `Dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`course_id`,`course_name`,`Dept_id`) values (1,'BCA',1),(2,'MCA',1),(3,'Bcom',2),(4,'English',3),(5,'Zology',4);

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `Dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `Dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`Dept_id`,`Dept_name`) values (1,'CS'),(2,'Commerce'),(3,'English'),(4,'Science');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`type`) values (1,'admin','admin','admin'),(2,'abc','123','student'),(3,'www','345','student'),(4,'adm','adm','student');

/*Table structure for table `question` */

DROP TABLE IF EXISTS `question`;

CREATE TABLE `question` (
  `Q_id` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(1500) DEFAULT NULL,
  `Answer` varchar(1500) DEFAULT NULL,
  `Difficulty_level` varchar(50) DEFAULT NULL,
  `Option1` varchar(100) DEFAULT NULL,
  `Option2` varchar(100) DEFAULT NULL,
  `Option3` varchar(100) DEFAULT NULL,
  `Option4` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Q_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`Q_id`,`Question`,`Answer`,`Difficulty_level`,`Option1`,`Option2`,`Option3`,`Option4`,`type`) values (1,'Define compound interest.','a','Knowledge','Compound interest is standard in finance and economics.','weqddfv','dvwvf','fefr2ts','text'),(2,'How many loop statement available in c++?','b','Knowledge','4types','3types','2types','5types','text'),(3,'Identify a phrase as a simile','c','Knowledge','ffgdghfgjj','xfhdcZdzf','uses a comparison to describe.','ffhyfghjkxgtd','text'),(4,'in which countries is arabic language spoken','c','Knowledge','Africa','Brasil','Bahrain','Australia','text'),(5,'Name the artist who painted the Mona Lisa.','a','Knowledge','Leonardo da Vinci','asdsggjfj','fsfgjfk','zdgkkglxfsf','text'),(6,'Describe 4 types of coupling in software design.','d','Comprehension','sffhsfyRY','sghfhufjhj','sshjkxyi','Content coupling,Common coupling, Control coupling,Routine call coupling','text'),(7,'Explain in your own words what is meant by mercantilism.','b','Comprehension','sfdghhafsrdffg',' economic practice by which governments used their economies to augment state power at the expense o','fdsndfadfdfj','sdvdghdfjkefggdwhjrjejgjhfsdg','text'),(8,'In one sentence explain the main idea of a written passage','a','Comprehension',' first sentence often explains the subject being discussed','xhsxhscdjk','shxjgsjkdjfhk','sjdjdjnfdfdhjjjjgsffff','text'),(9,'Classify animals into two groups.','c','Comprehension','gdkddddjjjjcdkkd','assddhjdjjdjd',' Vertebrates and Invertebrates.','sgshsjdjkdkfsgsnmdttg','text'),(10,'Express the rule in function notation','d','Comprehension','ggdgdgdjsd','sdgdfsdrfggaerefd','sxgdgddhdh','f(x)','text'),(11,'Calculate for x in the following equation: 12x=36','d','Application','2','4','6','3','text'),(12,'Compute the volume of a cylinder','a','Application','V=pir2h','v=pi','v=r2','v=2pir','text'),(13,'Demonstrate how the seasons occur.','b','Application','ajjdhsdfjbtatvc cvtdtydj',' the earth spins on its axis','dgajfhhkhfh','dghdjgfgghfhjjhdss','text'),(14,'Predict what happens to X if Y increases.','b','Application','vvfjfhgsdhasdvvc','X prime equals the correlation of X:Y multiplied by the standard deviation of X, then divided by the','gsgsgdfhdeugsdhfjfjfkddh','dhjfhgfjshlkkdkdj','text'),(15,'Use the rule for a semicolon in a sentence.','c','Application','hseydediygfgxhydtfddsdhjdjd','sgdggddhfhhdhdjjdjsd','semicolon to join two related independent clauses in place of a comma ','jwjkhadftgddggxhxjsmksksk','text'),(16,'Analyze the characteristics of frogs.','a','Analysis','protruding eyes, no tail, and strong, webbed hind feet','ddgdhdjdjdj','sshjdhyhdhedtdhsjmcm','ssdsdsghsjdjkiiwsderwgsxb','text'),(17,'Differentiate between .call by value and call by reference.','b','Analysis','aggshdhjjnwegej','In Call by value, actual and formal arguments will be created in different memory locations whereas ','sggsdhhsfsfssjdfdftss','gagfdfsgsxtgxbsjsjhdf','text'),(18,'Distinguish facts from hypotheses','a','Analysis','Facts are objective statements like “It is raining.” A hypothesis is a proposed explanation of a fac','tstsyudutsddj','zgshsjjksxkkzjggsg','asjhjhdjdijncnggcjsjjk','text'),(19,'How does Tdap differ from Td vaccine','d','Analysis','shshdhdgdgdhd','sgshdhsdhhdhdh','gsggsggsdhhh','DTaP contains full doses of diphtheria, tetanus, and whooping cough vaccines. Tdap contains a full d','text'),(20,'Critically examine the strengths and weaknesses of the positivist paradigm','c','Analysis','sgsgssfhwgsjgyhs','sdgsgdshhshsdgdgdgdg','Quantitative Approach,Human Behavior','svsgssjudhfwrrwf','text'),(21,'If it rains, the match will be postponed.','b','Article','simple','complex',' negative',' compound','text'),(22,'Let us play ----- chess','a','Article','no article','a','The','an','text'),(23,'She wants to become ----- engineer','d','Article','the','no article','the','an','text'),(24,'__ setting sun gives a beautiful sight.','b','Article','an','the','no article','a','text'),(25,' ----- Oranges are grown in Nagpur','d','Article','a','an','the','no article','text'),(26,'Mahatma Gandhi was a great visionary. He realised the danger of communal conflicts. He sacrificed his life to bring about unity.','b','Synthesis','A great visionary, Mahatma Gandhi realised the danger of communal conflicts and sacrificed his life ','Having realised the danger of communal conflicts Mahatma Gandhi, a great visionary, sacrificed his l',' Mahatma Gandhi sacrificed his life to bring about unity when he realised the danger of communal con','Mahatma Gandhi, a great visionary, He sacrificed his life to bring about unity on realising the dang','text'),(27,'She stood on tip-toe. She reached for the mangoes on tree.','a','Synthesis',' Standing on tip-toe she reached for the mangoes on tree.',' She reached for the mangoes on tree by standing tip-toed.',' She reached for the mangoes on tree when she stood on tip-toe',' She reached the mangoes on tree standing on tip toe.','text'),(28,'India will win the World cup. That is certain.','b','Synthesis','It is certain that India will win the World Cup.','ndia will certainly win the World Cup.','Certainly, India will win the World Cup.','India will win the World Cup certainly.','text'),(29,'\r\nThe US Trade Centre caught fire. The building was brunt to ashes.','c','Synthesis','ssdhdhsgdggdh','gddhshhshdhsjsj',' The US Trade Centre having caught fire, the building was brunt to ashes.','afsggssdsgsfgokdffd','text'),(30,'The servant mopped the room; she found a wallet lying in the corner.','a','Synthesis','While mopping the room, the servant found a wallet lying in a corner.','gsgsjsdggsdttsghsg','svssjsjagedstyysehdhj','sdhdjjdjdsjjdj','text'),(31,'A sum of questions is called:','b','Evaluation','sggsgsgsffsdsdsffsfss',' Test','ssggdhshshhdg','sgsggsggsg','text'),(32,'In measurement the first step is:','c','Evaluation','sffsgsgshhs','sggssssffsdvvgdfe','Decision of what to measure','hahshshshshshfgghh','text'),(33,'The main purpose of the evaluation is to make:','a','Evaluation','Prediction','sggsdhddhdhdhhshhsjsj','sgsgsss','wghdjjkjduegeuyu','text'),(34,'Which type of evaluation is used to monitor the learning process:','c','Evaluation','dssndnnndndnnc','jzasdfhhfj','Formative evaluation','sddvbncvmmcvnnmxcv','text'),(35,'The main purpose of the evaluation is to make judgments about educational:','a','Evaluation','shdsjdjjd','sddhjsjhdhjjh','ddhdjjjc','Quality','text'),(36,'Define compound interest.','b','Knowledge','op6','Compound interest is standard in finance and economics.','op6','op6','text'),(37,'Define compound interest.','d','Knowledge','op8','op7','op7','Compound interest is standard in finance and economics.','text'),(38,'Define compound interest.','a','Knowledge','Compound interest is standard in finance and economics.','op8','op8','op8','text'),(39,'Define compound interest.','b','Knowledge','op9','Compound interest is standard in finance and economics.','op9','op9','text'),(40,'Define compound interest.','a','Knowledge','Compound interest is standard in finance and economics.','op10','op10','op10','text'),(41,'Describe 4 types of coupling in software design.','a','Comprehension','Content coupling,Common coupling, Control coupling,Routine call coupling','op6','op6','op6','text'),(42,'Describe 4 types of coupling in software design.','b','Comprehension','op7','Content coupling,Common coupling, Control coupling,Routine call coupling','op7','op7','text'),(43,'Describe 4 types of coupling in software design.','c','Comprehension','op8','op8','Content coupling,Common coupling, Control coupling,Routine call coupling','op8','text'),(44,'Describe 4 types of coupling in software design.','d','Comprehension','op9','op9','op9','Content coupling,Common coupling, Control coupling,Routine call coupling','text'),(45,'Describe 4 types of coupling in software design.','c','Comprehension','op10','op10','Content coupling,Common coupling, Control coupling,Routine call coupling','op10','text'),(46,'Calculate for x in the following equation: 12x=36','a','Application','3','op6','op6','op6','text'),(47,'Calculate for x in the following equation: 12x=36','b','Application','op7','3','op7','op7','text'),(48,'Calculate for x in the following equation: 12x=36','c','Application','op8','op8','3','op8','text'),(49,'Calculate for x in the following equation: 12x=36','d','Application','op9','op9','op9','3','text'),(50,'Calculate for x in the following equation: 12x=36','a','Application','3','op10','op10','op10','text'),(51,'If it rains, the match will be postponed.','a','Article','complex','op6','op6','op6','text'),(52,'If it rains, the match will be postponed.','c','Article','op8','op8','complex','op8','text'),(53,'If it rains, the match will be postponed.','d','Article','op9','op9','op9','complex','text'),(54,'If it rains, the match will be postponed.','b','Article','op10','complex','op10','op10','text'),(55,'If it rains, the match will be postponed.','b','Article','op7','complex','op7','op7','text'),(56,'A sum of questions is called:','d','Synthesis','op6','op6','op6','Test','text'),(57,'A sum of questions is called:','b','Synthesis','op7','Test','op7','op7','text'),(58,'A sum of questions is called:','c','Synthesis','op8','op8','Test','op8','text'),(59,'A sum of questions is called:','c','Synthesis','op9','op9','Test','op9','text'),(60,'A sum of questions is called:','a','Synthesis','Test','op10','op10','op10','text'),(61,'The main purpose of the evaluation is to make:','a','Evaluation','Prediction','op6','op6','op6','text'),(62,'The main purpose of the evaluation is to make:','b','Evaluation','op7','Prediction','op7','op7','text'),(63,'The main purpose of the evaluation is to make:','c','Evaluation','op8','op8','Prediction','op8','text'),(64,'The main purpose of the evaluation is to make:','d','Evaluation','op10','op10','op10','Prediction','text'),(65,'The main purpose of the evaluation is to make:','d','Evaluation','op9','op9','op9','Prediction','text'),(66,'Analyze the characteristics of frogs.','a','Analysis','protruding eyes, no tail, and strong, webbed hind feet','op6','op6','op6','text'),(67,'Analyze the characteristics of frogs.','b','Analysis','op7','protruding eyes, no tail, and strong, webbed hind feet','op7','op7','text'),(68,'Analyze the characteristics of frogs.','c','Analysis','op8','op8','protruding eyes, no tail, and strong, webbed hind feet','op8','text'),(69,'Analyze the characteristics of frogs.','d','Analysis','op9','op9','op9','protruding eyes, no tail, and strong, webbed hind feet','text'),(70,'Analyze the characteristics of frogs.','c','Analysis','op10','op10','protruding eyes, no tail, and strong, webbed hind feet','op10','text');

/*Table structure for table `scrore_board` */

DROP TABLE IF EXISTS `scrore_board`;

CREATE TABLE `scrore_board` (
  `answerid` int(11) NOT NULL AUTO_INCREMENT,
  `ulid` int(11) DEFAULT NULL,
  `mark` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `status_level` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`answerid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `scrore_board` */

insert  into `scrore_board`(`answerid`,`ulid`,`mark`,`level`,`date`,`status_level`) values (1,2,8,1,'2022-01-30','eligible'),(2,2,4,2,'2022-01-30','fail');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT,
  `s_name` varchar(50) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `Semester` varchar(50) DEFAULT NULL,
  `Adm_no` varchar(50) DEFAULT NULL,
  `s_email` varchar(50) DEFAULT NULL,
  `s_phone` varchar(50) DEFAULT NULL,
  `s_dob` varchar(50) DEFAULT NULL,
  `lid` int(11) DEFAULT NULL,
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`s_id`,`s_name`,`course_id`,`Semester`,`Adm_no`,`s_email`,`s_phone`,`s_dob`,`lid`) values (1,'manu',1,'1','wer433','manu@g.c','8976543235','12-2-3993',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
