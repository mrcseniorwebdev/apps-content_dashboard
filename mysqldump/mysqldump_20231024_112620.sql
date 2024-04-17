-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: content_dashboard
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB-1:10.8.3+maria~jammy

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
-- Table structure for table `content_queue`
--

DROP TABLE IF EXISTS `content_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section` text NOT NULL,
  `nid` int(11) NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `author` text NOT NULL,
  `unix_time` int(11) NOT NULL,
  `severity` int(11) NOT NULL,
  `social_media` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7939 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_queue`
--

LOCK TABLES `content_queue` WRITE;
/*!40000 ALTER TABLE `content_queue` DISABLE KEYS */;
INSERT INTO `content_queue` VALUES
(7489,'nb',280905,'Late Night Loves Trump and Santos Jokes, But Not Biden and Menendez','https://newsbusters.org/node/280905','Alex Christy',1698328858,0,'',0),
(7790,'nb',281081,'MSNBC Rolls Out Red Carpet for Doctor-Poet to Rip Israel \'Apartheid,\' \'Genocide\'','https://newsbusters.org/node/281081','Brad Wilmouth',1697734073,0,'fnb|tnb',1),
(7826,'nb',281104,'California’s Green Dream: Coming to YOUR State!?','https://newsbusters.org/node/281104','John Stossel',1698093960,0,'',1),
(7827,'nb',281105,'What a Palestinian State Would Look Like','https://newsbusters.org/node/281105','Cal Thomas',1698082500,0,'fcns|fnb|tnb',1),
(7831,'business',281107,'Dem Billionaire Podcaster Pierces Legacy Media Veil, BLASTS ‘Trump Derangement Syndrome’','https://newsbusters.org/node/281107','Tom Olohan',1697731047,0,'ffsa|tfsa',1),
(7832,'tv',583392,'Dude Looks Like a Lady? Trans Fmr. Aussie Football Star Named to Maxim Australia \'Hot 100\'','https://mrctv.org/node/583392','Nick Kangadis',1697731194,0,'ftv|ttv',1),
(7833,'business',281108,'MEDIA FAIL: New Poll Shows Majority of Swing-State Voters Say Economy ‘Better Off’ Under Trump','https://newsbusters.org/node/281108','Joseph Vazquez',1697733787,0,'tmrc|fmrc|ffsa|tfsa|fnb|tnb',1),
(7835,'nb',281109,'Mitchell Fights With Reps Who Condemn Hamas\'s Media \'Baghdad Bobs\'','https://newsbusters.org/node/281109','Alex Christy',1697738263,0,'fnb|tnb|fcns',1),
(7836,'tv',583396,'NYC Police Searching For Man Who Randomly Punched a Jewish Woman On the Subway ','https://mrctv.org/node/583396','Brittany M. Hughes',1697740166,0,'ttv|ftv|tmrc|fmrc|fcns|tcns',1),
(7837,'cns',583397,'Wisc. Assembly Speaker Makes Good on Threat to Withhold Raises after University of Wisconsin Retains 188 DEI Positions','https://mrctv.org/node/583397','Evan Poellinger',1697739458,0,'ftv|ttv|fnb|fcns|tcns',1),
(7838,'tv',583398,'Watch: This Official Explains A Lot About The Gov’t Loan Process Under Biden','https://mrctv.org/node/583398','Eric Scheiner',1697739809,0,'ftv|ttv',1),
(7839,'tv',583400,'Here We Go Again! Cher Says She\'ll Leave U.S. if Trump Wins in 2024','https://mrctv.org/node/583400','Nick Kangadis',1697741699,0,'ftv|ttv|tmrc|fmrc',1),
(7840,'nb',281111,'Israeli Official Tells Off CNN, Anti-Semites on College Campuses/Congress','https://newsbusters.org/node/281111','Nicholas Fondacaro',1697742468,0,'fmrc|tmrc|fnb|tnb',1),
(7841,'tv',583401,'Texas Cop Shot To Death Chasing Mexican Citizen Along the U.S. Border','https://mrctv.org/node/583401','Brittany M. Hughes',1697742485,0,'ftv|ttv|fcns|tcns',1),
(7842,'cns',583402,'‘Repeating Hamas’ Lies Can - and Does - Cost Lives in Gaza, Israel and Around the World,’ IDF Warns','https://mrctv.org/node/583402','Craig Bannister',1697743379,2,'fcns|tcns|tmrc|fmrc',1),
(7843,'free speech',281112,'Enough! 19 GOP AGs Issue Scorching Warning to Anti-Free Speech Eventbrite','https://newsbusters.org/node/281112','Luis Cornelio',1697742742,0,'ffsa|tfsa',1),
(7844,'nb',281113,'Nets Tiptoe Away from Taking Hamas Lies About Hospital Fire, But Dial Up Sob Stories','https://newsbusters.org/node/281113','Curtis Houck',1697745810,0,'tmrc|fmrc|fnb|tnb',1),
(7845,'free speech',281114,'‘Crazy!’: Elon Musk Says Leftist Media Ratings Firm ‘Should Be Disbanded Immediately’','https://newsbusters.org/node/281114','Joseph Vazquez',1697746597,0,'ffsa|tfsa|fnb|tnb|fcns|fmrc|tmrc',1),
(7846,'nb',281115,'FLASHBACK: Media Hit GOP Over Anti-Hillary Benghazi ‘Witch Hunt’','https://newsbusters.org/node/281115','Rich Noyes',1697892840,0,'fnb|tnb|tcns|fcns',1),
(7847,'nb',281116,'Gallup: Confidence in Mass Media Matches 2016 Record Low','https://newsbusters.org/node/281116','Tim Graham',1697749806,0,'fnb|tnb|fcns',1),
(7849,'free speech',281117,'‘Free Speech Champions’ Blast Weaponized Global Censorship in ‘Westminster Declaration’','https://newsbusters.org/node/281117','Catherine Salgado',1697750066,0,'tfsa|ffsa',1),
(7850,'nb',281118,'PBS Won’t Trust Israel on Hospital Bombing Because It’s ‘Carried Out Strikes’ Before','https://newsbusters.org/node/281118','Clay Waters',1697840899,0,'fnb|tnb',1),
(7851,'nb',281119,'NBC Whines About Backlash to Leftist Students Demanding Jewish Genocide','https://newsbusters.org/node/281119','Nicholas Fondacaro',1697761248,0,'fnb|tnb|fcns|tcns|tmrc|fmrc',1),
(7852,'nb',281120,'Column: \'Reliable\' Media Aren\'t Ashamed of Fake News on Gaza Hospital Blast','https://newsbusters.org/node/281120','Tim Graham',1697796489,0,'fnb|tnb|ftv|fmrc|fcns',1),
(7853,'nb',281121,'Nicolle Wallace Goes Low: Why Do Some Republicans Hate Jim Jordan Like I Do?','https://newsbusters.org/node/281121','Mark Finkelstein',1697809909,1,'fnb|tnb|fcns',1),
(7854,'free speech',281122,'Twitter Files Journalist: EU Bureaucrats Are ‘Enemies of Free Speech’','https://newsbusters.org/node/281122','Autumn Johnson',1697806249,1,'fnb|tnb|fcns|ffsa|tfsa',1),
(7855,'nb',281123,'Kimmel Compares Trump, Cruz to STDs, Speculates About Cruz\'s Sex Life','https://newsbusters.org/node/281123','Alex Christy',1697810400,0,'fnb|tnb|fcns|tmrc|fmrc',1),
(7857,'cns',583418,'Sen. Lee, Bozell Issue ‘Free Speech Week’ Warning: Big Tech’s Big Talk Masks Commitment to Censorship','https://mrctv.org/node/583418','Craig Bannister',1697812016,2,'fcns|tcns|tnb|fnb|tmrc|fmrc|tfsa|ffsa|ftv|ttv',1),
(7858,'tv',583419,'Biden State Dept: We Have \'An Understanding\' With Hamas That They Can\'t Use Our Aid Money','https://mrctv.org/node/583419','Brittany M. Hughes',1697812906,0,'ftv|ttv',1),
(7859,'nb',281124,'CNN And MSNBC Absurdly Compare Israel to Russia','https://newsbusters.org/node/281124','Alex Christy',1697813929,0,'fnb|tnb|fcns',1),
(7860,'tv',583421,'Greta Thunberg Posts Pro-Palestine Message With Nazi-Era AntiSemitic Images','https://mrctv.org/node/583421','Brittany M. Hughes',1697814165,0,'fmrc|tmrc|ftv|ttv',1),
(7861,'tv',583422,'The Truth Behind Why Young Americans Are Ditching the ‘American Dream’','https://mrctv.org/node/583422','Brittany M. Hughes',1697811192,0,'ftv|ttv|ffsa|tfsa',1),
(7862,'business',281125,'WATCH: MRC VP Dan Schneider Blasts George Soros’ ‘Evil’ Pro-Hamas ‘Empire’','https://newsbusters.org/node/281125','Tom Olohan',1697816395,0,'',1),
(7863,'tv',583423,'Report: Aggregated Inflation Rate Up Nearly 24% Since Biden Took Office','https://mrctv.org/node/583423','Nick Kangadis',1697817457,0,'ftv|ttv',1),
(7864,'nb',281126,'ABC, NBC Peddle Latest Fake News from Hamas, Claims Israel Bombed Church','https://newsbusters.org/node/281126','Curtis Houck',1697819640,0,'fnb|tnb',1),
(7865,'nb',281127,'Stelter: Lack of \'Common Sense\' Led to \'Atrocious\' Gaza Hospital Reporting','https://newsbusters.org/node/281127','Nicholas Fondacaro',1697823293,0,'fnb|tnb|fcns|tcns',1),
(7866,'tv',583427,'Fake News Unverified: X/Twitter Takes Away Gold Verified Source Badge from NYT','https://mrctv.org/node/583427','Nick Kangadis',1697823419,0,'',1),
(7867,'tv',583428,'RFK Jr. on Reparations: \'We Must Set Federal Dollars Aside to Rebuild Black Infrastructure\'','https://mrctv.org/node/583428','Nick Kangadis',1697825772,0,'ftv|ttv',1),
(7868,'tv',583429,'Media Trust Hamas – But Claim Trump Would Execute Them | Wacky MOLE','https://mrctv.org/node/583429','Eric Scheiner',1697826059,0,'',0),
(7869,'tv',583431,'Media Trust Hamas – But Claim Trump Would Execute Them | Wacky MOLE','https://mrctv.org/node/583431','Eric Scheiner',1697826059,0,'',1),
(7870,'nb',281128,'After Hospital Explosion, Mitchell Lamely Labels The Squad \'Very Outspoken\'','https://newsbusters.org/node/281128','Alex Christy',1697827507,0,'fnb|tnb',1),
(7871,'tv',583434,'Americans’ Assessment of the Media ‘the Grimmest in Gallup’s History’','https://mrctv.org/node/583434','Craig Bannister',1697827027,1,'ftv|ttv',1),
(7872,'free speech',281129,'J.K. Rowling Would ‘Happily Do Two Years’ in Prison than Deny ‘Reality’ of Biological Sex','https://newsbusters.org/node/281129','Catherine Salgado',1697828464,0,'ffsa|tfsa|fmrc|tmrc',1),
(7873,'free speech',281130,'NAUGHTY: Greedy AG Letitia James Eyes Censorship Cake Despite Court Order','https://newsbusters.org/node/281130','Luis Cornelio',1697828449,2,'',0),
(7874,'nb',281131,'Roy Wood Jr. Compares ‘Daily Show’ Gig to Being a Marine','https://newsbusters.org/node/281131','Christian Toto',1697909400,0,'fnb|tnb|fcns',1),
(7875,'nb',281132,'The Media and The Hostages: In 1979 and Today','https://newsbusters.org/node/281132','Jeffrey Lord',1697918400,0,'fnb|tnb|fcns|tcns',1),
(7876,'tv',583435,'Hamas-hole: Protester in D.C. Says \'Israel is an Outpost for White Supremacy,\' U.S. is \'Apartheid\' State','https://mrctv.org/node/583435','Nick Kangadis',1697829144,0,'ftv|ttv',1),
(7877,'cns',583436,'Houston Hilton Cancels Conference on Palestine Featuring Rep. Rashida Tlaib','https://mrctv.org/node/583436','Evan Poellinger',1697829980,2,'fcns|tcns',1),
(7878,'tv',583437,'House Oversight Questions Massive 2018 Check Biden Got From His Brother','https://mrctv.org/node/583437','Brittany M. Hughes',1697831608,0,'ftv|ttv|fcns|tcns',1),
(7879,'tv',583444,'Watch: Officer Breaks Down In Tears After Helping To Save Jumper','https://mrctv.org/node/583444','Eric Scheiner',1697832629,0,'tmrc|fmrc',1),
(7880,'free speech',281133,'Regurgitate Hamas Agitprop on Hospital Bombing? NewsGuard Still Gives Leftist Outlets Perfect Scores','https://newsbusters.org/node/281133','Joseph Vazquez',1697832521,0,'ffsa|tfsa|fmrc|fcns|tcns',1),
(7881,'culture',281134,'Mother Tells Son She Wishes She\'d Had the \'Choice\' to Abort Him on Apple\'s \'The Morning Show\'','https://newsbusters.org/node/281134','Dawn Slusher',1697832911,0,'',1),
(7882,'cns',583434,'Americans’ Assessment of the Media ‘the Grimmest in Gallup’s History’','https://mrctv.org/node/583434','Craig Bannister',1697827027,1,'tmrc|fmrc|fcns|tcns|fnb|tnb',1),
(7883,'nb',281135,'NewsBusters Podcast: Biden\'s \'Blind Rage After 9/11\' Talk vs. Media Reality','https://newsbusters.org/node/281135','Tim Graham',1697856048,0,'tnb|fnb|fcns|ftv|ttv|tmrc|fmrc',1),
(7885,'tv',583445,'Mother Tells Son She Wishes She\'d Had the \'Choice\' to Abort Him on Apple TV+\'s \'The Morning Show\'','https://mrctv.org/node/583445','Dawn Slusher',1697836421,0,'ttv|ftv|fcns|tcns',1),
(7886,'nb',281136,'After Crying ‘No Evidence,’ ABC/CBS/NBC Ignore Direct Payment to Biden','https://newsbusters.org/node/281136','Nicholas Fondacaro',1697846516,0,'fnb|tnb|fcns',1),
(7887,'nb',281137,'PolitiFact Whacks Americans for Prosperity as \'Mostly False\' for True Claim on Tax Hike','https://newsbusters.org/node/281137','Tim Graham',1697885498,0,'fnb|tnb',1),
(7888,'nb',281138,'CBS Promotes Both-Sideism On Israel\'s Creation','https://newsbusters.org/node/281138','Alex Christy',1697897878,0,'fnb|tnb',1),
(7889,'nb',281139,'Hitler-Praising, Hamas-Loving Videographer Rehired by New York Times for Gaza War','https://newsbusters.org/node/281139','Clay Waters',1697931451,0,'fnb|tnb',1),
(7890,'nb',281140,'PBS Celebrates Jordan Failing To Become Speaker','https://newsbusters.org/node/281140','Alex Christy',1697903396,0,'fnb|tnb|fcns',1),
(7891,'nb',281141,'Maher Blasts New York Times\'s \'Terrible\' Gaza Hospital Headline','https://newsbusters.org/node/281141','Alex Christy',1697910660,0,'fnb|tnb|fcns|tcns',1),
(7892,'nb',281142,'During Gaza Hostage Crisis, MSNBC Host Says \'Americans Are Being Held Hostage By GOP\'','https://newsbusters.org/node/281142','Mark Finkelstein',1697935818,1,'tnb|fnb|fcns|tcns',1),
(7893,'nb',281143,'Forget Hamas! Sharpton Asks Maddow to Explain How Trumpism Looks Like Fascism','https://newsbusters.org/node/281143','Tim Graham',1697943073,0,'fnb|tnb',1),
(7894,'nb',281144,'Sad: NYT Pundit Paul Krugman Still Looking for the Killer App That Will Take Down X/Twitter','https://newsbusters.org/node/281144','Clay Waters',1697994126,0,'fnb|tnb',1),
(7895,'nb',281145,'No Fact Checking: NBC, People Magazine Stick to the Legend on Matthew Shepard','https://newsbusters.org/node/281145','Tim Graham',1697999075,0,'fcns|tcns|tnb|fnb',1),
(7896,'tv',583454,'JK Rowling Says She\'s Willing To Go to Prison For Upholding Gender Reality','https://mrctv.org/node/583454','P. Gardner Goldsmith',1698005931,0,'ftv|ttv',1),
(7897,'tv',583455,'Biden\'s New Insult to Constitutional Rights: The \'Office Of Gun Violence Prevention\'','https://mrctv.org/node/583455','P. Gardner Goldsmith',1698011251,0,'ftv|ttv',1),
(7898,'nb',281146,'Fox News Highlights Rashida Tlaib Still Pushing Lie Israel Bombed Hospital','https://newsbusters.org/node/281146','Brad Wilmouth',1698021681,0,'fmrc|tmrc|fnb|tnb',1),
(7899,'nb',281147,'Jon Karl FREAKS OUT at Tim Scott Saying Biden Has \'Blood on His Hands\' by Coddling Iran','https://newsbusters.org/node/281147','Tim Graham',1698029906,0,'fnb|tnb|tmrc|fmrc',1),
(7900,'tv',583456,'SCOTUS Will Hear Missouri\'s Social Media Censorship Case Against Biden ','https://mrctv.org/node/583456','P. Gardner Goldsmith',1698032586,0,'',1),
(7901,'nb',281148,'\'Facts First\' My Foot: CNN MANGLES Map of Israel on Jake Tapper\'s Show','https://newsbusters.org/node/281148','Tim Graham',1698061642,0,'fnb|tnb|fcns|tcns',1),
(7902,'nb',281149,'Joe Scarborough Claims 98% Of Congressional Republicans \'Hate\' Trump','https://newsbusters.org/node/281149','Mark Finkelstein',1698072100,1,'fnb|tnb',1),
(7903,'tv',583458,'NY Mag Writer Splits Hairs Between \'Beheaded\' Babies and Babies That \'Were Found Headless\'','https://mrctv.org/node/583458','Brittany M. Hughes',1698072505,0,'tmrc|fmrc|ftv|ttv',1),
(7904,'culture',281150,'Colorado Judge Blocks Ban on Abortion Pill Reversal Drug','https://newsbusters.org/node/281150','Tierin-Rose Mandelburg',1698073894,0,'',1),
(7905,'tv',583459,'Colorado Judge Blocks Ban on Abortion Pill Reversal Drug','https://mrctv.org/node/583459','Tierin-Rose Mandelburg',1698074397,0,'ftv|ttv|fmrc',1),
(7906,'free speech',281151,'Justice Samuel Alito Lambasts SCOTUS Decision to Block Big Tech-Gov’t Censorship Injunction','https://newsbusters.org/node/281151','Autumn Johnson',1698074711,2,'ffsa|tfsa|tmrc|fmrc|fcns',1),
(7908,'nb',281152,'CBS’s ‘Face the Nation’ Circles the Wagons Around Hamas Terrorists Against Israel','https://newsbusters.org/node/281152','Curtis Houck',1698079860,0,'fnb|tnb|fmrc',1),
(7909,'tv',583463,'Protesters Fly Hamas Flag Through Pro-Palestine Rally In Minneapolis','https://mrctv.org/node/583463','Brittany M. Hughes',1698081042,0,'fcns|tcns|tmrc|fmrc|ftv|ttv',1),
(7910,'nb',281153,'MSNBC\'s Mehdi Hasan to Ocasio-Cortez: Israel Commits \'War Crimes,\' Opposing Ceasefire Is Racist','https://newsbusters.org/node/281153','Bill D\'Agostino',1698083325,0,'tmrc|fmrc',1),
(7911,'nb',281154,'NY Mag ‘Intelligencer’: Babies Without Heads May Not Have Been Beheaded','https://newsbusters.org/node/281154','Nicholas Fondacaro',1698085219,0,'fnb|tnb|fcns|fmrc|tmrc',1),
(7912,'culture',281155,'Detransitioner Who Struggled With Multiple Personalities, Sues Doctors Who Ruined Her Life','https://newsbusters.org/node/281155','Tierin-Rose Mandelburg',1698089151,0,'',1),
(7913,'tv',583465,'Detransitioner Who Struggled With Multiple Personalities Sues Doctors Who Ruined Her Life','https://mrctv.org/node/583465','Tierin-Rose Mandelburg',1698089197,0,'ftv|ttv',1),
(7914,'business',281156,'#HEADDESK: No, Matthew Yglesias, ‘Biden’s Economy’ Is NOT ‘Great Everywhere’','https://newsbusters.org/node/281156','Joseph Vazquez',1698089139,0,'fcns',1),
(7915,'nb',281157,'NewsBusters Podcast: Why Would Soros Fund Anti-Semites Who Love Hamas? ','https://newsbusters.org/node/281157','Tim Graham',1698109812,0,'',1),
(7916,'cns',583466,'ESG’s Reign of Tyranny Wanes, as More People Learn What It Is and Investors Return to Prioritizing Profit','https://mrctv.org/node/583466','Craig Bannister',1698090375,1,'tcns|fcns|tmrc|fmrc',1),
(7917,'tv',583469,'Biden’s Inflation Nation: Auto Loan Defaults Hit New High','https://mrctv.org/node/583469','Eric Scheiner',1698092204,0,'ftv|ttv',1),
(7918,'free speech',281158,'Rand Paul Says No Increased Powers for Anti-Free Speech CISA','https://newsbusters.org/node/281158','Catherine Salgado',1698092766,0,'ffsa|tfsa',1),
(7919,'nb',281159,'MSNBC Host TRIGGERED When Confronted for Using FAKE Casualty Numbers','https://newsbusters.org/node/281159','Nicholas Fondacaro',1698093010,0,'fmrc|tmrc',1),
(7920,'free speech',281160,'WATCH: Ami Kozak Says Leftist Supporters of Hamas Are ‘Apologists for Atrocity and Barbarism’','https://newsbusters.org/node/281160','Gabriela Pariseau',1698092405,0,'',1),
(7921,'free speech',281161,'Oopsie! AG James Backtracks Anti-Free Speech Letter After Rumble Attorneys Respond','https://newsbusters.org/node/281161','Luis Cornelio',1698093164,2,'ffsa|tfsa',1),
(7922,'nb',281162,'NY Times Takes Sides in Aussie Indigenous Vote: \'Divisive\' Since Woke Side Lost','https://newsbusters.org/node/281162','Clay Waters',1698109203,0,'',1),
(7923,'nb',281163,'Sob Stories and...Vinegar? ABC, CBS Start Yet Another Week Shacking Up With Hamas','https://newsbusters.org/node/281163','Curtis Houck',1698096060,0,'tmrc|fmrc',1),
(7924,'nb',276694,'Washington Examiner’s ‘Liberal Media Scream’ With the MRC’s Assessment','https://newsbusters.org/node/276694','Brent Baker',1698102666,0,'',1),
(7925,'nb',281164,'NPR Reporter on PBS: Most House Republicans Want to \'Burn It All Down\'','https://newsbusters.org/node/281164','Tim Graham',1698144196,0,'ftv|ttv|ffsa',1),
(7926,'tv',583472,'Fumbling White House Spox Seems Confused By the Definition of \'AntiSemitism\'','https://mrctv.org/node/583472','Brittany M. Hughes',1698144743,0,'tmrc|fmrc|ftv|ttv',1),
(7927,'tv',583473,'Disney CEO Reportedly \'Exhausted\' By Customer Decline & Box Office Bombs','https://mrctv.org/node/583473','Brittany M. Hughes',1698146249,0,'ftv|ttv',1),
(7928,'tv',583475,'Sticky Situation: Arizona Coyotes Defenseman Defies NHL Ban On Pride Tape','https://mrctv.org/node/583475','John Simmons',1698153845,0,'',0),
(7929,'culture',281165,'Sticky Situation: Arizona Coyotes Defenseman Defies NHL Ban On Pride Tape','https://newsbusters.org/node/281165','John Simmons',1698153982,0,'',0),
(7930,'tv',583477,'Why Are The Only Borders That Don\'t Matter Our Own?','https://mrctv.org/node/583477','mrctvstaff',1698153728,0,'ttv|ftv',1),
(7931,'cns',583478,'Biden Tries to Refill Strategic Oil Reserve at a Premium After Draining it to Historic Lows and Handicapping Domestic Drilling','https://mrctv.org/node/583478','Evan Poellinger',1698154982,1,'tmrc|fmrc',1),
(7933,'free speech',281166,'Did Apple Sacrifice Jon Stewart to Appease Communist Chinese Government?','https://newsbusters.org/node/281166','Tom Olohan',1698156208,0,'',1),
(7934,'tv',583479,' ‘Shut Up You Idiot!’ Levin Tells Biden, after President Equates Israel with Palestine','https://mrctv.org/node/583479','Craig Bannister',1698156226,2,'fcns|tcns|ftv|ttv',1),
(7935,'nb',281167,'Daily Show Refuses To Press AOC on Accusing Israel of War Crimes','https://newsbusters.org/node/281167','Alex Christy',1698156600,0,'',1),
(7936,'cns',583479,' ‘Shut Up You Idiot!’ Levin Scolds Biden, after President Equates Israel with Palestine','https://mrctv.org/node/583479','Craig Bannister',1698156226,2,'',1),
(7937,'nb',281168,'Fox’s Trimble, RCP’s Wegmann Grill Kirby, KJP on Rampant Anti-Semitism in Universities','https://newsbusters.org/node/281168','Curtis Houck',1698157140,0,'tmrc|fmrc',1),
(7938,'cns',583481,'IDF Offers Financial Reward, Promises Palestinians Security in Exchange for Info About Hamas’ Hostages','https://mrctv.org/node/583481','Craig Bannister',1698159361,2,'',1);
/*!40000 ALTER TABLE `content_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_assignments`
--

DROP TABLE IF EXISTS `role_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_assignments` (
  `raid` int(11) NOT NULL AUTO_INCREMENT,
  `rid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`raid`),
  KEY `rid` (`rid`),
  KEY `uid` (`uid`),
  CONSTRAINT `role_assignments_ibfk_1` FOREIGN KEY (`rid`) REFERENCES `roles` (`rid`),
  CONSTRAINT `role_assignments_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_assignments`
