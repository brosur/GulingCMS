-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2013 at 01:06 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `idtut`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `desc`) VALUES
(1, 'PHP', 'PHP Programming Language'),
(2, 'JSP', 'JSP Proggraming Language');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `image_feature` varchar(255) DEFAULT NULL,
  `post_type` varchar(255) DEFAULT NULL,
  `post_status` varchar(255) DEFAULT NULL,
  `flag_sticky` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created_at`, `updated_at`, `created_by`, `updated_by`, `image_feature`, `post_type`, `post_status`, `flag_sticky`) VALUES
(1, 'about', 'Ini Content About', '2013-12-17 16:18:56', '2013-12-18 16:19:01', 1, 1, NULL, 'page', 'active', NULL),
(2, 'Programming Language', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tincidunt scelerisque eros, a porta magna dictum ac. Aenean consequat, magna id cursus pharetra, turpis nunc convallis erat, non tempus nulla eros a urna. Phasellus quis sem laoreet, aliquet justo a, tempus orci. Sed blandit, augue et tincidunt rhoncus, mi nisi semper mauris, non eleifend neque sapien tempus sem. In fermentum lobortis accumsan. Mauris vitae dui elit. Maecenas sed leo a tellus bibendum bibendum eget a mi. Integer id diam id elit aliquet feugiat. In hac habitasse platea dictumst. Suspendisse eleifend, lorem eget viverra lacinia, erat nisl dapibus lacus, vitae venenatis turpis enim ut leo. Etiam non turpis condimentum, iaculis mi a, tempor tellus. Nullam fringilla luctus vulputate. Proin accumsan eros sit amet vehicula egestas. Nulla porttitor lacinia tincidunt. Fusce porttitor sodales gravida.\r\n</p>\r\n<p>\r\nProin pharetra urna eu nibh molestie condimentum. Fusce vel leo lacus. Vivamus id neque posuere, interdum quam et, hendrerit dui. Fusce nisi ipsum, semper et quam sit amet, aliquet aliquet dolor. Ut dictum laoreet quam, quis imperdiet velit. Nulla eleifend scelerisque arcu vitae sodales. Sed eget semper mi. Pellentesque porttitor tristique nulla, sed pharetra lectus pellentesque ac. Morbi sit amet elementum elit. Proin at libero sit amet sem accumsan volutpat quis vitae magna.\r\n</p>\r\n<p>\r\nIn dictum at ipsum at semper. Nulla facilisi. Nam hendrerit augue in mi tristique, tempor ultrices libero mollis. Maecenas id lorem hendrerit, mollis sapien vel, placerat sapien. Aliquam lobortis imperdiet tempor. In hac habitasse platea dictumst. Quisque a nulla odio. Maecenas bibendum eu lectus non vehicula. Quisque in dolor nec ipsum auctor congue. Fusce in mi dapibus neque ornare aliquet. Integer id diam lectus. Quisque fringilla ligula et lectus ullamcorper, vitae porta orci facilisis. Aliquam erat volutpat. Duis fermentum odio a mauris luctus placerat. Morbi eget posuere diam. Nulla vel varius nulla.\r\n</p>\r\n<p>\r\nSed interdum erat id tortor dignissim, quis tincidunt ante mattis. Suspendisse facilisis porttitor eros vel condimentum. Curabitur porta, tellus nec congue posuere, orci mi commodo urna, non varius velit tortor at mi. Aliquam nisi erat, egestas non venenatis vestibulum, suscipit a risus. Vivamus fringilla viverra cursus. Duis sagittis faucibus turpis in placerat. Suspendisse congue leo eget nisi sagittis pretium. Cras commodo dignissim justo in luctus. Etiam ut est sit amet metus tincidunt feugiat nec ut nisl. Vivamus adipiscing hendrerit eros, a vulputate ligula viverra vitae. Nunc aliquam lectus eget urna lacinia egestas. Fusce velit ipsum, congue nec vulputate luctus, venenatis nec quam. Suspendisse gravida leo vitae cursus interdum. Praesent at ultrices tortor, at ullamcorper magna. Quisque placerat quam magna, at fringilla est accumsan ac. In tristique sapien id interdum ullamcorper.\r\n</p>\r\n<p>\r\nPraesent iaculis velit vehicula magna facilisis, ut consectetur erat pretium. Mauris gravida elit at auctor semper. Sed vel libero augue. Nulla ac fermentum augue. Integer ornare, urna eget rutrum porta, ligula quam vestibulum mauris, vel facilisis diam ante vel lectus. Ut congue posuere purus at molestie. Nulla facilisi. Aenean quis consectetur risus. Duis volutpat tortor eget dui tincidunt, quis suscipit magna sodales. Aenean volutpat vel neque eget commodo. Duis semper leo quis lectus tristique blandit.\r\n</p>', '2013-12-17 16:18:56', '2013-12-18 16:19:01', 1, 1, '2013/prog-lang.jpg', 'post', 'active', NULL),
(3, 'Programming Language V1.0.2', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam tincidunt scelerisque eros, a porta magna dictum ac. Aenean consequat, magna id cursus pharetra, turpis nunc convallis erat, non tempus nulla eros a urna. Phasellus quis sem laoreet, aliquet justo a, tempus orci. Sed blandit, augue et tincidunt rhoncus, mi nisi semper mauris, non eleifend neque sapien tempus sem. In fermentum lobortis accumsan. Mauris vitae dui elit. Maecenas sed leo a tellus bibendum bibendum eget a mi. Integer id diam id elit aliquet feugiat. In hac habitasse platea dictumst. Suspendisse eleifend, lorem eget viverra lacinia, erat nisl dapibus lacus, vitae venenatis turpis enim ut leo. Etiam non turpis condimentum, iaculis mi a, tempor tellus. Nullam fringilla luctus vulputate. Proin accumsan eros sit amet vehicula egestas. Nulla porttitor lacinia tincidunt. Fusce porttitor sodales gravida.\r\n</p>\r\n<p>\r\nProin pharetra urna eu nibh molestie condimentum. Fusce vel leo lacus. Vivamus id neque posuere, interdum quam et, hendrerit dui. Fusce nisi ipsum, semper et quam sit amet, aliquet aliquet dolor. Ut dictum laoreet quam, quis imperdiet velit. Nulla eleifend scelerisque arcu vitae sodales. Sed eget semper mi. Pellentesque porttitor tristique nulla, sed pharetra lectus pellentesque ac. Morbi sit amet elementum elit. Proin at libero sit amet sem accumsan volutpat quis vitae magna.\r\n</p>\r\n<p>\r\nIn dictum at ipsum at semper. Nulla facilisi. Nam hendrerit augue in mi tristique, tempor ultrices libero mollis. Maecenas id lorem hendrerit, mollis sapien vel, placerat sapien. Aliquam lobortis imperdiet tempor. In hac habitasse platea dictumst. Quisque a nulla odio. Maecenas bibendum eu lectus non vehicula. Quisque in dolor nec ipsum auctor congue. Fusce in mi dapibus neque ornare aliquet. Integer id diam lectus. Quisque fringilla ligula et lectus ullamcorper, vitae porta orci facilisis. Aliquam erat volutpat. Duis fermentum odio a mauris luctus placerat. Morbi eget posuere diam. Nulla vel varius nulla.\r\n</p>\r\n<p>\r\nSed interdum erat id tortor dignissim, quis tincidunt ante mattis. Suspendisse facilisis porttitor eros vel condimentum. Curabitur porta, tellus nec congue posuere, orci mi commodo urna, non varius velit tortor at mi. Aliquam nisi erat, egestas non venenatis vestibulum, suscipit a risus. Vivamus fringilla viverra cursus. Duis sagittis faucibus turpis in placerat. Suspendisse congue leo eget nisi sagittis pretium. Cras commodo dignissim justo in luctus. Etiam ut est sit amet metus tincidunt feugiat nec ut nisl. Vivamus adipiscing hendrerit eros, a vulputate ligula viverra vitae. Nunc aliquam lectus eget urna lacinia egestas. Fusce velit ipsum, congue nec vulputate luctus, venenatis nec quam. Suspendisse gravida leo vitae cursus interdum. Praesent at ultrices tortor, at ullamcorper magna. Quisque placerat quam magna, at fringilla est accumsan ac. In tristique sapien id interdum ullamcorper.\r\n</p>\r\n<p>\r\nPraesent iaculis velit vehicula magna facilisis, ut consectetur erat pretium. Mauris gravida elit at auctor semper. Sed vel libero augue. Nulla ac fermentum augue. Integer ornare, urna eget rutrum porta, ligula quam vestibulum mauris, vel facilisis diam ante vel lectus. Ut congue posuere purus at molestie. Nulla facilisi. Aenean quis consectetur risus. Duis volutpat tortor eget dui tincidunt, quis suscipit magna sodales. Aenean volutpat vel neque eget commodo. Duis semper leo quis lectus tristique blandit.\r\n</p>', '2013-12-18 16:19:01', '2013-12-18 16:19:01', 1, 1, '2013/progs.jpg', 'post', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_to_categories`
--

CREATE TABLE IF NOT EXISTS `post_to_categories` (
  `post_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_to_categories`
--

INSERT INTO `post_to_categories` (`post_id`, `category_id`) VALUES
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_to_tags`
--

CREATE TABLE IF NOT EXISTS `post_to_tags` (
  `post_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_to_tags`
--

INSERT INTO `post_to_tags` (`post_id`, `tag_id`) VALUES
(3, 3),
(2, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `title`, `desc`) VALUES
(1, 'belajar', 'belajar'),
(2, 'coding', 'coding'),
(3, 'program', 'program');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;