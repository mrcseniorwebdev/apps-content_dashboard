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
) ENGINE=InnoDB AUTO_INCREMENT=7842 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_queue`
--

LOCK TABLES `content_queue` WRITE;
/*!40000 ALTER TABLE `content_queue` DISABLE KEYS */;
INSERT INTO `content_queue` VALUES
(7489,'nb',280905,'Late Night Loves Trump and Santos Jokes, But Not Biden and Menendez','https://newsbusters.org/node/280905','Alex Christy',1697464858,0,'',0),
(7702,'nb',281031,'Scarborough Puts Plagiarist Mike Barnicle Among \'Greatest Columnists of 20th Century\'','https://newsbusters.org/node/281031','Mark Finkelstein',1697323119,0,'fcns|fnb|tnb',1),
(7708,'nb',281034,'Media Ignores Tlaib\'s Two Contradictory Flags - Palestine and LGBTQ','https://newsbusters.org/node/281034','Jeffrey Lord',1697313635,0,'fnb|tnb',1),
(7716,'nb',281042,'PBS’s Frontline Laments Musk\'s Twitter Takeover, But Exposes Ridiculous Yoel Roth','https://newsbusters.org/node/281042','Clay Waters',1697372763,0,'fnb|tnb|tcns|fcns',1),
(7717,'nb',281043,'WashPost Hates Cancel Culture When It\'s Applied to Leftist Anti-Semites','https://newsbusters.org/node/281043','Tim Graham',1697339678,0,'fnb|tnb|fcns|tcns',1),
(7718,'nb',281044,'Networks Ignore BIG GOP Gubernatorial Win in Louisiana ','https://newsbusters.org/node/281044','Kevin Tober',1697375493,0,'fnb|tnb|fcns|fmrc|tmrc',1),
(7719,'nb',281045,'CNN\'s Tapper Despicably Compares Israel\'s Defense to Russian War Crimes','https://newsbusters.org/node/281045','Kevin Tober',1697378907,0,'fnb|fcns|ftv|ttv|ffsa|fmrc',1),
(7720,'nb',281046,'INDICTMENT?! CBS Stunned Biden & Trump Should Be Treated Equal','https://newsbusters.org/node/281046','Kevin Tober',1697392513,0,'tmrc|fmrc|fnb|tnb|fcns|tcns|ftv|ttv',1),
(7721,'tv',583308,'Twitter/X Finally Flags Celeb \'Economist\' Paul Krugman For Lies on Bidenflation','https://mrctv.org/node/583308','P. Gardner Goldsmith',1697448732,0,'ftv|ttv|tmrc|fmrc',1),
(7722,'nb',281047,'AP Softens Own Poll: 68% of Americans Think Biden Did Something Illegal or Unethical ','https://newsbusters.org/node/281047','Tim Graham',1697403732,0,'fnb|tnb|fcns',1),
(7723,'nb',281048,'PBS Broadcasts Phony, Offensive ‘Both-Sides’ Narrative in Special Report from Israel','https://newsbusters.org/node/281048','Clay Waters',1697424296,0,'fcns|tcns|fnb|tnb',1),
(7724,'tv',583316,'Biden To Pay Americans To Plug Up Oil Wells','https://mrctv.org/node/583316','P. Gardner Goldsmith',1697449243,0,'ttv|ftv',1),
(7725,'tv',583317,'\'DeSantis Airlines\' Brings 300 Americans Home From Israel','https://mrctv.org/node/583317','Brittany M. Hughes',1697453901,0,'fcns|tcns|fnb|fmrc|tmrc|ftv|ttv',1),
(7726,'tv',583318,'Illegal Alien Charged - and Released - After Shoving Border Agent Into Razor Wire','https://mrctv.org/node/583318','Brittany M. Hughes',1697451239,0,'ftv|ttv|fmrc|tmrc',1),
(7727,'tv',583319,'Biden Readies Pool Pump Mandate That Will Cost Industry BILLIONS','https://mrctv.org/node/583319','P. Gardner Goldsmith',1697537136,0,'ttv|ftv',1),
(7728,'nb',281049,'\'60 Minutes\' Escorts Fumbling Biden, Slams Danger of \'Hard-Right Republicans\'','https://newsbusters.org/node/281049','Tim Graham',1697452813,0,'ftv|ttv|ffsa|tfsa|tmrc|fmrc|tnb|fnb',1),
(7730,'cns',583322,'Ironic: Biden Says Republicans Don\'t Look at Democracy ‘The Same Way You and I Look at Democracy\'','https://mrctv.org/node/583322','Craig Bannister',1697469752,2,'tcns|fcns|tmrc|fmrc|ftv|ttv',1),
(7732,'nb',281050,'CBS  \'60 Minutes\' Hit Piece Claims DeSantis Is the Criminal, Not the Illegal Immigrants','https://newsbusters.org/node/281050','Tim Graham',1697474376,0,'fnb|tnb',1),
(7740,'nb',281051,'CNN\'s Mattingly: House Republicans \'Literally\' Pouring Gasoline, Setting Themselves On Fire! ','https://newsbusters.org/node/281051','Mark Finkelstein',1697489481,0,'',0),
(7741,'nb',281052,'Whoopi: Pope Francis Is a ‘Progressive’ Because ‘He’s a Human Being’','https://newsbusters.org/node/281052','Nicholas Fondacaro',1697477494,0,'fnb|tnb',1),
(7742,'business',281053,'BUYING AN ELECTION? NYT Hypes Soros-Tied Eco-Extremist Group Spending $80M to Help Biden in 2024','https://newsbusters.org/node/281053','Joseph Vazquez',1697478332,0,'ffsa|tfsa',1),
(7743,'nb',281054,'Nets Crank Up the Hamas Propaganda, Tout ‘Ice Cream Truck...Morgue,’ Gaza Orphanage','https://newsbusters.org/node/281054','Curtis Houck',1697482980,0,'tmrc|fmrc|fcns|tcns|fnb|tnb',1),
(7744,'tv',583327,'For Wheel? Biological Men Take Gold & Silver At Women’s Cycle Race','https://mrctv.org/node/583327','Eric Scheiner',1697482946,0,'ftv|ttv|fmrc|tmrc',1),
(7745,'tv',583328,'UK Labour Party Threatens \'Misgendering\' With Two Years In Jail','https://mrctv.org/node/583328','Brittany M. Hughes',1697482620,0,'ftv|ttv|fmrc|tmrc',1),
(7746,'tv',583329,'Trump Says Biden Admin. \'Strongly Influenced\' Lawsuits Against Him \'For Purposes of Election Interference\'','https://mrctv.org/node/583329','Nick Kangadis',1697486657,0,'ftv|ttv',1),
(7747,'nb',276694,'Washington Examiner’s ‘Liberal Media Scream’ With the MRC’s Assessment','https://newsbusters.org/node/276694','Brent Baker',1697487906,0,'fnb|tnb',1),
(7748,'free speech',281055,'YouTube Takes Down Hamas Anti-Semitic Video After MRC Inquiry','https://newsbusters.org/node/281055','Luis Cornelio',1697487726,2,'ffsa|tfsa|ftv|ttv|fcns|fnb|tnb',1),
(7749,'cns',583331,'‘The People Who Hate America Hate the Jews,’ Levin Tells Bozell, Discussing Hamas, Dems and Media','https://mrctv.org/node/583331','Craig Bannister',1697487355,2,'fcns|tcns|ftv|ttv|tmrc|fmrc',1),
(7750,'nb',281056,'MSNBC Brings on Anti-Israeli Journo to Smear Netanyahu','https://newsbusters.org/node/281056','Kevin Tober',1697488828,0,'fnb|tnb',1),
(7751,'business',281057,'MRC’s Bozell, Schneider Blast Soros Empire for Funding Radical Pro-Hamas Groups','https://newsbusters.org/node/281057','NB Staff',1697489520,0,'fcns|tcns|tnb|fnb|fmrc|tmrc|tfsa|ffsa',1),
(7752,'cns',583335,'Harvard Defends Students’ Right to Free Speech – When It’s Anti-Israel','https://mrctv.org/node/583335','Evan Poellinger',1697490748,0,'tcns|fcns|ftv|ttv',1),
(7753,'nb',281058,'NY Times Pivots: Anti-Semitic Op-eds, Finding \'Context\' for Hamas War Crimes','https://newsbusters.org/node/281058','Clay Waters',1697499915,0,'fnb|tnb|fcns|tcns',1),
(7754,'nb',281059,'Al Roker Salivates Over Rachel Maddow, Encourages Young Journalists to Emulate Her','https://newsbusters.org/node/281059','Curtis Houck',1697493540,0,'fnb|tnb|fcns',1),
(7755,'free speech',281060,'Sen. Rubio Fires Back After YouTube Censors Clip ‘By Mistake’ of Him Calling Hamas ‘Savages’','https://newsbusters.org/node/281060','Catherine Salgado',1697494789,0,'tfsa|ffsa',1),
(7756,'latino',281061,'ABC’s Salinas Shamelessly Shills For Woke National ‘Latinx Museum’ ','https://newsbusters.org/node/281061','Jorge Bonilla',1697497582,0,'',1),
(7757,'nb',281062,'Nets Skip Shocking Number of Illegals from Middle East Crossing Border','https://newsbusters.org/node/281062','Kevin Tober',1697503827,0,'fnb|fcns|tcns|tnb|fmrc|tmrc',1),
(7758,'nb',281063,'MSNBC Blames Conservative Talk Radio for Six-Year-Old\'s Murder','https://newsbusters.org/node/281063','Kevin Tober',1697506730,0,'fmrc|tmrc|fnb|tnb|fcns',1),
(7759,'nb',281064,'NewsBusters Podcast: Sunday at CBS Stinks, Starting with \'60 Minutes\'','https://newsbusters.org/node/281064','Tim Graham',1697510892,0,'fnb|tnb|ftv|ttv|fmrc|tmrc',1),
(7760,'nb',281065,'‘The People Who Hate America Hate the Jews,’ Levin Tells Bozell, Discussing Hamas and Media','https://newsbusters.org/node/281065','Craig Bannister',1697543906,0,'fnb|tnb',1),
(7763,'nb',281066,'Daily Show Blames Everybody But Hamas For War','https://newsbusters.org/node/281066','Alex Christy',1697552681,0,'fmrc|tmrc|fnb|tnb',1),
(7764,'nb',281067,'Scarborough: Jail Trump If He Violates Gag Order!','https://newsbusters.org/node/281067','Mark Finkelstein',1697567830,0,'fmrc|tmrc',0),
(7765,'tv',583342,'Pro-Palestinian/Hamas Activists Clash with Police in Front of WH, At Least 30 Arrested','https://mrctv.org/node/583342','Nick Kangadis',1697553994,0,'fcns|tcns|tnb|fnb|ftv|ttv|fmrc',1),
(7766,'nb',281068,'Tapper\'s 9/11 Twist: It\'s \'Incredibly Important\' to Lecture About American Islamophobia!','https://newsbusters.org/node/281068','Tim Graham',1697555150,0,'fmrc|tmrc|fnb|tnb',1),
(7767,'tv',583344,'Biden\'s HHS Throws Down Rights-Violating Pronoun Mandate For All Employees','https://mrctv.org/node/583344','Brittany M. Hughes',1697554960,0,'tmrc|fmrc|ftv|ttv',1),
(7768,'nb',281069,'Liberals’ Dilemma: Immigration or Israel?','https://newsbusters.org/node/281069','Daniel McCarthy',1697556540,0,'tnb|fnb|fcns',1),
(7769,'nb',281070,'Hamas Terror Attacks Exposed Massive, Raw Antisemitism Around the Globe','https://newsbusters.org/node/281070','Cal Thomas',1697656920,0,'fnb|tnb|fcns',1),
(7770,'business',281071,'A Dark Alliance: Communist Chinese Gov\'t-Tied TikTok Announces Partnership with Disney ','https://newsbusters.org/node/281071','Tom Olohan',1697557743,0,'fcns|ffsa|tfsa|fmrc',1),
(7771,'cns',583345,'Federal Deficit Jumps to $1.7 Trillion in FY 2023, 3rd Highest Year on Record','https://mrctv.org/node/583345','Craig Bannister',1697558691,2,'fcns|tcns|fmrc',1),
(7772,'tv',583346,'\'It\'s Obvious:\' Gronk Stands Firm On Transgenders In Women\'s Sports Stance','https://mrctv.org/node/583346','John Simmons',1697564193,0,'ftv|ttv|fmrc|tmrc',1),
(7773,'nb',281072,'David Frum: Israel/Netanyahu Too Cowardly for Ground Invasion of Gaza','https://newsbusters.org/node/281072','Nicholas Fondacaro',1697565300,0,'fmrc|fnb|tnb|fcns',1),
(7774,'tv',583348,'WATCH: OUR Government\'s Greed Has Americans Paying For It In More Ways Than One','https://mrctv.org/node/583348','Nick Kangadis',1697564153,0,'ftv|ttv',1),
(7775,'tv',583349,'Berkeley Law Professor Urges Employers Not To Hire Terrorism-Shilling College Grads','https://mrctv.org/node/583349','Brittany M. Hughes',1697565215,0,'tmrc|fmrc|ttv|ftv',1),
(7776,'nb',281073,'Colbert Claims GOP Couldn\'t Vote For Jesus: \'Worse Than a Socialist, He Was a Christian\'','https://newsbusters.org/node/281073','Alex Christy',1697566221,0,'fnb|tnb|tmrc|fmrc',1),
(7777,'cns',583351,'Activists Protest Removal of Tampon Dispensers from Men’s Restrooms at Clemson University','https://mrctv.org/node/583351','Evan Poellinger',1697566580,1,'fcns|tcns|fmrc|tmrc',1),
(7778,'tv',583352,'Report: Trans \'Woman\' Arrested For Threatening To Shoot Kids','https://mrctv.org/node/583352','Brittany M. Hughes',1697567025,0,'ftv|ttv|fcns|tcns|fmrc',1),
(7779,'tv',583353,'Dolphins QB Voices Support For Israel, Something the NFL Has Yet To Do','https://mrctv.org/node/583353','John Simmons',1697568280,0,'ftv|ttv|fmrc|tmrc',1),
(7780,'free speech',281074,'TikTok Boasts Removing 500,000 Videos Over Hamas-Israel Conflict','https://newsbusters.org/node/281074','Catherine Salgado',1697572211,0,'fcns|tcns|fnb',1),
(7781,'tv',583354,'Ivy League of Hatred: Cornell Prof. Says Hamas Attack on Israel was \'Exhilarating,\' \'Energizing\'','https://mrctv.org/node/583354','Nick Kangadis',1697572497,0,'ftv|ttv|fnb|fcns',1),
(7782,'free speech',281075,'CensorTrack Database Surpasses 6,000 Documented Cases of Big Tech Censorship','https://newsbusters.org/node/281075','Gabriela Pariseau',1697574600,2,'ffsa|ftv|tfsa|fcns|fnb|fmrc|tnb|tmrc|ttv|tcns',1),
(7783,'tv',583357,'Media, \'Squad\' Rush to Blame Israel Following Gaza Hospital Explosion','https://mrctv.org/node/583357','Brittany M. Hughes',1697573426,0,'ftv|ttv|fcns|tcns|fnb',1),
(7784,'nb',281076,'Tender Loving CAIR: PBS Coddles Hamas-Linked Group, Hints GOP Rhetoric Deadly','https://newsbusters.org/node/281076','Clay Waters',1697589970,0,'fnb|tnb|fcns',1),
(7785,'nb',281077,'Tapper Defends Hamas Propaganda Death Toll: \'No Reason to Doubt\'','https://newsbusters.org/node/281077','Nicholas Fondacaro',1697576282,0,'tmrc|fmrc|fnb|tnb|fcns',1),
(7786,'tv',583358,'Tolerance For Eco-Activists? We’ve Got NUN!','https://mrctv.org/node/583358','Eric Scheiner',1697576398,0,'fmrc|tmrc|ftv|ttv',1),
(7787,'free speech',281078,'IRONY! Biden Camp Joins Pro-Free Speech Platform Despite WH Censorship Actions','https://newsbusters.org/node/281078','Luis Cornelio',1697576558,2,'fnb|tnb|fcns|ffsa|tfsa',1),
(7788,'cns',583359,'Sen. Cotton Has ‘Lesson for the Media’: Never Trust Terrorists','https://mrctv.org/node/583359','Craig Bannister',1697578618,2,'tmrc|fmrc|fnb|fcns|tcns|ftv|ttv',1),
(7789,'nb',281079,'Axios Wants You to Know There’s NO SUCH THING as an ‘Open Border’ (Even Though It Is)','https://newsbusters.org/node/281079','Curtis Houck',1697579520,0,'fnb|tnb|fcns',1),
(7790,'nb',281081,'MSNBC Rolls Out Red Carpet for Doctor-Poet to Rip Israel \'Apartheid,\' \'Genocide\'','https://newsbusters.org/node/281081','Brad Wilmouth',1697734073,0,'',1),
(7791,'nb',281082,'CBS Parrots Hamas: Israel Behind Hospital Blast, They Bring \'Terror\' to Gaza','https://newsbusters.org/node/281082','Nicholas Fondacaro',1697595811,0,'fnb|tnb|fcns',1),
(7792,'nb',281083,'Column: When the Media\'s Humility Died in Darkness','https://newsbusters.org/node/281083','Tim Graham',1697622924,0,'fnb|tnb|fcns|ftv|ttv|tmrc|fmrc',1),
(7793,'nb',281084,'Gaza Hospital Attack: NBC Reporter Skeptical Only Of Israeli Denials, Not Hamas Accusations','https://newsbusters.org/node/281084','Mark Finkelstein',1697678554,1,'fnb|tnb|fcns|tcns',1),
(7795,'tv',583364,'Blue Jays Pitcher Uses Hunting to Teach \'Important Life Lesson\' to His Son','https://mrctv.org/node/583364','John Simmons',1697638310,0,'ftv|ttv',1),
(7796,'nb',281085,'MSNBC Analyst: Media \'Breathlessly, Word For Word\' Repeated Hamas Propaganda','https://newsbusters.org/node/281085','Alex Christy',1697638737,0,'ftv|ttv|fnb|fcns|ffsa|fmrc',1),
(7797,'tv',583367,'Riley Gaines Unimpressed with NCAA Prez\'s Stance on Protecting Women\'s Sports','https://mrctv.org/node/583367','John Simmons',1697643667,0,'ftv|ttv',1),
(7798,'nb',281086,'CNN, Palestinian Official Repeat Each Other\'s Israeli \'Credibility Problem\' Propaganda','https://newsbusters.org/node/281086','Alex Christy',1697644158,0,'fnb|tnb',1),
(7799,'nb',281088,'Brent Bozell: \'Blithering Idiot\' AOC on CNN Proves the Far Left Can\'t Stand with Israel ','https://newsbusters.org/node/281088','NB Staff',1697647334,0,'fnb|tnb|fcns|tmrc|fmrc',1),
(7800,'tv',583369,'Iranian Embassy in Syria Posts Cryptic Tweet: \'Time is Up\' ','https://mrctv.org/node/583369','Nick Kangadis',1697645239,0,'ftv|ttv',1),
(7801,'nb',281089,'Time to Embarrass the Liberal Media for Siding With Terrorists on Hospital Strike','https://newsbusters.org/node/281089','Curtis Houck',1697647260,0,'fnb|tnb|fcns|tmrc|fmrc',1),
(7802,'nb',281090,'Maddow: Trump Wants ‘MSNBC on Trial ... So that He Can Execute Us’','https://newsbusters.org/node/281090','Nicholas Fondacaro',1697650233,0,'fnb|tnb',1),
(7803,'free speech',281091,'Government Pressure: Sen. Bennet Exploits Hamas-Israel War to Clamor for Big Tech Censorship','https://newsbusters.org/node/281091','Luis Cornelio',1697651382,2,'ffsa|tfsa|fcns|tcns|fnb|tmrc|fmrc',1),
(7804,'cns',583373,'Growing List of Wealth Donors Abandoning Harvard, UPenn Over Failure to Condemn Anti-Semitism, Hamas Attack','https://mrctv.org/node/583373','Craig Bannister',1697654529,2,'fcns|fnb|tnb|ftv|ttv|tmrc|fmrc',1),
(7805,'tv',583374,'‘We Can’t Let This Happen Again’: IDF Soldier Gives On-The-Ground Perspective From Israel','https://mrctv.org/node/583374','mrctvstaff',1697655090,0,'ftv|ttv',1),
(7806,'tv',583375,'Get Out! Arkansas Tells Chinese \'State-Run\' Company to Sell Farmland and Leave','https://mrctv.org/node/583375','Nick Kangadis',1697655320,0,'ftv|ttv',1),
(7807,'tv',583376,'Pro-Trump \'Influencer\' Given Prison Time For Telling Hillary Supporters They Could Vote By Text','https://mrctv.org/node/583376','Brittany M. Hughes',1697654693,0,'ftv|ttv',1),
(7808,'nb',281092,'PBS: Family Separations at Border Comparable to Historic U.S. \'Enslavement and Internment\'','https://newsbusters.org/node/281092','Clay Waters',1697658560,0,'fnb|tnb|fcns|fmrc',1),
(7809,'tv',583378,'Blubbering Rashida Tlaib Repeats Claim That Israel Bombed Gaza Hospital','https://mrctv.org/node/583378','Brittany M. Hughes',1697657463,0,'ftv|ttv',1),
(7810,'nb',281093,'TRUTH BE DAMNED: Tapper Leaves Door Open to Israel Bombing Hospital','https://newsbusters.org/node/281093','Nicholas Fondacaro',1697657704,0,'fnb|tnb|fcns',1),
(7811,'tv',583379,'Protestors Rally In DC Calling For Israeli-Palestinian \'Ceasefire\' Following Hamas Attacks','https://mrctv.org/node/583379','Eric Scheiner',1697659507,0,'ftv|ttv|fmrc|tmrc|fcns|fnb',1),
(7812,'business',281094,'BUFFOONERY: Paul Krugman Claims Far Left ‘Has No Significant Influence on the Democratic Party’','https://newsbusters.org/node/281094','Joseph Vazquez',1697659815,0,'ffsa|tfsa|fcns|tcns|tmrc|fmrc',1),
(7813,'free speech',281095,'Chinese Gov’t-Tied TikTok Launches Invasive Campaign to Infect ‘Everyday Life’ ','https://newsbusters.org/node/281095','Catherine Salgado',1697660817,0,'fcns|tcns|fnb|ffsa|tfsa',1),
(7814,'cns',583381,'Hamas Steals Humanitarian Aid to Gaza – So Biden Announces $100 Million More','https://mrctv.org/node/583381','Craig Bannister',1697660450,2,'fnb|fcns|tcns',1),
(7815,'tv',583382,'What About U.S.? Biden Considering $100 Bil. for Ukraine, Taiwan & Israel, Plus Free Living for 5.7 Mil. Illegals','https://mrctv.org/node/583382','Nick Kangadis',1697660121,0,'ftv|ttv',1),
(7816,'nb',281096,'THIS AGAIN? CNN Reporter Insists Pro-Hamas Riots Have ‘Been Mostly Peaceful’','https://newsbusters.org/node/281096','Curtis Houck',1697667240,0,'fnb|tnb|fcns|fmrc|tmrc',1),
(7817,'nb',281097,'Networks Give ‘The Squad’ a Pass on Palestine Hospital Disinformation','https://newsbusters.org/node/281097','Bill D\'Agostino',1697669789,0,'fmrc|tmrc|fnb|tnb|tcns|fcns',1),
(7818,'nb',281099,'NewsBusters Podcast: Let\'s Call Jim Jordan a Terrorist, But Not Hamas','https://newsbusters.org/node/281099','Tim Graham',1697682438,0,'fnb|tnb|ftv|ttv|tmrc|fmrc',1),
(7819,'tv',583385,'Omar Walks Back Claim That Israel Bombed a Gaza Hospital...Kind Of','https://mrctv.org/node/583385','Brittany M. Hughes',1697717996,0,'tmrc|fmrc|ftv|ttv',1),
(7820,'nb',281100,'Morning Joe Rips MSM Support of Hamas Hospital Lie, But Gives Rashida Tlaib a Pass','https://newsbusters.org/node/281100','Mark Finkelstein',1697723663,0,'fnb|tnb|tcns|fcns',0),
(7821,'tv',583386,'Rodgers Continues To Score Points - Spikes Fauci Again!','https://mrctv.org/node/583386','Eric Scheiner',1697721911,0,'fcns|tcns|ftv|ttv|tmrc|fmrc',1),
(7823,'nb',281102,'Israeli Officials SCHOOL CNN, Liberal Media on Lies Over Hospital Fire','https://newsbusters.org/node/281102','Curtis Houck',1697725320,0,'tnb|fnb|fcns|tcns|tmrc|fmrc',1),
(7824,'tv',583387,'Victoria\'s Secret To Bring Back Angels After Obese & Trans \'Women\' Fail To Sell Lingerie','https://mrctv.org/node/583387','Brittany M. Hughes',1697725065,0,'fcns|tcns|fnb|tmrc|fmrc|ftv|ttv',1),
(7825,'nb',281103,'Reid: U.S. Untrustworthy on Hospital Because of Beheaded Babies Claim','https://newsbusters.org/node/281103','Alex Christy',1697725740,0,'fcns|tcns|tnb|fnb',1),
(7826,'nb',281104,'California’s Green Dream: Coming to YOUR State!?','https://newsbusters.org/node/281104','John Stossel',1697726050,0,'',0),
(7827,'nb',281105,'What a Palestinian State Would Look Like','https://newsbusters.org/node/281105','Cal Thomas',1697726260,0,'',0),
(7828,'nb',281106,'How America Can Avert WWIII','https://newsbusters.org/node/281106','Ben Shapiro',1697726597,0,'',0),
(7829,'tv',583390,'200 Rotting Bodies Recovered From \'Environmentally Friendly\' Funeral Home','https://mrctv.org/node/583390','Brittany M. Hughes',1697726305,0,'fcns|tmrc|fmrc|ftv|ttv',1),
(7830,'cns',583391,'Trump Sanctions Slashed Iran Oil Production, Profits – Now They’re Raking in $1B a Week, Blackburn Tells Bozell','https://mrctv.org/node/583391','Craig Bannister',1697727262,2,'ftv|ttv|fcns|tcns',1),
(7831,'business',281107,'Dem Billionaire Podcaster Pierces Legacy Media Veil, BLASTS ‘Trump Derangement Syndrome’','https://newsbusters.org/node/281107','Tom Olohan',1697731047,0,'',1),
(7832,'tv',583392,'Dude Looks Like a Lady? Trans Fmr. Aussie Football Star Named to Maxim Australia \'Hot 100\'','https://mrctv.org/node/583392','Nick Kangadis',1697731194,0,'ftv|ttv',1),
(7833,'business',281108,'MEDIA FAIL: New Poll Shows Majority of Swing-State Voters Say Economy ‘Better Off’ Under Trump','https://newsbusters.org/node/281108','Joseph Vazquez',1697733787,0,'tmrc|fmrc',1),
(7835,'nb',281109,'Mitchell Fights With Reps Who Condemn Hamas\'s Media \'Baghdad Bobs\'','https://newsbusters.org/node/281109','Alex Christy',1697738263,0,'',1),
(7836,'tv',583396,'NYC Police Searching For Man Who Randomly Punched a Jewish Woman On the Subway ','https://mrctv.org/node/583396','Brittany M. Hughes',1697740166,0,'ttv|ftv|tmrc|fmrc',1),
(7837,'cns',583397,'Wisc. Assembly Speaker Makes Good on Threat to Withhold Raises after University of Wisconsin Retains 188 DEI Positions','https://mrctv.org/node/583397','Evan Poellinger',1697739458,0,'ftv|ttv',1),
(7838,'tv',583398,'Watch: This Official Explains A Lot About The Gov’t Loan Process Under Biden','https://mrctv.org/node/583398','Eric Scheiner',1697739809,0,'',1),
(7839,'tv',583400,'Here We Go Again! Cher Says She\'ll Leave U.S. if Trump Wins in 2024','https://mrctv.org/node/583400','Nick Kangadis',1697741699,0,'ftv|ttv',1),
(7840,'nb',281111,'Israeli Official Tells Off CNN, Anti-Semites on College Campuses/Congress','https://newsbusters.org/node/281111','Nicholas Fondacaro',1697742468,0,'',1),
(7841,'tv',583401,'Texas Cop Shot To Death Chasing Mexican Citizen Along the U.S. Border','https://mrctv.org/node/583401','Brittany M. Hughes',1697742485,0,'',1);
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

-- Dump completed on 2023-10-19 19:27:36
