CREATE TABLE  if not exists  `teacher`
(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    title VARCHAR(255) NOT NULL,
    introduce_text TEXT,
    photo_url VARCHAR(255), -- 用于存储图片的路径或URL
    email VARCHAR(255)
);

CREATE TABLE if not exists `News`(
                      id INT PRIMARY KEY AUTO_INCREMENT,
                      title VARCHAR(255) NOT NULL,
                      content TEXT NOT NULL,
                      publish_date DATETIME NOT NULL,
                      image_url VARCHAR(255)
);

ALTER TABLE News MODIFY publish_date DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;