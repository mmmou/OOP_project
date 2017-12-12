-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2017 at 05:03 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `versity`
--

-- --------------------------------------------------------

--
-- Table structure for table `cit_news`
--

CREATE TABLE `cit_news` (
  `news_id` int(11) NOT NULL,
  `news_title` varchar(200) NOT NULL,
  `news_subtitle` varchar(200) NOT NULL,
  `news_details` text NOT NULL,
  `news_image` varchar(100) NOT NULL,
  `ncate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit_news`
--

INSERT INTO `cit_news` (`news_id`, `news_title`, `news_subtitle`, `news_details`, `news_image`, `ncate_id`) VALUES
(1, 'Welcome to', 'Scholastica school', 'Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all our students, using English as the primary medium of instruction but placing equal emphasis on Bangla. Scholastica\'s mission is to build curious, knowledgeable and caring young individuals, who will be equipped to tackle head-on the challenges of our modern-day \"global village\". They will aspire to become responsible citizens, who will embrace and respect people from other cultures and walks of life.', 'News-1510422930-19621.jpg', 1),
(2, 'About Us', '', 'Scholastica\'s mission is to develop curious, knowledgeable and caring young individuals, who will be equipped to tackle head-on the challenges of our modern-day \"global village.\" They will aspire to become responsible and productive citizens, who will contribute to their communities, and embrace and respect people from other cultures and walks of life.Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded to provide a balanced and well-rounded education for students, using English as the primary medium of instruction but placing equal emphasis on Bangla.The customized curriculum builds the knowledge, skills and attitudes that students need to succeed in their academic and professional careers after school. Students are encouraged to challenge themselves, their peers and their teachers in a setting that gives them confidence and builds their skills to think independently.', 'News-1510423747-75279.jpg', 2),
(3, 'Academics', '', 'Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded.Scholastica\'s curriculum has been designed to reflect the specific needs of Bangladeshi students keeping in mind their heritage, culture and national identity. The school has designed a comprehensive curriculum for all classes leading to the University of Cambridge \r\nInternational Examinations Ordinary and Advanced Level General Certificate of Education courses which are \r\ntaught in Classes IX to XII. These examinations are administered by the British Council, Dhaka.', 'News-1510424015-88778.jpg', 3),
(4, 'Admission in Scholastica', '', 'The admissions process in Scholastica is very transparent. Anyone is welcome to apply without any reference. Absolutely no donations are accepted; only published fees are required.During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.No external agents/agencies are appointed or involved in the admissions process; the Admissions Office is the only point of contact for all admissions-related applications and inquiries. No Ascent Group personnel have a role in the admissions process except those in the Admissions Office and on the interview and selection panel. During the admissions process, interviews are held by a panel of senior management, not a single individual. The interview panel is a team of qualified individuals from Scholastica\'s senior management. All decisions for admission are made through a committee, not by any one individual.', 'News-1510424278-53881.jpg', 4),
(5, 'Our Curriculum', '', 'Scholastica provides a complete school-leaving course of study, from pre-school to the A\' Levels. We have developed our own curriculum; it aims to deliver a holistic education program combining the core competencies of the national and the British curricula. The comprehensive curriculum designed for the elementary, secondary and high school classes ultimately leads to the University of Cambridge International Examinations Ordinary and Advanced Level General Certificate of Education exams, taught in the high school. These examinations are conducted under the auspices of the British Council, Dhaka. ', 'News-1510424428-61709.png', 5);

-- --------------------------------------------------------

--
-- Table structure for table `cit_news_category`
--

CREATE TABLE `cit_news_category` (
  `ncate_id` int(11) NOT NULL,
  `ncate_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit_news_category`
--

INSERT INTO `cit_news_category` (`ncate_id`, `ncate_name`) VALUES
(1, 'Home Page'),
(2, 'About Page'),
(3, 'Academics Page'),
(4, 'Admission Page'),
(5, 'Curriculam Page');

-- --------------------------------------------------------

--
-- Table structure for table `r_user`
--

CREATE TABLE `r_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL,
  `role_id` int(11) NOT NULL,
  `photo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `r_user`
--

INSERT INTO `r_user` (`id`, `name`, `email`, `phone`, `username`, `password`, `role_id`, `photo`) VALUES
(2, 'Miske Tara Zannat', 'moni@gmail.com', '01792829869', 'moni', '202cb962ac59075b964b07152d234b70', 1, 'user-1509288879-ff30aea8ce9e94f7cfa629ac242e6363.jpg'),
(3, 'Md Shofikul Islam', 'shafikul@gmail.com', '01517170887', 'shafikul', '202cb962ac59075b964b07152d234b70', 4, 'user-1509294801-12332c13b229f3147c6b4fbcd92363cf.jpg'),
(4, 'Rafikul Islam', 'rafiswe@gmail.com', '01729346959', 'rafikul', '202cb962ac59075b964b07152d234b70', 1, 'user-1511349229-5b4c3b7066609312f67dac444107c1a2.JPG');

-- --------------------------------------------------------

--
-- Table structure for table `semester_two`
--

CREATE TABLE `semester_two` (
  `two_id` int(11) NOT NULL,
  `subject_name_two` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester_two`
--

INSERT INTO `semester_two` (`two_id`, `subject_name_two`) VALUES
(1, 'C Programming'),
(2, 'Physics-1');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `one_id` int(11) NOT NULL,
  `subject_name` varchar(200) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`one_id`, `subject_name`, `semester`) VALUES
(1, 'Computer Fundamental', 1),
(2, 'Introduction of SWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_banner`
--

CREATE TABLE `s_banner` (
  `ban_id` int(11) NOT NULL,
  `ban_title` varchar(50) NOT NULL,
  `ban_subtitle` varchar(200) NOT NULL,
  `ban_text` varchar(20) NOT NULL,
  `ban_url` varchar(100) NOT NULL,
  `ban_details` text NOT NULL,
  `ban_image` varchar(50) NOT NULL,
  `ban_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_banner`
--

INSERT INTO `s_banner` (`ban_id`, `ban_title`, `ban_subtitle`, `ban_text`, `ban_url`, `ban_details`, `ban_image`, `ban_active`) VALUES
(1, 'Daffodil Internation University', 'Department of Software Engineering', 'View More', 'http://swe.daffodilvarsity.edu.bd/', 'Enter as much criteria on the left as you wish, or click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your home address below.', 'Banner-1509352683-44001.jpg', 0),
(2, 'Creative IT Institude', 'click an area on the map below to begin.', 'Learn More', '#', 'Enter as much criteria on the left as you wish, or click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your home address below.', 'Banner-1509355496-67960.jpg', 0),
(3, 'Department of Software Engineering', 'Soure Of Future Opportunities(SoFoLabe)', 'About us', 'http://sofolab.daffodilvarsity.edu.bd/', 'Enter as much criteria on the left as you wish, or click an area on the map below to begin your search in a particular borough. To find your zoned school, enter your home address below.', 'Banner-1509355594-87764.jpg', 1),
(5, 'Asia pesific University', 'Department of Pharmacy', 'Know us', '#', 'habi jabi koto ki r o.', 'Banner-1510348356-90578.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `s_contact_us`
--

CREATE TABLE `s_contact_us` (
  `conus_id` int(11) NOT NULL,
  `conus_name` varchar(30) NOT NULL,
  `conus_email` varchar(40) NOT NULL,
  `conus_phone` varchar(30) NOT NULL,
  `conus_sub` varchar(300) NOT NULL,
  `conus_mess` text NOT NULL,
  `conus_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_contact_us`
--

INSERT INTO `s_contact_us` (`conus_id`, `conus_name`, `conus_email`, `conus_phone`, `conus_sub`, `conus_mess`, `conus_time`) VALUES
(1, 'Md Shofikul Islam', 'shafikul@gmail.com', '01726639532', 'ar gan gamuna onk gaichi', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', '0000-00-00 00:00:00'),
(2, 'Miske Tara Zannat', 'moni@gmail.com', '01792829869', 'amar sonar bangla ami tumay valobasi', ' It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `s_noticeboard`
--

CREATE TABLE `s_noticeboard` (
  `notice_id` int(11) NOT NULL,
  `notice_details` text NOT NULL,
  `ncate_id` int(11) NOT NULL,
  `notice_image` varchar(200) NOT NULL,
  `notice_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_noticeboard`
--

INSERT INTO `s_noticeboard` (`notice_id`, `notice_details`, `ncate_id`, `notice_image`, `notice_time`) VALUES
(1, 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest.', 1, '', '0000-00-00 00:00:00'),
(2, 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ', 1, '', '0000-00-00 00:00:00'),
(3, 'Ten Scholastica students were awarded for achieving highest marks in different subjects in the world and in the  awarded for achieving highest ', 2, '', '0000-00-00 00:00:00'),
(4, 'Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all our students', 1, '', '2017-11-22 00:00:00'),
(5, 'Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all our students', 1, '', '2017-11-22 13:44:05'),
(6, 'They will aspire to become responsible citizens, who will embrace and respect people from other cultures and walks of life.', 1, '', '2017-11-22 14:01:45'),
(7, 'Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all our students, using English as the primary medium of instruction', 2, 'Photo-1511348156-53820.jpg', '2017-11-22 16:55:56'),
(8, 'Scholastica was established in 1977 by Mrs. Yasmeen Murshed. It was founded with a mission to provide a balanced and well-rounded education for all our students, ', 2, 'Photo-1511348438-81171.jpg', '2017-11-22 17:00:38'),
(9, 'They will aspire to become responsible citizens, who will embrace and respect people from other cultures and walks of life.', 2, 'Photo-1511348594-80421.jpg', '2017-11-22 17:03:14'),
(10, 'They will aspire to become responsible citizens, who will embrace and respect people from other cultures and walks of life.', 2, 'Photo-1511348729-70715.jpg', '2017-11-22 17:05:29');

-- --------------------------------------------------------

--
-- Table structure for table `s_noticeboard_category`
--

CREATE TABLE `s_noticeboard_category` (
  `ncate_id` int(11) NOT NULL,
  `ncate_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_noticeboard_category`
--

INSERT INTO `s_noticeboard_category` (`ncate_id`, `ncate_name`) VALUES
(1, 'Announcements 2017'),
(2, 'Upcoming Events');

-- --------------------------------------------------------

--
-- Table structure for table `s_photos`
--

CREATE TABLE `s_photos` (
  `photo_id` int(11) NOT NULL,
  `photo_title` varchar(200) NOT NULL,
  `photo_details` text NOT NULL,
  `photo_btn` varchar(50) NOT NULL,
  `photo_url` varchar(200) NOT NULL,
  `photo_image` varchar(200) NOT NULL,
  `pcate_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_photos`
--

INSERT INTO `s_photos` (`photo_id`, `photo_title`, `photo_details`, `photo_btn`, `photo_url`, `photo_image`, `pcate_id`) VALUES
(1, 'Student Affairs Unit', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Learn More', '#', 'Photo-1511174487-20000.jpg', 2),
(2, 'Curriculum Activity', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Learn More', '#', 'Photo-1511174627-37609.jpg', 2),
(3, 'Department of EEE', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'View More', '#', 'Photo-1511175724-45186.jpg', 2),
(4, 'Department of SWE', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'Learn More', '#', 'Photo-1511175759-68237.jpg', 2),
(5, 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'See More', '#', 'Photo-1511175924-57569.jpg', 1),
(6, 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Learn More', '#', 'Photo-1511175997-21663.jpg', 1),
(7, 'Student Affairs Unit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'View More', '#', 'Photo-1511176023-13752.jpg', 1),
(8, 'Curriculum Activity', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', 'Know us', '#', 'Photo-1511176126-58933.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `s_photos_pagecategory`
--

CREATE TABLE `s_photos_pagecategory` (
  `pcate_id` int(11) NOT NULL,
  `pcate_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `s_photos_pagecategory`
--

INSERT INTO `s_photos_pagecategory` (`pcate_id`, `pcate_name`) VALUES
(1, 'Home Page Latest News'),
(2, 'All Page Photos');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_course`
--

CREATE TABLE `teacher_course` (
  `id` int(11) NOT NULL,
  `teacher` varchar(200) NOT NULL,
  `one_id` int(11) NOT NULL,
  `two_id` int(11) NOT NULL,
  `conus_mess` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_course`
--

INSERT INTO `teacher_course` (`id`, `teacher`, `one_id`, `two_id`, `conus_mess`) VALUES
(1, 'rafikul', 2, 1, 'bahi jabi'),
(2, 'shafikul', 1, 2, 'ajk'),
(5, 'moni', 1, 2, 'kjb,m '),
(6, 'rafikul', 2, 2, 'vvvz');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `role_description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`, `role_description`) VALUES
(1, 'SuperAdmin', ''),
(2, 'Admin', ''),
(3, 'Author', ''),
(4, 'Subscriber', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cit_news`
--
ALTER TABLE `cit_news`
  ADD PRIMARY KEY (`news_id`),
  ADD UNIQUE KEY `ncate_id` (`ncate_id`);

--
-- Indexes for table `cit_news_category`
--
ALTER TABLE `cit_news_category`
  ADD PRIMARY KEY (`ncate_id`);

--
-- Indexes for table `r_user`
--
ALTER TABLE `r_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `semester_two`
--
ALTER TABLE `semester_two`
  ADD PRIMARY KEY (`two_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`one_id`);

--
-- Indexes for table `s_banner`
--
ALTER TABLE `s_banner`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `s_contact_us`
--
ALTER TABLE `s_contact_us`
  ADD PRIMARY KEY (`conus_id`);

--
-- Indexes for table `s_noticeboard`
--
ALTER TABLE `s_noticeboard`
  ADD PRIMARY KEY (`notice_id`),
  ADD KEY `ncate_id` (`ncate_id`);

--
-- Indexes for table `s_noticeboard_category`
--
ALTER TABLE `s_noticeboard_category`
  ADD PRIMARY KEY (`ncate_id`);

--
-- Indexes for table `s_photos`
--
ALTER TABLE `s_photos`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `pcate_id` (`pcate_id`);

--
-- Indexes for table `s_photos_pagecategory`
--
ALTER TABLE `s_photos_pagecategory`
  ADD PRIMARY KEY (`pcate_id`);

--
-- Indexes for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `one_id` (`one_id`),
  ADD KEY `two_id` (`two_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cit_news`
--
ALTER TABLE `cit_news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `cit_news_category`
--
ALTER TABLE `cit_news_category`
  MODIFY `ncate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `r_user`
--
ALTER TABLE `r_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `semester_two`
--
ALTER TABLE `semester_two`
  MODIFY `two_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `one_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `s_banner`
--
ALTER TABLE `s_banner`
  MODIFY `ban_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `s_contact_us`
--
ALTER TABLE `s_contact_us`
  MODIFY `conus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `s_noticeboard`
--
ALTER TABLE `s_noticeboard`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `s_noticeboard_category`
--
ALTER TABLE `s_noticeboard_category`
  MODIFY `ncate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `s_photos`
--
ALTER TABLE `s_photos`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `s_photos_pagecategory`
--
ALTER TABLE `s_photos_pagecategory`
  MODIFY `pcate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `teacher_course`
--
ALTER TABLE `teacher_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cit_news`
--
ALTER TABLE `cit_news`
  ADD CONSTRAINT `cit_news_ibfk_1` FOREIGN KEY (`ncate_id`) REFERENCES `cit_news_category` (`ncate_id`);

--
-- Constraints for table `r_user`
--
ALTER TABLE `r_user`
  ADD CONSTRAINT `r_user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`role_id`);

--
-- Constraints for table `s_noticeboard`
--
ALTER TABLE `s_noticeboard`
  ADD CONSTRAINT `s_noticeboard_ibfk_1` FOREIGN KEY (`ncate_id`) REFERENCES `s_noticeboard_category` (`ncate_id`);

--
-- Constraints for table `s_photos`
--
ALTER TABLE `s_photos`
  ADD CONSTRAINT `s_photos_ibfk_1` FOREIGN KEY (`pcate_id`) REFERENCES `s_photos_pagecategory` (`pcate_id`);

--
-- Constraints for table `teacher_course`
--
ALTER TABLE `teacher_course`
  ADD CONSTRAINT `teacher_course_ibfk_1` FOREIGN KEY (`one_id`) REFERENCES `subjects` (`one_id`),
  ADD CONSTRAINT `teacher_course_ibfk_2` FOREIGN KEY (`two_id`) REFERENCES `semester_two` (`two_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
