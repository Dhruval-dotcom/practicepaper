-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2023 at 03:51 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int NOT NULL,
  `ques_id` int NOT NULL,
  `ans_text` text NOT NULL,
  `correct_ans` varchar(255) NOT NULL,
  `sort_order` text NOT NULL,
  `start_val` varchar(255) NOT NULL,
  `stop_val` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int NOT NULL,
  `quiz_id` int NOT NULL,
  `question_descreption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `marks` int NOT NULL,
  `type_of_que` varchar(255) NOT NULL,
  `solution` text NOT NULL,
  `year` int NOT NULL,
  `subject` varchar(255) NOT NULL,
  `chapter` varchar(255) NOT NULL,
  `option-1` text NOT NULL,
  `option-2` text NOT NULL,
  `option-3` text NOT NULL,
  `option-4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `quiz_id`, `question_descreption`, `marks`, `type_of_que`, `solution`, `year`, `subject`, `chapter`, `option-1`, `option-2`, `option-3`, `option-4`) VALUES
(1, 1, 'Consider functions Function 1 and Function 2 expressed in pseudocode as follows:\r\n\r\n    Let $f_{1}(n)$ and $f_{2}(n)$ denote the number of times the statement \"\\(x = x + 1\\)\" is executed in\r\n    Function 1 and Function 2, respectively.\r\n    Which of the following statements is/are TRUE?', 4, 'soc', 'a', 2023, 'algorithm', 'algorithm', '$f_{1}(n) \\in \\theta(f_{2}(n))$ ', '$f_{1}(n) \\in o(f_{2}(n))$', '$f_{1}(n) \\in \\omega(f_{2}(n))$', '$f_{1}(n) \\in O(n)$'),
(2, 1, 'Let $f$ and $g$ be functions of natural numbers given by $f(n) = n$ and $g(n) = n²$.\r\n    Which of the following statements is/are TRUE?', 4, 'mcq', 'a|b|c', 2022, 'algorithm', 'algorithm', '$f(n) \\in O(g)$', '$f(n) \\in \\Omega(g)$', '$f(n) \\in o(g)$', '$f(n) \\in \\theta(g)$'),
(3, 1, 'Which of the following statements is/are TRUE for all positive functions $f(n)$?', 4, 'soc', 'd', 2022, 'algorithm', 'algorithm', '$f(n²) \\in \\theta(f(n)²)$', '$f(n²) \\in o(f(n)²)$', '$f(n²) \\in O(f(n)²)$', '$f(n²) \\in \\Omega(f(n)²)$'),
(4, 1, 'Consider the following three functions. <br>\r\n    $f_{1} = 10^n$ $f_{2} = n^{logn}$ $f_{3} = n^{sqrt n}$', 4, 'mcq', 'a|d', 2013, 'algorithm', 'algorithm', '$f_{1}, f_{2}, f_{3}$', '$f_{3}, f_{2}, f_{1}$', '$f_{2}, f_{3}, f_{1}$', '$f_{2}, f_{3}, f_{1}$'),
(5, 1, 'what is the complexity for the following code?\r\n    <br>\r\n    <pre>\r\n        sum = 0 \r\n            for(i=1;i &lt n;i*=2)\r\n                for(j=1;j &lt= n;j++)\r\n                    sum++;\r\n    </pre>', 4, 'soc', 'd', 2013, 'algorithm', 'algorithm', '$O(n^{2})$', '$O(n log n)$', '$O(n)$', '$O(n log n log n)$'),
(6, 1, 'There are n unsorted arrays: $A_{1}, A_{2}, ..., A_{n}$. Assume that n is odd. Each of $A_{1}, A_{2}, ..., A_{n}$ contains n distinct elements. There are no\r\n    common elements between any two arrays. The worst-case Asymptotic Notation of computing the median of the medians of\r\n    $A_{1}, A_{2}, ..., A_{n}$ is', 4, 'soc', 'd', 2022, 'algorithm', 'algorithm', '$O(n)$', '$O(nlogn)$', '$O(n^2)$', '$\\Omega(n^2logn)$'),
(7, 1, 'Consider the following C function\r\n\r\n    <pre>\r\n        int fun (int n){\r\n            int i, j;\r\n            for(i = 1; i &lt; = n; i++){\r\n                for (j = 1; j &lt; n; j+=i){\r\n                    printf(\"%d %d\", i, j);\r\n                }\r\n            }\r\n        }\r\n    </pre>\r\n    Asymtotic notation of fun in therms of $	heta$ is :', 4, 'soc', 'b', 2020, 'algorithm', 'algorithm', '$\\theta(n \\sqrt n)$', '$\\theta(n^2)$', '$\\theta(nlogn)$', '$\\theta(n^2logn)$'),
(8, 1, 'Match the algorithms with their time complexities:', 4, 'soc', 'c', 2020, 'algorithm', 'algorithm', 'P-(iii), Q-(iv), R-(i), S-(ii)', 'P-(iv), Q-(iii), R-(i), S-(ii)', 'P-(iii), Q-(iv), R-(ii), S-(i)', 'P-(iv), Q-(iii), R-(ii), S-(i)'),
(9, 1, 'Consider the following functions from positive integers to real numbers: <br>\r\n    10, $ \\sqrt n$, n, $log_{2}n$, $100 \\over n$ <br>\r\n\r\n    The CORRECT arrangement of the above functions in increasing order of asymptotic complexity is:', 4, 'soc', 'c', 2015, 'algorithm', 'algorithm', '$log_{2}n$, $100 \\over n$, 10, $\\sqrt n$, n', '$100 \\over n$, 10, $log_{2}n$, $\\sqrt n$, n', '10, $100 \\over n$, $\\sqrt n$, log₂n, n', '$100 \\over n$, $log_{2}n$, 10, $\\sqrt n$, n'),
(10, 1, 'In an adjacency list representation of an undirected simple graph G = (V,E), each edge (u,v) has two adjacency \r\n    list entries: |v| in theadjacency list of u, and |u| in the adjacency list of v. These are called twins of each other. \r\n    A twin pointer is a pointer from an adjacency list entry to its twin. If |E|=m and |V|=n, and the memory size is not a \r\n    constraint, what is the Asymptotic Notation of the most\r\n    efficient algorithm to set the twin pointer in each entry in each adjacency list?', 4, 'mcq', 'a|b|c|d', 2015, 'algorithm', 'algorithm', '$\\theta(n^2)$', '$\\theta(n+m)$', '$\\theta(m^2)$', '$\\theta(n^4)$'),
(13, 2, 'Which of the following is false in the case of a spanning tree of a graph G?', 4, 'mcq', 'a|d', 2014, 'minimum spanning tree', 'minimum spanning tree', 'It is tree that spans G', 'It is a subgraph of the G', 'It includes every vertex of the G', ' It can be either cyclic or acyclic'),
(14, 2, 'Consider a complete graph G with 4 vertices. The graph G has ____ spanning trees.', 4, 'soc', 'd', 2017, 'minimum spanning tree', 'minimum spanning tree', '15', '8', '16', ' 13'),
(15, 2, 'The travelling salesman problem can be solved using _________', 4, 'soc', 'd', 2020, 'minimum spanning tree', 'minimum spanning tree', 'A spanning tree', 'A minimum spanning tree', 'Bellman – Ford algorithm', ' DFS traversal');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `name`) VALUES
(1, 'asymptotic notation'),
(2, 'Recurrence Relation'),
(3, 'Divide and Conquer'),
(4, 'Greedy Technique'),
(5, 'Minimum Spanning Tree');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
