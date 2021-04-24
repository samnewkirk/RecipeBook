-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2021 at 09:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `beer`
--

CREATE TABLE `beer` (
  `beer_id` int(11) NOT NULL,
  `food_id` int(11) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beer`
--

INSERT INTO `beer` (`beer_id`, `food_id`, `type`, `description`) VALUES
(1, NULL, 'IPA', 'hoppy'),
(2, NULL, 'Pale Ale', 'less abv'),
(4, NULL, 'Stout', 'malts galore'),
(5, NULL, 'Porter', 'less abv'),
(6, NULL, 'Lager', 'beer flavored water'),
(7, NULL, 'Amber', 'malty'),
(8, NULL, 'Trappist', 'fancy esters'),
(9, NULL, 'Wheat', 'refreshing'),
(10, NULL, 'Sour', 'thirst quenching'),
(11, NULL, 'Saison', 'classic');

-- --------------------------------------------------------

--
-- Table structure for table `cocktail`
--

CREATE TABLE `cocktail` (
  `cocktail_id` int(11) NOT NULL,
  `food_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `spirit` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `recipe` varchar(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cocktail`
--

INSERT INTO `cocktail` (`cocktail_id`, `food_id`, `ingredient_id`, `name`, `spirit`, `type`, `recipe`) VALUES
(1, NULL, 1, 'Old Fashioned', 'Rye', 'Stir', '2 dsah ango, 1 dash orange, barspoon simple, 2 rye whiskey'),
(2, NULL, NULL, 'Aviation no.1', 'Gin', 'Shake', '.75 lemon, .25 creme de violet, .5 lux maraschino, 2 gin'),
(3, NULL, NULL, 'Corpse Reviver', 'Gin', 'Shake', '2 dash absinthe, .75 lemon, .75 cointreu, .75 gin'),
(6, NULL, NULL, 'Gin & Tonic', 'Gin', 'Stir', '1.5 dry gin, fever tree indian tonic water, squeeze fresh lime '),
(7, NULL, 9, 'Margarita', 'Tequila', 'Shake', '.25 agave, .75 lime, .5 cointreu, 1.5 tequila'),
(8, NULL, NULL, 'Americano', 'Vermouth', 'Stir', '1oz carpano sweet vermouth, 1oz campari dry vermouth, soda, fresh lime'),
(9, NULL, 8, 'French 75', 'Cognac', 'Shake', '.5 cane, .5 lemon, 1 cognac, top with bubbles'),
(10, NULL, 7, 'Toronto', 'Rye', 'Stir', '2 dash ango, barspoon demerara, .25 fernet, 2 rye whiskey'),
(11, NULL, 5, 'Mai Tai ', 'Rum', 'Shake', 'a lot of stuff'),
(12, NULL, 2, 'Penicillin', 'Scotch', 'Shake', '.75 lemon, .5 honey, .5 ginger, 2 scotch '),
(15, NULL, NULL, 'test', 'test', 'teset', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `coffee`
--

CREATE TABLE `coffee` (
  `coffee_id` int(11) NOT NULL,
  `food_id` int(11) DEFAULT NULL,
  `name` varchar(15) DEFAULT NULL,
  `recipe` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coffee`
--

INSERT INTO `coffee` (`coffee_id`, `food_id`, `name`, `recipe`) VALUES
(1, NULL, 'Cold Brew', 'beans, cold water, time'),
(2, NULL, 'Latte', 'hot coffee, foamy milk'),
(3, NULL, 'Mocha', 'hot coffee, chocolate syr'),
(4, NULL, 'Blended Mocha', 'cold coffee, chocolate sy'),
(5, NULL, 'Americano', 'coffee, hot water'),
(6, NULL, 'Cappuccino', 'froathy'),
(7, NULL, 'Macchiato', 'tiny foathy'),
(8, NULL, 'Vietnamese Iced', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(11) NOT NULL,
  `cocktail_id` int(11) DEFAULT NULL,
  `wine_id` int(11) DEFAULT NULL,
  `beer_id` int(11) DEFAULT NULL,
  `coffee_id` int(11) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `recipe` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `cocktail_id`, `wine_id`, `beer_id`, `coffee_id`, `name`, `type`, `recipe`) VALUES
(1, 9, 7, 2, NULL, 'Chicken Salad', 'Chicken', 'yum yum'),
(2, 6, 4, 6, NULL, 'Tantanmen Ramen', 'Pork', 'yummmmmmmmmmmm'),
(3, 7, 7, 1, NULL, 'Taco Meat', 'Beef', 'mmmmmmmmmmmmmmm'),
(4, 11, 10, 7, NULL, 'Thai Curry', 'Veg', 'spice'),
(5, NULL, 9, 4, 2, 'Chocolate Chip Cookies', 'Dessert', 'GOAT'),
(6, 10, 2, 8, NULL, 'Pan Seared Ribeye', 'Beef', 'fancy'),
(7, 8, 6, 10, NULL, 'Chicken Enchiladas', 'Chicken', 'comfort food'),
(8, 1, 1, 7, NULL, 'Shepard\'s Pie', 'Pork', 'rainy day food'),
(9, 3, 8, 11, NULL, 'Bolognese', 'Pasta', 'yummmmmmmmm'),
(10, 12, 4, 9, NULL, 'Oven Baked Salmon', 'Fish', 'fish -> oven');

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

CREATE TABLE `ingredient` (
  `ingredient_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `recipe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`ingredient_id`, `name`, `recipe`) VALUES
(1, 'Simple', 'equal parts sugar and hot water'),
(2, 'Ginger Syrup', 'equal parts juiced ginger and simple syrup'),
(3, 'Ginger Beer', 'secret formula '),
(4, 'Honey Syrup', '3 parts honey, 1 part hot water'),
(5, 'Orgeat', 'toasted almongs, water, sugar, heat'),
(7, 'Demerara', 'decadent'),
(8, 'Cane', 'from plants'),
(9, 'Agave', 'also from plants'),
(10, 'Stawberry Syrup', 'only when in season'),
(11, 'Stout Syrup', 'decadent');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `role` varchar(25) DEFAULT NULL,
  `edit_access` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wine`
--

CREATE TABLE `wine` (
  `wine_id` int(11) NOT NULL,
  `food_id` int(11) DEFAULT NULL,
  `grape` varchar(15) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wine`
--

INSERT INTO `wine` (`wine_id`, `food_id`, `grape`, `region`, `type`) VALUES
(1, NULL, 'Nebbiolo', 'Italy', 'Red'),
(2, NULL, 'Dolcetto', 'Italy', 'Red'),
(3, NULL, 'Chardonnay', 'France', 'White'),
(4, NULL, 'Sauvignon Blanc', 'France', 'White'),
(5, NULL, 'Cabernet Franc', 'France', 'Red'),
(6, NULL, 'Champagne', 'France', 'Spakling'),
(7, NULL, 'Gruner Veltline', 'Austria', 'White'),
(8, NULL, 'Sangiovese', 'Italy', 'Red'),
(9, NULL, 'Pinot Noir', 'France', 'Red'),
(10, NULL, 'Pinot Gris', 'France', 'White');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beer`
--
ALTER TABLE `beer`
  ADD PRIMARY KEY (`beer_id`);

--
-- Indexes for table `cocktail`
--
ALTER TABLE `cocktail`
  ADD PRIMARY KEY (`cocktail_id`);

--
-- Indexes for table `coffee`
--
ALTER TABLE `coffee`
  ADD PRIMARY KEY (`coffee_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `ingredient`
--
ALTER TABLE `ingredient`
  ADD PRIMARY KEY (`ingredient_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `wine`
--
ALTER TABLE `wine`
  ADD PRIMARY KEY (`wine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beer`
--
ALTER TABLE `beer`
  MODIFY `beer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cocktail`
--
ALTER TABLE `cocktail`
  MODIFY `cocktail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `coffee`
--
ALTER TABLE `coffee`
  MODIFY `coffee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ingredient`
--
ALTER TABLE `ingredient`
  MODIFY `ingredient_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wine`
--
ALTER TABLE `wine`
  MODIFY `wine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
