-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 20, 2022 at 04:27 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `conference`
--

-- --------------------------------------------------------

--
-- Table structure for table `speakers`
--

CREATE TABLE `speakers` (
  `id` int(11) NOT NULL,
  `Name` varchar(18) DEFAULT NULL,
  `Title` varchar(32) DEFAULT NULL,
  `Organization` varchar(24) DEFAULT NULL,
  `Biography_short_paragraph` varchar(289) DEFAULT NULL,
  `Session_Name` varchar(50) DEFAULT NULL,
  `Description_of_Session_short_paragraph` varchar(486) DEFAULT NULL,
  `Category_Track` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speakers`
--

INSERT INTO `speakers` (`id`, `Name`, `Title`, `Organization`, `Biography_short_paragraph`, `Session_Name`, `Description_of_Session_short_paragraph`, `Category_Track`) VALUES
(1, 'Aksh Khatri', 'Controls System Lead', 'KinetEco Inc.', 'Aksh Kahatri balances his serious job with another serious job: Keeping The Solar Bowler busy creating new ways to power his bowling alley.', 'The Solar Bowler', 'Meet the makers of The Solar Bowler, a fictional character that uses unique and sustainable ways to power his favorite pastime.', 'Ethics and Environment'),
(2, 'Ally Bode', 'UX Designer', 'Globe Bank International', 'Ally Bode believes in humans, and spends her time utilizing ai and robotics to make products more human-manageable. ', 'Automating User Testing', 'Eliminating human error and saving time and money are key reasons user testing—at least parts of it—is an ideal job for automation. We’ll discuss the advantages and disadvantages of using machines to test a product that will be used by humans.', 'AI and Robotics'),
(3, 'Anna Rossi', 'Product Development Specialist', 'Two Trees Olive Oil', 'Anna Rossi\'s favorite part of her job is getting to invent things with people and companies from all over the world. She also heads up the annual customer maker contest, featuring people who make amazing things with Two Trees Olive Oil.', 'Making Things from Other Things', 'When you think \'maker\', you don\'t usually think about olive oil. But olive oil\'s use has gone far beyond its role on the dinner table. This session shows and tells about artisanal creations that include olive oil and other usually-used-for-something-else ingredients, from soap to wood polish.', 'Arts, Crafts, Fashion, and Fare'),
(4, 'Aran Nguyen', 'LEX Designer', 'Binaryville', 'Aran Nguyen is widely known as a champion of accessible education, receiving awards for ingenuity in online learning for students with special needs. ', 'LEX: Always Remember that the End Product is Human', 'The aspects of the learning experience continually changes, and has been forced to take some giant leaps in this past year. Learn how to develop new technology and experiences while keeping in mind that the end “product” is a human that is counting on you to learn.', 'Education and Training'),
(5, 'Ashley Hackett', 'Chief Innovation Officer', 'The Landon Hotel', 'Ashley Hackett calls herself a \"permanently remote\" employee as part of the executive team that manages a worldwide accommodation business.', 'Managing Virtual Teams', 'How do you keep your team invested in projects if they are all or partly remote? What are your biggest challenges and the best tools to meet those challenges? Join these managers in a roundtable discussion as they share the tools and methodologies that work for them.', 'Ethics and Environment'),
(6, 'Beverley Armstrong', 'Broadcast Engineer', 'Red30 Design', 'While Beverley Armstrong is known as a tech head, she also has a secret musical side playing Viennese oboe and other woodwinds. ', 'The Art of Sound', 'While composed music has long been considered an art, sound is still considered more of a technical skill than an art. As a broadcast engineer, Beverley has been an advocate for sound to be treated as an art, with the BE conducting the blend of voice, music, background noise, and sound effects to create content that greatly enhances the visual aspects of a broadcast.', 'Ethics and Environment'),
(7, 'Daniel Rohan', 'Cyber Security Specialist', 'Hansel & Petal', 'Daniel Rohan has been with Hansel & Petal for six years. His leadership in AI security is well-documented in his many articles for top security publications.', 'Security in the Age of AI', 'With security crises gaining in prevalence, it’s more important than ever for us to make sure that our AI can\'t be hacked. How can we avoid all the data noise out there?', 'AI and Robotics'),
(8, 'Daron Seeley', 'Sr. Solutions Architect', 'Two Trees Olive Oil', 'Daron Seeley loves solving problems, which makes the job of Solutions Architect a paradisiacal dream come true—especially when he gets to play with robots. ', 'Robots on the Farm', 'From testing soil to gently picking fruits and vegetables to avoid damage, robotics are becoming a critical faction in the role of agriculture in the future. Learn how current and future technologies will be implemented in this huge, critically important industry.', 'AI and Robotics'),
(9, 'David Powlowski', 'Machine Learning Engineer', 'Binaryville', 'David Powlowski had an AHA! moment while listening to his daughter Ebin memorizing scenarios to reach the desired answers on her final chemistry exam. Since then, he considers all machines his children.', 'Machines are People, Too', 'Machine Learning is more like human learning than most people believe. Like a machine, we set up our students to give answers rather than to come up with solutions, basically setting variables to get a desired output. What can we learn from this?', 'AI and Robotics'),
(10, 'Devon Harris', 'Director, Sales & Marketing', 'Red30 Tech', 'Devon Harris has worked virtually and managed people remotely, and thrives in both situations. With a worldwide sales and marketing team to manage, that’s definitely a boon for his work/life balance.', 'Managing Virtual Teams', 'How do you keep your team invested in projects if they are all or partly remote? What are your biggest challenges and the best tools to meet those challenges? Join these managers in a roundtable discussion as they share the tools and methodologies that work for them.', 'Ethics and Environment'),
(11, 'Dixie Russel', 'Art Director', 'Red30 Design', 'Dixie Russel has run a successful side business selling her paintings for the last seven years, and founded the local arts-makerspace in her neighborhood. We have no idea how she finds time to work for us, we\'re just glad she does.', 'Ideas into Business', 'From 3D printed jewelry to hand embroidery, epoxy river tables to boat making, many makers find that there is a market for what they create, and embark on a business. Meet successful makers who have turned their maker energy into successful enterprises.', 'Arts, Crafts, Fashion, and Fare'),
(12, 'Emma Jones', 'Fashion Designer', 'H+ Sport', 'When fashion designer Emma Jones found out her sister—a registered nurse—had to ration her PPE to protect herself from getting Covid, she immediately advocated H+ Sport to switch production to accommodate frontline-healthcare needs. Since, they have donated 26,000 masks to area hospitals.', '3D Makers and PPE during a Pandemic', 'Never has there been more outpouring of maker energy than during the Covid pandemic of 2020. From students to makerspaces to industry, individuals and organizations took it upon themselves to create much needed PPE for this worldwide emergency. See some of the most inventive solutions created nationwide.', 'Arts, Crafts, Fashion, and Fare'),
(13, 'Erin Frami', 'Chief Creative Officer', 'The Lakehouse Restaurant', 'Erin Frami comes from a long line of cheese lovers and makers. She grew up helping her parents operate their goat cheese farm, and introduced her family\'s line of cheeses to The Lakehouse Restaurant\'s chefs. She has since been their favorite coworker.', 'The Art of Cheese', 'What better three-dimensional art could there be other than cheese? The number of artisan and specialty cheese makers has been growing around the U.S., and for good reason—they are making some amazing cheeses, and people love them. Learn about some of the most influential cheese artists and how they grew their hobby into a hospitality must-have. ', 'Arts, Crafts, Fashion, and Fare'),
(14, 'Eve Berge', 'Director of Diversity', 'Explore California', 'Eve Berge has been a professional and volunteer diversity advocate for as long as she can remember. Her goal is to educate as many people as possible about options to combat discrimination and other social justice issues. ', 'Diversity in the Maker Community', 'Is the maker community really the great open-source democracy that it set out to be? Studies show that women, people with disabilities, people from households that make less than $125,000, and people of color are still largely under-represented in the maker community. How do we truly open our doors to a broader population?', 'Ethics and Environment'),
(15, 'Geoff Leffler', 'Fabrication Specialist', 'KinetEco Inc.', 'Geoff Leffler has metal in his veins. Starting out in traditional steel and aluminum fabrication, he\'s become obsessed with new technologies that can create finished metal parts quickly and affordably.', '3D Printing with Metal', 'See the latest in metal 3D printing technologies, from desktop machines (you need a really big desk!) to those designed for machine shops creating high-end and high-volume pieces.', '3D Printing and Design'),
(16, 'Grant Jacobson', 'Owner', 'Grant Creative Solutions', 'Grant Jacobson has been creating virtual walkthroughs for real estate clients for years, so it only makes sense for him to become an augmented reality go-to creative. About 40 percent of his clients use Grant\'s proprietary augmented reality services.', 'Augmented Real(ity) Estate', 'Imagine if your company is moving you to a state too far away to spend time looking for a new place to live. Wouldn\'t it be nice to be able to meet an agent, walk through a house, open doors, go up steps, and check out the neighborhood from the comfort of your couch? Check out the latest innovations in augmented reality in the real estate market, and discuss its economic benefits.', 'Virtual and Augmented Reality'),
(17, 'Griffin Snow', 'Urban Planner', 'KinetEco Inc.', 'Griffin Snow has been driven to find ways to make efficient, affordable housing for all ever since he was a kid living on the streets with his single dad. ', 'Homebuilding and 3D Printing', 'A new house in 24 hours—can this be our practical solution for making affordable housing for all? See what has been done in this very vertical industry, and discuss how it will grow and be truly affordable—both for those living in the homes, and for the builders that create them.', '3D Printing and Design'),
(18, 'Gwen Fabler', 'President', 'Fabler Innovations', 'Gwen Fabler is a maker hack geek, or so she says, and loves collecting and distributing crowdsourced maker information.  ', 'Hands-On Hacks', 'Join your fellow makers in learning their favorite hacks in popular maker categories. ', 'Education and Training'),
(19, 'Heather Farrell', '3D Digital Artist', 'Blue Sky Kites', 'Heather Farrell agrees with Lauren Bacall: \"Imagination is the highest kite you can fly.\" That\'s only one of the reasons she is so involved in makerspaces—to help others\' imaginations turn into reality.', 'Arts and Crafts Makerspaces', 'Interest and participation in arts and crafts has grown exponentially over the last decade. In the United States alone, over 60 percent of households participate in creative activity annually, including paper crafts like scrapbooking, knitting, sewing, painting and drawing, and wood crafts. Makerspaces supporting crafts have opened up possibilities for those who can\'t otherwise have access to tools of the craft trade. Here’s how to support (or start!) an arts and crafts makerspace.', 'Arts, Crafts, Fashion, and Fare'),
(20, 'Hilary Brooks', 'Instructional Designer', 'Hansel & Petal', 'Hilary Brooks launched Hansel & Petal\'s online learning program in 2013. Through the company\'s portal, thousands of people have learned how to garden, floral arrangement, and home decor. She\'s currently working on developing a VR program for the company.', 'Virtual Reality for Remote Learning', 'The potential for VR in education has great potential to expand beyond limits of typical online learning. See what developers are creating to enhance the learning experience of students from kindergarteners to emergency medical training.', 'Education and Training'),
(21, 'Hui Bashirian', 'Software Engineer', 'Wisdom Pet Medicine', 'Dog-parent to three rescue mutts, Hui Bashirian has dedicated his maker brain to keeping his dogs healthy, engaged, and entertained. ', 'Animals and AI', 'We\'ve known for years that robot dogs can never take the place of real dogs. But can robot people take the place of dog owners? We\'ll compare the pluses and minuses of the emerging field of Artificial Dog Sitters.', 'AI and Robotics'),
(22, 'Jamill Waters', 'Research Scientist', 'SAMOCA', 'Jamill Waters has been both a real artist and a fake one. Both make him happy.', 'Art in the Age of Automation', 'There are some people who don\'t believe that art can be “art” if it is made by a machine. The most intriguing and sometimes surprising beautiful art is made by non-sentient robots, based on data and interpretations of that data. So what are artists afraid of?', 'Ethics and Environment'),
(23, 'Jarrod Anderson', 'Architectural Designer', 'KinetEco Inc.', 'Leading a team of architectural designers, Jarrod Anderson is determined to push forward with energy efficient ideas that were once considered impossible.', 'Homebuilding and 3D Printing', 'A new house in 24 hours—can this be our practical solution for making affordable housing for all? See what has been done in this very vertical industry, and discuss how it will grow and be truly affordable—both for those living in the homes, and for the builders that create them.', '3D Printing and Design'),
(24, 'Jayden Williams', 'Sr. Program Manager', 'Red30 Tech', 'Jayden Williams loves helping others get rich—in a smart way. She never wants to see you starting a fundraiser to buy a sandwich.', 'Makers Making Money', 'Making money as a maker might be what we all dream of, but business acumen has to coexist with ideas and creativity. Learn how to balance the dream and reality. ', 'Arts, Crafts, Fashion, and Fare'),
(25, 'Jeffery Lowe', 'Social Media Manager', 'The Lakehouse Restaurant', 'What\'s the most common questions Jeffery Lowe gets at work? If you guess \"How in the world does this 3D printer work?\" and \"What do you do with it?,\" you\'re right. ', '3D Printing for the Non-Tech Minded', 'This is 3D Printing 101 for those in the makerspace that don\'t consider themselves technically astute. Bring on the questions!', '3D Printing and Design'),
(26, 'Jennifer Miller', 'CTE Engineer', 'Red30 Tech', 'Jennifer Miller lives and breathes AI data strategy. In her spare time, she lives and breathes more AI data strategy.', 'AI and Education—Developing a Data Strategy', 'According to research, the majority of higher educators agree that AI will be a key part of their educational toolbox moving forward. The same research shows that nearly all of these educators have absolutely no clue how to build AI into their programs. This session gives practical suggestions for getting started on an AI data strategy.', 'Education and Training'),
(27, 'Jenny Torres', 'Account Executive', 'Red30 Tech', 'Jenny Torres likes to tell others that there is literally a maker or two inside of her since she has spent most of her life morbidly obese due to a rare medical condition. She credits the maker community with giving her the confidence and courage to create. ', 'We are All Makers', 'There is a maker inside of each of us—and some get out more often than others. From innovating a way to make a job easier, to renovating a tired chest of drawers into a piece of statement home decor, bits of maker make it into our days on a regular basis. Here’s how to embrace and encourage that maker in everyone around us.', 'Keynote'),
(28, 'Jess Abbott', 'Photographer', 'Pixelford Photography', 'Formerly a photographer for an arts magazine, Jess Abbott now spends her time photographing what some may or may not consider \"art\" created by machines.   ', 'Art in the Age of Automation', 'There are some people who don\'t believe that art can be “art” if it is made by a machine. The most intriguing and sometimes surprising beautiful art is made by non-sentient robots, based on data and interpretations of that data. ', 'AI and Robotics'),
(29, 'Joey Fisher', 'Business Intelligence Engineer', 'H+ Sport', 'Joey Fisher’s best friend is a robot named H that he designed to collect data about his coworkers’ coffee-drinking habits and how they relate to productivity. Using this data, H travels the office serving coffee (and pep talks) at continually optimized times for each individual.', 'Must-Dos vs. Trends', 'Are AI and robotics necessary to make your business succeed? Or are you only considering them because your competitors thought they were cool? Learn how to determine if bringing artificial intelligence into your business is intelligent for real.', 'AI and Robotics'),
(30, 'Johnathan Kim', 'Innovation Coach', 'Two Trees Olive Oil', 'Johnathan Kim believes in the adage that eating is a necessity, but cooking is an art. In that vein, he also believes that we should all eat more art.', 'Data and Human Needs', 'Innovation coaching is one of the many human resources services that companies provide their staff. Historically, it’s done only with one-on-one discussions—but more recently, artificial intelligence is being used to pinpoint issues and challenges. How does this affect the human-human relationship?', 'Ethics and Environment'),
(31, 'Josh Taylor', 'Graphic Designer', 'Wisdom Pet Medicine', 'Josh Taylor is a maker in the nth degree, and coaches local makers who are interested in taking their craft to market. He especially enjoys his work with the local junior and high school maker competitions.', 'Ideas into Business', 'From 3D printed jewelry to hand embroidery, epoxy river tables to boat making, many makers find that there is a market for what they create, and embark on a business. Meet successful makers who have turned their maker energy into enterprise.', 'Arts, Crafts, Fashion, and Fare'),
(32, 'Julie Parker', 'Director, Outreach & Engagement', 'Orange Valley University', '“Clay” is Julie Parker’s middle name. Having minored in sculpture at Roux Academy, she’s now studying how 3D clay printers can bring to life projects that might not otherwise be creatable by hand. ', '3D Printing with Clay', 'Clay has historically been a hands-on medium for over 20,000 years, both to create practical items for day-to-day living, and art for day-to-day beauty. Now with the advent of commercially available 3D clay printers, artists and engineers alike are creating inspirational pieces that were previously unimaginable.', '3D Design and Printing'),
(33, 'Justin Olsen', 'Principle Engineer Architect', 'Globe Bank International', 'Justin Olson is cofounder of Globe Bank International\'s \"Helping Make Homes\" initiative along with Liz Carter, Senior Program Manager. ', 'Helping Make Homes Worldwide', 'See how Helping Make Homes utilizes maker resources and innovations to grow its impact around the world. From using virtual reality for training in building trades, to 3D printing with concrete, metal, and plastic, to using AI to assess data that will best serve each community, Helping Make Homes is making irrefutable headway into efficient and affordable home building around the world.', 'Ethics and Environment'),
(34, 'Justine Evans', 'Computer Coding Instructor', 'Orange Valley University', 'Justine Evans began coding when she was 11, and hasn\'t stopped since. She has developed an open-source online learning platform for all of the state\'s grade schools. ', 'AI and Education—Developing a Data Strategy', 'According to research, the majority of higher education educators agree that AI will be a key part of their educational toolbox moving forward. The same research shows that nearly all of these educators have absolutely no clue how to build AI into their programs. This session gives practical suggestions for getting started on an AI data strategy.', 'Education and Training'),
(35, 'Kennedy Beckingham', 'Youth Director', 'OVCAA', 'Kennedy Beckingham loves controversy when it comes to teaching kids. Not only does it spark intriguing discussions, it also results in some amazing educational programs and techniques.', 'Let them Eat Cake—or Don\'t', 'How do we determine what and how much our children should learn? Do we encourage them to experiment with new technologies, or to spend more time on traditional handicrafts? Join in on the discussion—and bring your questions.', 'Education and Training'),
(36, 'Liz Carter', 'Senior Program Manager', 'Globe Bank International', 'Liz Carter is cofounder of Globe Bank International\'s \"Helping Make Homes\" initiative along with Justin Olson, Principle Engineer Architect.', 'Helping Make Homes Worldwide', 'See how Helping Make Homes utilizes maker resources and innovations to grow its impact around the world. From using virtual reality for training in building trades, to 3D printing with concrete, metal, and plastic, to using AI to assess data that will best serve each community, Helping Make Homes is making irrefutable headway into efficient and affordable home building around the world.', 'Ethics and Environment'),
(37, 'Marysa Balma', 'Founder/CEO', 'Balma Innovations', 'Marysa Balma founded Balma Innovations in 2012. She has developed systems for adults that allow them to learn about design at their own pace, including designing with 3D printer technology.', '3D Printing for the Non-Tech Minded', 'This is 3D Printing 101 for those in the makerspace that don\'t consider themselves technically astute.', '3D Printing and Design'),
(38, 'Mike Jacobson', 'Associate Operations Manager', 'The Lakehouse Restaurant', 'Mike Jacobson helps to runs operations at all of The Lakehouse Restaurants, including determining human resource and technical needs. ', 'Human Resources and Robots', 'Researchers have claimed that nearly 50 percent of all jobs could be done by robots within the next two decades. What is the effect of automation on managing the workforce? Will ‘human resources’ become obsolete?', 'Ethics and Environment'),
(39, 'Milia Wu', 'Director of Special Projects', 'City of Orange Valley', 'Milia Wu thinks all of her projects are special, especially the one in which she actively interacts with people in local makerspaces, and talks to the community about taking advantage of these spaces. Her ultimate goal is to help more women and seniors get involved.', 'Making a Maker Community', 'One of the things we hear most often is that the favorite part of a makerspace is being able to socialize with other people interested in the same things you are, and learning about areas of making that you want to learn about. How do we build and nurture this community?', 'Keynote'),
(40, 'Nate Deckow', 'Application Engineer', 'Binaryville', 'Nate Decklow first started knitting to help with hand dexterity, and hasn\'t stopped. He is co-leader and founder of a local knitting charity organization.  ', 'Yarnathon for Justice', 'Bring your needles (knitting or crochet) and join other hand-knitters and crocheters in creating a one-of-a-kind quilt that will be auctioned off for charity. Last year’s quilt raised $18,000! Moderator Nate Deckow will be coordinating the specs and completion of the quilt. ', 'Arts, Crafts, Fashion, and Fare'),
(41, 'Paula Muller', 'Cloud Solutions Specialist', 'Red30 Tech', 'Paula Muller strives to help businesses of all sizes minimize costs and stress. She also believes that education is a key part of cloud recruitment.', 'Embracing the Cloud', 'The cloud makes many tasks faster and more efficient for industry. How does it affect makers?', 'Ethics and Environment'),
(42, 'Pen Ridsdale', 'Vlogger', 'Pen Designs', 'If you haven\'t heard of Pen Ridsdale, you\'re living under a rock. Pen vlogs (with style) almost daily about fellow makers and shakers.', 'Are Makerspaces Passe?', 'You don\'t need to attend this session to find out the short answer to this question: a resounding “NO!” We\'ll be discussing how to keep makerspaces current, full, and economically stable.', 'Arts, Crafts, Fashion, and Fare'),
(43, 'Peter Wang', 'Strategic Services Director', 'Roux Academy', 'Peter Wang helps Roux Academy navigate its current use of technology, and researches what\'s critical and creative for students, professors, and staff. ', 'AI and Education—Developing a Data Strategy', 'According to research, the majority of higher education educators agree that AI will be a key part of their educational toolbox moving forward. The same research shows that nearly all of these educators have absolutely no clue how to build AI into their programs. This session gives practical suggestions for getting started on an AI data strategy.', 'Education and Training'),
(44, 'Rose Ortiz', 'Videographer', 'Red30 Design', 'Rose Ortiz is one of the country\'s foremost drone videographers, and assists public service organizations with using drones for service and safety.', 'Using Drones for Disaster Relief', 'Drones are becoming immeasurably important in disaster relief. Using drones to fight wildfires has huge potential to save lives and avoid the risks that firefighters face. Carrying supplies to people otherwise unreachable, and surveying damage are just two more ways drones can help us. See what’s being used and developed.', 'Artificial Intelligence and Robotics'),
(45, 'Sofia Lopez', 'Digital Strategist', 'SAMOCA', 'As a digital strategist, Sofia Lopez knows the challenge of balance between humans and robots. She often assists corporations in educating employees in using technology to avoid feeling threatened by it. ', 'Human Resources and Robots', 'Researchers have claimed that nearly 50 percent of all jobs could be done by robots within the next two decades. What is the effect of automation on managing the workforce? Will ‘human resources’ become obsolete?', 'Ethics and Environment'),
(46, 'Stephanie Watson', 'CAD Designer', 'KinetEco Inc.', 'Stephanie Watson is a 3D-building enthusiast, and has worked with several non-profits in designing efficient homes for their local population.', 'Homebuilding and 3D Printing', 'A new house in 24 hours—can this be our practical solution for making affordable housing for all? See what has been done in this very vertical industry, and discuss how it will grow and be truly affordable—both for those living in the homes, and for the builders that create them.', '3D Printing and Design'),
(47, 'Stephen Tao', 'Digital Service Engineer', 'City of Orange Valley', 'Stephen Tao is passionate about VR and loves to show off projects he and his team have collaborated on—including the first completely ADA-compliant renovation to an entire neighborhood in Orange Valley.', 'VR in Town and City Planning', 'The City of Orange Valley is one of the first in the state to embrace the use of VR in its town planning. Panelists share examples of zoning request mockups, a proposed development, and other infrastructure proposals and plans that help both citizens and developers envision and edit prior to implementation.', 'Virtual and Augmented Reality'),
(48, 'Teena Judkins', 'Senior Game Designer', 'Red30 Tech', 'Teena Judkins takes playing very seriously. In addition to her extensive background in 2D and 3D art, she is one of the foremost experts in augmented reality in gaming.', 'This Is your Brain on VR', 'Medical uses for VR are on the rise. Using virtual reality, medical professionals are helping stroke victims regain mobility, and treating people with PTSD, schizophrenia, and sleep disorders. We discuss the neurophysics of manipulating reality to help with various health issues, and why it works. Plus how the entertainment industry is helping the medical industry in its studies.', 'Virtual and Augmented Reality'),
(49, 'Victor Gonzalez', 'Wastewater Management Specialist', 'Leaf & Mortar', 'Victor Gonzalez has worked tirelessly in helping organizations design and model systems that bring normally \'hidden\' infrastructures—such as the wastewater management systems he designs and implements—to life using virtual reality. ', 'VR in Town and City Planning', 'The City of Orange Valley is one of the first in the state to embrace the use of VR in its town planning. Panelists share examples of zoning request mockups, a proposed development, and other infrastructure proposals and plans that help both citizens and developers envision and edit prior to implementation.', 'Virtual and Augmented Reality'),
(50, 'Zia York', 'Director of Experience Design', 'The Landon Hotel', 'Every guest at The Landon Hotels are beneficiaries of Zia York\'s expertise in experience design. ', 'Automating User Testing', 'Eliminating human error and saving time and money are key reasons user testing—at least parts of it—is an ideal job for automation. We\'ll discuss the advantages and disadvantages of using machines to test a product that will be used by humans.', 'AI and Robotics'),
(51, 'Joe Casabona', 'Programmer', 'Good House Media, LLC', 'Joe started his career almost 20 years ago as a freelance web developer before realizing his true passion, which is sharing his years of knowledge about website development, podcasting and course creator to help creators, freelancers, and business owners.\r\n', 'How to Connect to a Database', 'Get live coding experience in this session, where you\'ll learn how to use PHP to connect to a live database!', 'Tech'),
(52, 'Erin Casabona', 'Programmer', 'Good House Media, LLC', 'Joe started his career almost 20 years ago as a freelance web developer before realizing his true passion, which is sharing his years of knowledge about website development, podcasting and course creator to help creators, freelancers, and business owners.', 'How to Connect to a Database', 'Get live coding experience in this session, where you\'ll learn how to use PHP to connect to a live database!', 'Tech');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `speakers`
--
ALTER TABLE `speakers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
