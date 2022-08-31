/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 5.6.12-log : Database - placement management system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`Complaint_id`,`Comp_Date`,`s_id`,`Complaint`,`Reply`,`Status`) values 
(1,'2022-02-24',2,'hiii','hloo','replied'),
(2,'2022-06-20',2,'mmmm','ok','replied');

/*Table structure for table `course` */

DROP TABLE IF EXISTS `course`;

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(50) DEFAULT NULL,
  `Dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `course` */

insert  into `course`(`course_id`,`course_name`,`Dept_id`) values 
(3,'Bcom',2),
(4,'English',3),
(5,'Zology',4),
(6,'MCA',1),
(7,'MCA',1),
(8,'computer application',6);

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `Dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `Dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `department` */

insert  into `department`(`Dept_id`,`Dept_name`) values 
(1,'CS'),
(4,'Science'),
(5,'MCA'),
(6,'BCA'),
(7,'BCA');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`type`) values 
(1,'admin','admin','admin'),
(2,'abc','123','student'),
(3,'www','345','student'),
(4,'adm','adm','student'),
(5,'hari123@gmail.com','9076543455','Student'),
(6,'hari123@gmail.com','9076543455','Student'),
(7,'ramkrish@gmail.com','9067541234','Student'),
(8,'manu123@gmail.com','8954676234','Student');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

/*Data for the table `question` */

insert  into `question`(`Q_id`,`Question`,`Answer`,`Difficulty_level`,`Option1`,`Option2`,`Option3`,`Option4`,`type`) values 
(1,'According to Blooms taxonomy which option is incorrect for the preparation of objective based questions?','a','Knowledge','Self actualization','Analysis','Application','Evalution','text'),
(2,'How many loop statement available in c++?','b','Knowledge','4types','3types','2types','5types','text'),
(3,'\r\nThe question,\"How would you prove that the earth is round or not round?\"is based on the ------ objective.\r\n','c','Knowledge','Comprehension','Synthesis','Evalution','Application','text'),
(4,'In which countries is arabic language spoken','c','Knowledge','Africa','Brasil','Bahrain','Australia','text'),
(5,'Name the artist who painted the Mona Lisa.','a','Knowledge','Leonardo da Vinci','Vincent Van Gogh ','Michelangelo','Pablo Picasso ','text'),
(6,'The most important thing about being a writer is that:','d','Comprehension','you must have a pen and paper','you must have a degree in writing','you must have a painful heart','you must learn to develop your own point of view','text'),
(7,'The narrator advises the reader to write in order to:','b','Comprehension','earn a livelihood','encourage him to become a writer','make him famous among his people','show his intelligence to other','text'),
(8,'Most of the people like to read:','a','Comprehension','humorous and adventurous stories','love stories','social stories','horror stories','text'),
(9,'A successful writer\'s presentation must reflect:','c','Comprehension','his handwriting','his showy nature','his personality and individuality','his superiority too thers','text'),
(10,'The worst inflence of the British was:','d','Comprehension','manners','tables','British values','table-manners','text'),
(11,'Calculate for x in the following equation: 12x=36','d','Application','2','4','6','3','text'),
(12,'Which of the following is an example of application software?','a','Application','CAD/CAM system','Operating system','Command system','Security software','text'),
(13,'Which of the following entity does not belong to word processing?','b','Application','Paragraphs','Cells','Words','Characters','text'),
(14,'Which item is called the “heart of a word processing system”?','b','Application','Floppy disk drive','Software',' Data file','Input devices','text'),
(15,'Educational software includes','c','Application','Drill-and –practice programs',' Tutorial programs',' All of these','Simulation programs','text'),
(16,'An organization is a system that is composed of','a','Analysis','Subsystem','Specializations','Functions','Sublevels','text'),
(17,'To characterize organizations,the analysis usually is of','b','Analysis','2 levels','4 levels','3 levels','5 levels','text'),
(18,'Secondary activity of porter that deals with peryaining equipments is named as','a','Analysis','Technological development','Services development','Logistics development','Infrastructure development','text'),
(19,'The secondary activity in porter,dealing with the acquisition of inputs or resources is said to be','d','Analysis','Resource mangement','Infrastructure','Development','Procurement','text'),
(20,'Managing Procurement and quality is the task done by','c','Analysis','Marketing manager','Functional manager','Project manager','Engineering manager','text'),
(21,'If it rains, the match will be postponed.','b','Article','simple','complex',' negative',' compound','text'),
(22,'Let us play ----- chess','a','Article','no article','a','The','an','text'),
(23,'She wants to become ----- engineer','d','Article','the','no article','the','an','text'),
(24,'__ setting sun gives a beautiful sight.','b','Article','an','the','no article','a','text'),
(25,' ----- Oranges are grown in Nagpur','d','Article','a','an','the','no article','text'),
(26,'Mahatma Gandhi was a great visionary. He realised the danger of communal conflicts. He sacrificed his life to bring about unity.','b','Synthesis','A great visionary, Mahatma Gandhi realised the danger of communal conflicts and sacrificed his life ','Having realised the danger of communal conflicts Mahatma Gandhi, a great visionary, sacrificed his l',' Mahatma Gandhi sacrificed his life to bring about unity when he realised the danger of communal con','Mahatma Gandhi, a great visionary, He sacrificed his life to bring about unity on realising the dang','text'),
(27,'She stood on tip-toe. She reached for the mangoes on tree.','a','Synthesis','Standing on tip-toe she reached for the mangoes on tree.','She reached for the mangoes on tree by standing tip-toed.',' She reached for the mangoes on tree when she stood on tip-toe',' She reached the mangoes on tree standing on tip toe.','text'),
(28,'India will win the World cup. That is certain.','d','Synthesis','It is certain that India will win the World Cup.','india will certainly win the World Cup.','Certainly, India will win the World Cup.','India will win the World Cup certainly.','text'),
(29,'\r\nThe US Trade Centre caught fire. The building was brunt to ashes.','c','Synthesis','The building of US Trade Centre caught fire and burnt to ashes.','The building of US Trade Centre was burnt to ashes when it caught fire.',' The US Trade Centre having caught fire, the building was brunt to ashes.','The US Trade Centre caught fire and the building was brunt to ashes.','text'),
(30,'The servant mopped the room; she found a wallet lying in the corner.','a','Synthesis','While mopping the room, the servant found a wallet lying in a corner.','The servant found a wallet while mopping the corner of the room.','The servant founded a wallet lying in the corner while mopping the room.','The servant mopped the room and found a wallet lying in the corner.','text'),
(31,'A sum of questions is called:','b','Evaluation','Testing',' Test','Assessment','Examination ','text'),
(32,'In measurement the first step is:','c','Evaluation','Marking of the test','Administering the test','Decision of what to measure','Development of the test','text'),
(33,'The main purpose of the evaluation is to make:','a','Evaluation','Prediction','Judgment','Opinion','Decision','text'),
(34,'Which type of evaluation is used to monitor the learning process:','c','Evaluation','Summative evaluation','Diagnostic evaluation ','Formative evaluation','Placement evaluation','text'),
(35,'The main purpose of the evaluation is to make judgments about educational:','d','Evaluation','Age',' Time period','Quantity','Quality','text'),
(36,'Define compound interest.','b','Knowledge','op6','Compound interest is standard in finance and economics.','op6','op6','text'),
(37,'Define compound interest.','d','Knowledge','op8','op7','op7','Compound interest is standard in finance and economics.','text'),
(38,'Define compound interest.','a','Knowledge','Compound interest is standard in finance and economics.','op8','op8','op8','text'),
(39,'Define compound interest.','b','Knowledge','op9','Compound interest is standard in finance and economics.','op9','op9','text'),
(40,'Define compound interest.','a','Knowledge','Compound interest is standard in finance and economics.','op10','op10','op10','text'),
(41,'Describe 4 types of coupling in software design.','a','Comprehension','Content coupling,Common coupling, Control coupling,Routine call coupling','op6','op6','op6','text'),
(42,'Describe 4 types of coupling in software design.','b','Comprehension','op7','Content coupling,Common coupling, Control coupling,Routine call coupling','op7','op7','text'),
(43,'Describe 4 types of coupling in software design.','c','Comprehension','op8','op8','Content coupling,Common coupling, Control coupling,Routine call coupling','op8','text'),
(44,'Describe 4 types of coupling in software design.','d','Comprehension','op9','op9','op9','Content coupling,Common coupling, Control coupling,Routine call coupling','text'),
(45,'Describe 4 types of coupling in software design.','c','Comprehension','op10','op10','Content coupling,Common coupling, Control coupling,Routine call coupling','op10','text'),
(46,'Calculate for x in the following equation: 12x=36','a','Application','3','op6','op6','op6','text'),
(47,'Calculate for x in the following equation: 12x=36','b','Application','op7','3','op7','op7','text'),
(48,'Calculate for x in the following equation: 12x=36','c','Application','op8','op8','3','op8','text'),
(49,'Calculate for x in the following equation: 12x=36','d','Application','op9','op9','op9','3','text'),
(50,'Calculate for x in the following equation: 12x=36','a','Application','3','op10','op10','op10','text'),
(51,'If it rains, the match will be postponed.','a','Article','complex','op6','op6','op6','text'),
(52,'If it rains, the match will be postponed.','c','Article','op8','op8','complex','op8','text'),
(53,'If it rains, the match will be postponed.','d','Article','op9','op9','op9','complex','text'),
(54,'If it rains, the match will be postponed.','b','Article','op10','complex','op10','op10','text'),
(55,'If it rains, the match will be postponed.','b','Article','op7','complex','op7','op7','text'),
(56,'A sum of questions is called:','d','Synthesis','op6','op6','op6','Test','text'),
(57,'A sum of questions is called:','b','Synthesis','op7','Test','op7','op7','text'),
(58,'A sum of questions is called:','c','Synthesis','op8','op8','Test','op8','text'),
(59,'A sum of questions is called:','c','Synthesis','op9','op9','Test','op9','text'),
(60,'A sum of questions is called:','a','Synthesis','Test','op10','op10','op10','text'),
(61,'The main purpose of the evaluation is to make:','a','Evaluation','Prediction','op6','op6','op6','text'),
(62,'The main purpose of the evaluation is to make:','b','Evaluation','op7','Prediction','op7','op7','text'),
(63,'The main purpose of the evaluation is to make:','c','Evaluation','op8','op8','Prediction','op8','text'),
(64,'The main purpose of the evaluation is to make:','d','Evaluation','op10','op10','op10','Prediction','text'),
(65,'The main purpose of the evaluation is to make:','d','Evaluation','op9','op9','op9','Prediction','text'),
(66,'Analyze the characteristics of frogs.','a','Analysis','protruding eyes, no tail, and strong, webbed hind feet','op6','op6','op6','text'),
(67,'Analyze the characteristics of frogs.','b','Analysis','op7','protruding eyes, no tail, and strong, webbed hind feet','op7','op7','text'),
(68,'Analyze the characteristics of frogs.','c','Analysis','op8','op8','protruding eyes, no tail, and strong, webbed hind feet','op8','text'),
(69,'Analyze the characteristics of frogs.','d','Analysis','op9','op9','op9','protruding eyes, no tail, and strong, webbed hind feet','text'),
(70,'Analyze the characteristics of frogs.','c','Analysis','op10','op10','protruding eyes, no tail, and strong, webbed hind feet','op10','text'),
(71,'machine learning is a','b','Knowledge','machine language','progRAMMING language','INTERPRETING LANGUAGE','ASSEMBLE LANGUAGE',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `scrore_board` */

insert  into `scrore_board`(`answerid`,`ulid`,`mark`,`level`,`date`,`status_level`) values 
(1,2,10,1,'2022-01-30','eligible'),
(2,2,8,2,'2022-01-30','eligible'),
(3,2,8,3,'2022-01-30','eligible'),
(4,2,10,4,'2022-01-30','eligible'),
(5,2,6,5,'2022-01-30','fail'),
(6,3,8,1,'2022-02-01','eligible'),
(7,3,-6,2,'2022-02-01','fail'),
(8,3,10,1,'2022-02-01','eligible'),
(9,3,8,2,'2022-02-01','eligible'),
(10,3,8,3,'2022-02-01','eligible'),
(11,3,10,4,'2022-02-01','eligible'),
(12,3,8,5,'2022-02-01','eligible'),
(13,3,6,6,'2022-02-01','fail'),
(14,2,8,1,'2022-02-24','eligible'),
(15,2,8,1,'2022-02-24','eligible'),
(16,2,8,2,'2022-02-24','eligible'),
(17,2,8,3,'2022-02-24','eligible'),
(18,2,10,4,'2022-02-24','eligible'),
(19,2,2,5,'2022-02-24','fail'),
(20,2,8,1,'2022-02-25','eligible'),
(21,2,8,1,'2022-02-25','eligible'),
(22,2,8,2,'2022-02-25','eligible'),
(23,2,8,3,'2022-02-25','eligible'),
(24,2,8,4,'2022-02-25','eligible'),
(25,2,8,5,'2022-02-25','eligible'),
(26,2,4,6,'2022-02-25','fail'),
(27,2,6,1,'2022-02-25','eligible'),
(28,2,8,2,'2022-02-25','eligible'),
(29,2,8,3,'2022-02-25','eligible'),
(30,2,0,4,'2022-02-25','fail'),
(31,4,10,1,'2022-04-13','eligible'),
(32,4,8,2,'2022-04-13','eligible'),
(33,4,0,3,'2022-04-13','fail'),
(34,4,6,1,'2022-04-30','eligible'),
(35,4,9,1,'2022-05-06','eligible'),
(36,4,6,2,'2022-05-06','eligible'),
(37,4,4,3,'2022-05-06','fail'),
(38,4,7,1,'2022-06-08','eligible'),
(39,4,6,2,'2022-06-08','eligible'),
(40,2,8,1,'2022-06-18','eligible'),
(41,2,6,2,'2022-06-18','eligible'),
(42,2,6,3,'2022-06-18','eligible'),
(43,2,2,4,'2022-06-18','fail');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`s_id`,`s_name`,`course_id`,`Semester`,`Adm_no`,`s_email`,`s_phone`,`s_dob`,`lid`) values 
(1,'Athulya',6,'3','1432','athulya12@gmail.com','9623456712','12-06-1999',2),
(2,'Devika',6,'3','1324','devika2000@gmail.com','8978677515','11-03-2000',3),
(3,'hari',6,'3','346','hari123@gmail.com','9076543455','12/05/1999',6),
(4,'manu',7,'4','3456','manu123@gmail.com','8954676234','15/12/1999',8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
