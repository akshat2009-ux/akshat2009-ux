
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `date`, `mobile`, `email`) VALUES
(2, 'Vishal', '2020-05-26', 7988103564, 'vishal123@gmail.com'),
(8, 'Dimpel     ', '2020-05-19', 9874563214, 'dimpel123@gmail.com'),
(11, 'Sarad', '1999-05-26', 8968084658, 'singhsarad57@gmail.com'),
(13, 'sdsfdgh', '2017-04-27', 7410852096, 'ashvajshkajks@agsjh.coid'),
(14, 'Ravi', '2004-07-31', 0, 'dazfasf@gmail.com'),
(22, 'Anurag', '1999-05-12', 8756897452, 'hhghv@gmail.com'),
(23, 'gfvhg', '', 78945612, 'njhjgvhcfvbj@gmail.com');



ALTER TABLE `users`
  ADD PRIMARY KEY (`id`,`mobile`);



ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;
