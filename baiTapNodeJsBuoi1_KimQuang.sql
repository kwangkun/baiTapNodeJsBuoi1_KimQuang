/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `food` (
  `food_id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `desc` varchar(255) NOT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `like_res` (
  `user_id` int NOT NULL,
  `res_id` int NOT NULL,
  `date_id` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `order` (
  `user_id` int NOT NULL,
  `food_id` int NOT NULL,
  `amount` int NOT NULL,
  `code` varchar(255) NOT NULL,
  `arr_sub_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `rate_res` (
  `user_id` int NOT NULL,
  `res_id` int NOT NULL,
  `amount` int NOT NULL,
  `date_rate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `restaurant` (
  `res_id` int NOT NULL AUTO_INCREMENT,
  `res_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sub_food` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(255) NOT NULL,
  `sub_price` float NOT NULL,
  `food_id` int NOT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(1, 'thit ca', '...', 50000, '...', 1);
INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(2, 'thit heo', '...', 40000, ',,,', 2);
INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(3, 'thit bo', '...', 60000, '...', 2);
INSERT INTO `food` (`food_id`, `food_name`, `image`, `price`, `desc`, `type_id`) VALUES
(4, 'tom hum', '...', 100000, ',,,', 1),
(5, 'thit luon', '...', 70000, ',,,', 1);

INSERT INTO `like_res` (`user_id`, `res_id`, `date_id`) VALUES
(1, 1, '2020-10-25 00:00:00');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_id`) VALUES
(2, 2, '2020-10-30 00:00:00');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_id`) VALUES
(3, 2, '2020-11-01 00:00:00');
INSERT INTO `like_res` (`user_id`, `res_id`, `date_id`) VALUES
(4, 1, '2020-11-02 00:00:00'),
(5, 3, '2020-11-05 00:00:00');

INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(1, 1, 10, 'A1', '123');
INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(2, 3, 5, 'A2', '223');
INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(3, 2, 5, 'A3', '323');
INSERT INTO `order` (`user_id`, `food_id`, `amount`, `code`, `arr_sub_id`) VALUES
(4, 5, 1, 'A4', '423'),
(5, 4, 2, 'A5', '523'),
(2, 2, 3, 'A6', '623'),
(3, 1, 7, 'A7', '723');

INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(1, 1, 5, '2022-10-25 00:00:00');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(2, 1, 3, '2022-10-30 00:00:00');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(3, 2, 4, '2022-11-02 00:00:00');
INSERT INTO `rate_res` (`user_id`, `res_id`, `amount`, `date_rate`) VALUES
(4, 3, 2, '2022-11-03 00:00:00'),
(5, 2, 2, '2022-11-05 00:00:00'),
(1, 2, 2, '2022-11-06 00:00:00'),
(2, 3, 3, '2022-11-08 00:00:00'),
(4, 1, 2, '2022-11-10 00:00:00');

INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `description`) VALUES
(1, 'resNo1', '...', '...');
INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `description`) VALUES
(2, 'resNo2', '...', '...');
INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `description`) VALUES
(3, 'resNo3', '...', '...');
INSERT INTO `restaurant` (`res_id`, `res_name`, `image`, `description`) VALUES
(4, 'resNo4', '...', '...'),
(5, 'resNo5', '...', '...');

INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(1, 'subCa', 45000, 1);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(2, 'subHeo', 35000, 2);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(3, 'subBo', 55000, 2);
INSERT INTO `sub_food` (`sub_id`, `sub_name`, `sub_price`, `food_id`) VALUES
(4, 'subTom', 90000, 1),
(5, 'subLuon', 60000, 1);

INSERT INTO `user` (`user_id`, `full_name`, `email`, `password`) VALUES
(1, 'Pham Kim Quang', 'kq@email.com', 'kqpassword');
INSERT INTO `user` (`user_id`, `full_name`, `email`, `password`) VALUES
(2, 'Nguyen Van A', 'va@email.com', 'vapassword');
INSERT INTO `user` (`user_id`, `full_name`, `email`, `password`) VALUES
(3, 'Dinh Van B ', 'vb@email.com', 'vbpassword');
INSERT INTO `user` (`user_id`, `full_name`, `email`, `password`) VALUES
(4, 'Do Uyen Thu', 'ut@email.com', 'utpassword'),
(5, 'Dinh Sang', 'ds@email.com', 'dspassword');

-- tìm 5 người like nhà hàng nhiều nhất
select `user`.user_id, count(`user`.user_id) as total_like from `user`
left join like_res
on `user`.user_id = like_res.user_id
group by `user`.user_id
order by total_like desc
limit 5;

-- tìm 2 nhà hàng có nhiều lượt like nhất
select restaurant.res_id, count(restaurants.res_id) as total_like from restaurant
left join like_res
on restaurant.res_id = like_res.res_id
group by restaurant.res_id
order by total_like desc
limit 2;

-- tìm người đặt hàng nhiều nhất
select `user`.user_id, count(`user`.user_id) as total_order from `user`
left join orders
on `user`.user_id = `order`.user_id
group by `user`.user_id
order by total_order desc
limit 1;

-- tìm người dùng không hoạt động trên hệ thống
select `user`.user_id, count(like_res.user_id) as total_like, count(`order`.user_id) as total_order, count(rate_res.user_id) as total_rate from `user`
left join like_res
on `user`.user_id = like_res.user_id
left join `order`
on `user`.user_id = `order`.user_id
left join rate_res
on `user`.user_id = rate_res.user_id
group by `user`.user_id
having(total_like = 0 && total_rate = 0 && total_order = 0);

-- tính trung bình sub_food của một food
select food.food_id, avg(sub_food.sub_price) as avg_sub_price from food
left join sub_food
on food.food_id = sub_food.food_id
group by food.food_id;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;