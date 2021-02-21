

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'American Tourister'),
(2, 'Samsonite');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_title` varchar(200) NOT NULL,
  `product_image` varchar(200) NOT NULL,
  `qty` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `total_amt` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `product_title`, `product_image`, `qty`, `price`, `total_amt`) VALUES
(1, 1, '0', 0, 'Samsung Dous 2', 'samsung mobile.jpg', 1, 5000, 5000),
(2, 2, '0', 0, 'iPhone 5s', 'iphone mobile.jpg', 1, 25000, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Trolere'),
(2, 'Genti laptop'),
(3, 'Genti business'),
(4, 'Genti copii'),
(5, 'Hobby-Aventura'),
(6, 'Accesorii');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Cosmolite Troler Spinner 86cm ', 2209, 'Cosmolite Troler Spinner 86cm Albastru Midnight ', 'Troler Spinner 86 cm albastru.jpg', 'troler spinner Cosmolite '),
(2, 1, 2, 'Lite-Shock Troler Spinner 75cm', 1429, 'Lite-Shock Troler Spinner 75cm Albastru Petrol', '1432-1.jpg', 'troler spinner Lite-Shock'),
(3, 1, 2, 'KARISSA BIZ Troler Spinner 55cm', 789, 'KARISSA BIZ Troler Spinner 55cm Dama Rosu', '4274-1.jpg', 'troler spinner cabina rosu'),
(4, 1, 2, 'Tunes Troler Spinner 55cm', 1129, 'Tunes Troler Spinner 55cm Gri mat ', '4790-1.jpg', 'troler spinner cabina gri'),
(5, 1, 2, 'Dynamore Troler Spinner 78cm', 789, 'Dynamore Troler Spinner 78cm Extensibil Negru', '4526-1.jpg', 'troler spinner negru'),
(6, 1, 2, 'Dynamore Troler Spinner 55cm', 699, 'Dynamore Troler Spinner 55cm Negru', '4524-1.jpg', 'troler spiner negru cabina'),
(7, 1, 1, 'Aero Racer Troler Spinner 68cm', 479, 'Aero Racer Troler Spinner 68cm Extensibil Verde Menta', '4803-1.jpg', 'troler spinner verde extensibil'),
(8, 1, 1, 'Aero Racer Troler Spinner 55cm', 429, 'Aero Racer Troler Spinner 55cm Mov', '4800-1.jpg', 'troler spiner cabina mov'),
(9, 1, 2, 'Lite-Shock Troler Spinner 55cm', 1429, 'Lite-Shock Troler Spinner 55cm Flori de Migdal - Van Gogh', '4699-1.jpg', 'troler spinner cabina flori'),
(10, 2, 2, 'AEROSPACE Geanta Laptop 15.6 inci Ext. Negru', 799, 'AEROSPACE Geanta Laptop 15.6 inci Ext. Negru', '4698-1.jpg', 'geanta laptop extensibil negru Equinox Geanta Piele Laptop 15,6 inci'),
(11, 2, 2, 'Equinox Geanta Piele Laptop 15,6 inci Maro', 1729, 'Equinox Geanta Piele Laptop 15,6 inci Maro', '3003-1.jpg', 'geanta laptop Equinox Geanta Piele Laptop 15,6 inci Maro '),
(12, 2, 2, 'Equinox Geanta Piele Laptop 15,6 inci Neagra', 1729, 'Equinox Geanta Piele Laptop 15,6 inci Neagra', '2348-1.jpg', 'geanta laptop Piele 15,6 inci negru'),
(13, 2, 2, 'Formalite GEANTA PIELE LAPTOP 14.1 INCH NEGRU', 1259, 'Formalite LTH FORMALITE LTH-004 GEANTA PIELE LAPTOP 14.1 INCH NEGRU 09', '5083-1.jpg', 'geanta laptop Piele negru 14,1 inci'),
(14, 2, 2, 'Pro-DLX 4 Servieta ext. Laptop L 16 inci Gri Magnetic', 949, 'Pro-DLX 4 Servieta ext. Laptop L 16 inci Gri Magnetic', '2830-1.jpg', 'geanta laptop 16 inci gri extensibil'),
(15, 2, 2, 'Lady Tech Geanta Laptop 15.6 inci Dama Negru', 679, 'Lady Tech Geanta Laptop 15.6 inci Dama Negru', '2823-1.jpg', 'lady dama geanta laptop 15,6 inci negru'),
(16, 2, 2, 'Lady Tech Geanta Laptop 15.6 inci Dama Rust', 679, 'Lady Tech Geanta Laptop 15.6 inci Dama Rust', '2818-1.jpg', 'lady dama geanta laptop 15,6 inci rosu'),
(17, 2, 2, 'Zalia Geanta Laptop 15.6 inci Dama Bej', 789, 'Zalia Geanta Laptop 15.6 inci Dama Bej', '3021-1.jpg', 'lady dama geanta laptop 15,6 inci bej'),
(18, 2, 2, 'Zalia Geanta Laptop 15.6 inci Dama Albastru inchis', 789, 'Zalia Geanta Laptop 15.6 inci Dama Albastru inchis', '4671-1.jpg', 'lady dama geanta laptop 15,6 inci albastru'),
(19, 3, 2, 'Equinox Servieta Piele Laptop 15,6 inci Doua comp. Neagra', 1829, 'Equinox Servieta Piele Laptop 15,6 inci Doua comp. Neagra', '1893-1.jpg', 'Servieta Piele laptop 15,6 inci negru'),
(20, 3, 2, 'Equinox Servieta Piele Laptop 15,6 inci Doua comp. Maro', 1829, 'Equinox Servieta Piele Laptop 15,6 inci Doua comp. Maro', '2346-1.png', 'Servieta Piele lady 15,6 inci maro'),
(21, 3, 2, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Negru', 599, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Negru', '4271-1.jpg', 'geanta laptop dama lady Neagra'),
(22, 3, 2, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Albastru Navy', 599, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Albastru Navy', '4268-1.jpg', 'geanta lady dama laptop albastru'),
(23, 3, 2, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Rosu', 599, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Rosu', '4269-1.jpg', 'geanta lady dama laptop rosu'),
(24, 3, 2, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Verde Gunmetal', 599, 'KARISSA BIZ Geanta Laptop 15.6 inci Dama Verde Gunmetal', '4270-1.jpg', 'geanta lady dama laptop gri verde'),
(25, 3, 2, 'Pro-DLX 5 Geanta Piele Laptop 15.6 inci cu roti Negru', 2579, 'Pro-DLX 5 LTH Geanta Piele Laptop 15.6 inci Business cu roti Negru', '4507-1.jpg', 'troler laptop piele negru business'),
(26, 3, 2, 'Spectrolite 2.0 Geanta laptop 15.6 inci cu Roti Office Gri/Negru', 939, 'Spectrolite 2.0 Geanta laptop 15.6 inci cu Roti Office Gri/Negru', '4258-1.jpg', 'troler laptop gri'),
(27, 3, 2, 'Spectrolite 2.0 Geanta laptop 15.6 inci cu Roti Office Negru', 939, 'Spectrolite 2.0 Geanta laptop 15.6 inci cu Roti Office Negru', '4259-1.jpg', 'troler laptop negru'),
(28, 3, 2, 'Sygnum Servieta Piele Laptop 15.6 inci 3Comp. Negru', 1809, 'Sygnum Servieta Piele Laptop 15.6 inci 3Comp. Negru', '2395-1.jpg', 'servieta piele laptop negru'),
(29, 3, 2, 'ZENITH DLX-004 SERVIETA LAPTOP 15.6 INCH-NEGRU 09', 929, 'ZENITH DLX ZENITH DLX-004 SERVIETA LAPTOP 15.6 INCH-NEGRU 09', '5007-1.jpg', 'servieta laptop negru'),
(30, 4, 1, 'New Wonder Upright 45cm Cars 3', 369, 'New Wonder Upright 45cm Cars 3', '3780-1.jpg', 'troler copii Upright'),
(31, 4, 1, 'Disney Legends Troler Spinner 65cm Alfatwist Mickey Pop', 579, 'Disney Legends Troler Spinner 65cm Alfatwist Mickey Pop', '1130-1.jpg', 'troler spinner copii Mickey Disney'),
(32, 4, 1, 'Disney Legends Troler Spinner 65cm Mickey Flash Pop', 579, 'Disney Legends Troler Spinner 65cm Mickey Flash Pop', '3275-1.JPG', 'troler spinner copii Mickey Disney'),
(33, 4, 1, 'Disney Legends Troler Spinner 65cm Minnie Comics', 579, 'Disney Legends Troler Spinner 65cm Minnie Comics', '3276-1.jpg', 'troler spinner copii Minnie Disney'),
(34, 4, 1, 'Disney Legends Troler Spinner 65cm Mickey Comics', 579, 'Disney Legends Troler Spinner 65cm Mickey Comics', '3281-1.jpg', 'troler spinner copii Mickey Disney'),
(35, 4, 1, 'Disney Legends Troler Spinner 65cm Alfatwist Mickey Pop', 579, 'Disney Legends Troler Spinner 65cm Alfatwist Mickey Pop', '1130-1.jpg', 'troler spinner copii Mickey Disney'),
(36, 4, 1, 'Disney Legends Troler Spinner 65cm Mickey Flash Pop', 579, 'Disney Legends Troler Spinner 65cm Mickey Flash Pop', '3275-1.JPG', 'troler spinner copii Mickey Disney'),
(37, 4, 1, 'Disney Legends Troler Spinner 65cm Minnie Comics', 579, 'Disney Legends Troler Spinner 65cm Minnie Comics', '3276-1.jpg', 'troler spinner copii Minnie Disney'),
(38, 4, 1, 'Disney Legends Troler Spinner 65cm Alfatwist Minnie Kiss', 579, 'Disney Legends Troler Spinner 65cm Alfatwist Minnie Kiss', '4356-1.jpg', 'troler spinner copii Minnie Disney'),
(39, 4, 1, 'Disney Legends Troler Spinner 65cm Alfatwist Mickey Kiss', 579, 'Disney Legends Troler Spinner 65cm Alfatwist Mickey Kiss', '4357-1.jpg', 'troler spinner copii Mickey Disney'),
(40, 4, 2, 'Disney Ultimate 2.0 Ghiozdan S Disney Mickey Letters', 179, 'Disney Ultimate 2.0 Ghiozdan S Disney Mickey Letters', '4631-1.jpg', 'rucsac copii Mickey Disney'),
(41, 4, 2, 'Disney Ultimate 2.0 Troler Spinner 46cm Mickey Letters', 419, 'Disney Ultimate 2.0 Troler Spinner 46cm Mickey Letters', '4629-1.jpg', 'troler spinner copii Mickey Disney'),
(42, 4, 2, 'Disney Ultimate 2.0 Troler Spinner Disnet Minnie Neon', 599, 'Disney Ultimate 2.0 Troler Spinner Disnet Minnie Neon', '4461-1.jpg', 'troler spinner copii Minnie Disney'),
(43, 4, 1, 'Wavebreaker MARVEL Troler Spinner 77cm Iron Man', 679, 'Wavebreaker MARVEL Troler Spinner 77cm Iron Man Close-Up', '4364-1.jpg', 'troler spinner MARVEL copii'),
(44, 5, 2, 'B-Lite ICON Duffle Geanta sport 55 cm Albastru inchis', 599, 'B-Lite ICON Duffle Geanta sport 55 cm Albastru inchis', '4441-1.jpg', 'geanta sport albastru'),
(45, 5, 2, 'B-Lite ICON Duffle/ Geanta sport 55 cm Nisipiu', 599, 'B-Lite ICON Duffle/ Geanta sport 55 cm Nisipiu', '4442-1.jpg', 'geanta sport gri'),
(46, 5, 2, 'B-Lite ICON Duffle/ Geanta sport 55 cm Negru', 599, 'B-Lite ICON Duffle/ Geanta sport 55 cm Negru', '4443-1.jpg', 'geanta sport negru'),
(47, 5, 2, 'B-Lite ICON Duffle/ Geanta sport 55 cm Rosu rubin', 599, 'B-Lite ICON Duffle/ Geanta sport 55 cm Rosu rubin', '4444-1.jpg', 'geanta sport rosu'),
(48, 5, 2, 'Cityvibe Rucsac S Urban Cityvibe - Negru', 409, 'Cityvibe Rucsac S Urban Cityvibe - Negru', '768-1.jpg', 'rucsac negru'),
(49, 5, 2, 'Disney Forever Geanta Sport 32L Minnie Pastel', 349, 'Disney Forever Geanta Sport 32L Minnie Pastel', '3301-1.jpg', 'geanta sport Disney Minnie'),
(50, 5, 2, 'Move 2.0 Rucsac Dama Albastru inchis', 349, 'Move 2.0 Rucsac Dama Albastru inchis', '3237-1.jpg', 'rucsac sport albastru dama'),
(51, 5, 2, 'Move 2.0 Rucsac Dama Negru', 349, 'Move 2.0 Rucsac Dama Negru', '3260-1.jpg', 'rucsac sport negru dama'),
(52, 5, 2, 'Paradiver Light Rucsac M Negru', 379, 'Paradiver Light Rucsac M Negru', '4075-1.jpg', 'rucsac negru'),
(53, 5, 2, 'Paradiver Light Rucsac M Albastru jeans', 379, 'Paradiver Light Rucsac M Albastru jeans', '4146-1.jpg', 'rucsac albastru'),
(54, 6, 2, 'Accesorii Calatorie Adaptor 2 priza World/Europa Grafit', 59, 'Accesorii Calatorie Adaptor 2 priza World/Europa Grafit', '2553-1.jpg', 'Accesorii Calatorie'),
(55, 6, 2, 'ALU DROP UMBRELA AUTOMATA 5 SECT-ALBASTRU', 139, 'ALU DROP S-005 UMBRELA AUTOMATA 5 SECT-ALBASTRU 01', '5067-1.jpg', 'Accesorii UMBRELA'),
(56, 6, 2, 'ALU DROP S UMBRELA AUTOMATA 5 SECT-NEGRU', 139, 'ALU DROP S-005 UMBRELA AUTOMATA 5 SECT-NEGRU', '4946-1.jpg', 'Accesorii UMBRELA'),
(57, 6, 2, 'ALU DROP S UMBRELA AUTOMATA 5 SECT-ROSU', 139, 'ALU DROP S-005 UMBRELA AUTOMATA 5 SECT-ROSU 10', '4947-1.jpg', 'Accesorii UMBRELA'),
(58, 6, 2, 'Eticheta valiza din piele Coniac', 39, 'Accesorii Calatorie Eticheta valiza din piele Coniac', '4747-1.jpg', 'Accesorii Calatorie Eticheta piele'),
(59, 6, 2, 'KARISSA Portofel dama piele L Bordo', 399, 'KARISSA LTH SLG Portofel dama piele L Zip Around Bordo', '4339-1.jpg', 'Portofel dama piele Bordo'),
(60, 6, 2, 'KARISSA Portofel dama piele L Negru', 399, 'KARISSA LTH SLG Portofel dama piele L Zip Around Negru', '4340-1.jpg', 'Portofel dama piele negru'),
(61, 6, 2, 'KARISSA Portofel dama piele Gri Army', 399, 'KARISSA LTH SLG Portofel dama piele L Zip Around Gri Army', '4341-1.jpg', 'Portofel dama piele gri'),
(62, 6, 2, 'OUTLINE PORTOFEL BARBATI VERT. MARO/TURCOAZ', 229, 'OUTLINE 2 SLG OUTLINE 2 SLG-137 PORTOFEL BARBATI VERT. MARO/TURCOAZ 13', '4444-1.jpg', 'Portofel BARBATI maro'),
(63, 6, 2, 'OUTLINEPORTOFEL BARBATI VERT. ALBASTRU/ROSU', 229, 'OUTLINE 2 SLG OUTLINE 2 SLG-137 PORTOFEL BARBATI VERT. ALBASTRU/ROSU 61', '4885-1.jpg', 'Portofel BARBATI albastru'),
(64, 6, 2, 'Accesorii Calatorie Perna calatorie albastru', 79, 'Accesorii Calatorie Perna calatorie albastru', '3981-1.jpg', 'Accesorii calatorie Perna albastru'),
(65, 6, 2, 'Accesorii Calatorie Perna calatorie grafit', 79, 'Accesorii Calatorie Perna calatorie grafit', '3982-1.jpg', 'Accesorii calatorie Perna gri'),
(66, 4, 1, 'Wavebreaker MARVEL Troler Spinner 77cm Captain America', 679, 'Wavebreaker MARVEL Troler Spinner 77cm Captain America Close-Up', '4365-1.jpg', 'troler spinner MARVEL copii');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Eva', 'Albert', 'eva@gmail.com', 'eva123', '0742935241', 'Cluj-Napoca', 'Mehedinti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
