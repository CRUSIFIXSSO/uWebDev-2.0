INSERT INTO ecommerce (subject, content, date) VALUES ('This is the subject',
 'Ecommerce, also known as electronic commerce or internet commerce, 
 refers to the buying and selling of goods or services using the internet, 
 and the transfer of money and data to execute these transactions.', '2020-01-10 
 09:22:01');

 INSERT INTO ecommerce (subject, content, date) VALUES ('This is a new project',
  'sportsshoes is a sports company that sells alot of shoes and sports product',
  '2020-01-10 10:24:33');

  INSERT INTO `ecomdb`.`ecommerce` (`id`, `subject`, `content`, `date`) VALUES ('3', 
  'This is going to be php7&5', 'php has evolved and php5 and 7 is widely used', 
  '2020-01-10 10:53:52');
  SELECT `id`, `subject`, `content`, `date` FROM `ecomdb`.`ecommerce` WHERE  `id`=3;

  INSERT INTO ecommerce (subject, content, date) VALUES ('This is a new php7.4',
  'Adidas is a sports company that sells alot of shoes and sports product',
  '2020-01-10 10:47:33');