--

LOCK TABLES `role_assignments` WRITE;
/*!40000 ALTER TABLE `role_assignments` DISABLE KEYS */;
INSERT INTO `role_assignments` VALUES
(1,3,1),
(2,2,17),
(3,2,22),
(4,2,25),
(5,2,26),
(6,3,27),
(7,3,20),
(8,2,28),
(9,2,29),
(10,2,30),
(11,1,32),
(12,1,33),
(13,1,34),
(14,1,35),
(15,1,36),
(16,1,37),
(17,1,38),
(18,1,39),
(19,1,40),
(20,1,41),
(21,1,42),
(22,1,43),
(23,1,44),
(24,1,45),
(25,1,46),
(26,1,47),
(27,1,48),
(28,1,49),
(29,1,50),
(30,1,51),
(31,2,51);
/*!40000 ALTER TABLE `role_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `role_label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES
(1,'regular'),
(2,'marketing'),
(3,'admin');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'111001625214665764471','jjones@mrc.org','Josh Jones','https://lh3.googleusercontent.com/a/AEdFTp5N0OcnweucQ_ECWw2wU46gXay7DBcFCPF7Rcsr=s96-c'),
(17,'103798402277113144724','mmarzzacco@mrc.org','Megan Marzzacco','https://lh3.googleusercontent.com/a/AGNmyxYVx34uogR-G-MosEOpBbjmSRWk-Ckbh98rbCFD=s96-c'),
(20,'108732723522592395746','epairel@mrc.org','Eric Pairel','https://lh3.googleusercontent.com/a/AEdFTp5FcbYf4b90mgwpZfQVkc_AFWU3bbUqVHGPa9KTbA=s96-c'),
(22,'116620293630134321436','areeder@mrc.org','Austin Reeder','https://lh3.googleusercontent.com/a/AEdFTp7SZ8Oy4spUuLomUoSAk2AxEvKsnU0rSZmRgFwr=s96-c'),
(24,'102653110724678086583','jgould@mrc.org','Josh Gould','https://lh3.googleusercontent.com/a/AGNmyxaoXM_il6a6YjIuM16WOdQ0nWwjLuRynunmfeG6=s96-c'),
(25,NULL,'imiller@mrc.org',NULL,NULL),
(26,'107848558787361285141','emolchany@mrc.org','Ed Molchany','https://lh3.googleusercontent.com/a/AGNmyxYlv5DaXAskDfFnjphMCi4V7sCNWfLlNveoLNXI5C0=s96-c'),
(27,'110725676844075988752','mgeis@mrc.org','Mac Geis','https://lh3.googleusercontent.com/a/AGNmyxZht5WbsUV1SRQG2np5oKJ7jGOWboh3Cm8Nask=s96-c'),
(28,'104309102968720216419','ghudson@mrc.org','Giulianna Hudson','https://lh3.googleusercontent.com/a/AAcHTtcs_hsiiN8EOAWt2ziNPF0Ggm9CoZL1Rc_IRKht=s96-c'),
(29,'118013188692166111635','emontague@mrc.org','Emma Montague','https://lh3.googleusercontent.com/a/AGNmyxbIbqdVp-hH1s2EdqkGKsSlwB5wYK_wHcRAJj0=s96-c'),
(30,'104047346072063229874','jryan@mrc.org','Jenny Ryan','https://lh3.googleusercontent.com/a/AAcHTtdSbHt1Rw-qcGfIdmoSeah7fYnoMra_tSgcNGes=s96-c'),
(32,'100142590426991775843','mleach@mrc.org','Marilyn Leach','https://lh3.googleusercontent.com/a/AAcHTtfhDbcJ3VrgwhFyWHnblbgwoiMcPXhIUzkodICdhIfP=s96-c'),
(33,'116578241298121151431','pbampfield@mrc.org','Patrick Bampfield','https://lh3.googleusercontent.com/a/AAcHTtc1m3pAkLzhFUh8pjmk_iYSxv4cU8lwq0sP6yTBV_Ygnw=s96-c'),
(34,'109455844977652357360','achristy@mrc.org','Alex Christy','https://lh3.googleusercontent.com/a/AAcHTtfG3ETsv1B6mg2lTHIpnGgIAzDMA56C1yH1uCTeRxad=s96-c'),
(35,'107671517411461342086','gdickens@mrc.org','Geoff Dickens','https://lh3.googleusercontent.com/a/AAcHTtcP1HiVVlztk8pTX-02SJ5cjPnlaK4Pbi_0UxCNzB_6=s96-c'),
(36,'101197932750983379162','jvazquez@mrc.org','Joseph Vazquez','https://lh3.googleusercontent.com/a/AAcHTtdftCAla1ohctQU0qjYaUfFEO6BlfEnvTbilTRQRLf8oG8=s96-c'),
(37,'104276687315208893304','mmorris@mrc.org','Michael Morris','https://lh3.googleusercontent.com/a/AAcHTtfmp10TY159E7yP_Ic1WtAfW9qGAjk-KDfDKmuNQAaqoA=s96-c'),
(38,'101760015224544246605','webdev@mrc.org','Senior Web-Developer','https://lh3.googleusercontent.com/a/AAcHTtcHdVH2JqCuMvnEUGE9MSEedFersnMN68Yma0hmNlDo=s96-c'),
(39,'112760136567791334073','lcornelio@mrc.org','Luis Cornelio','https://lh3.googleusercontent.com/a/AAcHTtefTNgMZkHqXy036g8y_WqTQPjpE_hJlg-1Mk9X2ILkkQ=s96-c'),
(40,'112162788756300882192','dbozell@mrc.org','David Bozell','https://lh3.googleusercontent.com/a/AAcHTtcZu_Js7THaxYeq_OPDfpJkYK4PelDHK78X8eWYDxbh=s96-c'),
(41,'103434780432262776543','efroman@mrc.org','Emily Froman','https://lh3.googleusercontent.com/a/AAcHTtek1ATm66tPoWUL7Ijsc6TyRUE8uw-PU2gQH0gvB7om=s96-c'),
(42,'115029137962047968462','tkilcullen@mrc.org','Tim Kilcullen','https://lh3.googleusercontent.com/a/AAcHTteI3GuUdbVkj89ks0UzEZXhWnpNGNdLi4CBcepf_lCcE4M=s96-c'),
(43,'100622316996373355824','bmcnicoll@mrc.org','Brian mcnicoll','https://lh3.googleusercontent.com/a/AAcHTtdBkAh6J8cAO2lD14wpZ25TBYsJwd5V8yfizaQEQLFJ-g=s96-c'),
(44,'113138812655105785198','nfondacaro@mrc.org','Nicholas Fondacaro','https://lh3.googleusercontent.com/a/AAcHTtdkY0o_a_voV6MHIG8Pcqa0XO3fpdu0Iz9MUWzVxUHTdug=s96-c'),
(45,'118366685028246860724','ktober@mrc.org','Kevin Tober','https://lh3.googleusercontent.com/a/AAcHTtcp4p0qdyMqniTI8vhxQejIJiJlbOFWiGVhR04FxcRy-dI=s96-c'),
(46,'107317889750373953759','mlee@mrc.org','Meghan Lee','https://lh3.googleusercontent.com/a/AAcHTtd9sr_G7PVceYXCVcaMnCxpcBOVIzSffEcXj83JMVRwZfg=s96-c'),
(47,'105875040114747238954','cmichener@mrc.org','Cheryl Michener','https://lh3.googleusercontent.com/a/AAcHTtfPfiLlk8eotoOIzI0eoIDou2a3WR8B0NbCVzMiyxiG=s96-c'),
(48,'108187200656105743925','amiconi@mrc.org','Alyssa Miconi','https://lh3.googleusercontent.com/a/AAcHTtflsADF5AZqPxPoxSnL6gfPfpumrSxvxJdS4MVf9MXL=s96-c'),
(49,'106653349382238216450','mgladson@mrc.org','Milani Gladson','https://lh3.googleusercontent.com/a/AAcHTtcIqf7pliTqMShLpioz1gAqFkJzduTodpKy9NHjJIXB=s96-c'),
(50,'104000854282992781882','dsmith@mrc.org','Donta Smith','https://lh3.googleusercontent.com/a/AAcHTtcyJavCruczxbm2mr9BjU3vQhajexOjNxs0lq4Hv0NJ3w=s96-c'),
(51,'117389927441416061156','cwalsh@mrc.org','Cameron Walsh','https://lh3.googleusercontent.com/a/ACg8ocLuL__VUDunJfH_EJQuBT2X2oJvmpOSWOd-U3lHHOPO=s96-c');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 15:26:20
