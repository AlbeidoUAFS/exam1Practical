drop database if exists exam1Practice;
drop user if exists 'exam1user'@'localhost';

create database exam1Practice;
use exam1Practice;
create user 'exam1user'@'localhost' identified by 'exam1pass';
grant all privileges on exam1Practice.* to 'exam1user'@'localhost';


CREATE TABLE Orders (
    orderID INT AUTO_INCREMENT PRIMARY KEY,
    customerName VARCHAR(100) NOT NULL,
    customerEmail VARCHAR(100),
    itemCategory VARCHAR(50),
    itemDescription VARCHAR(150),
    quantity INT NOT NULL CHECK (quantity > 0),
    unitPrice DECIMAL(10, 2) CHECK (unitPrice >= 0),
    orderStatus ENUM('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') DEFAULT 'Pending',
    orderDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Orders (customerName, customerEmail, itemCategory, itemDescription, quantity, unitPrice, orderStatus, orderDate) VALUES
('John Doe', 'john.doe@example.com', 'Laptop', 'Dell XPS 15 (16GB RAM, 512GB SSD)', 1, 1499.99, 'Delivered', '2026-08-01 09:15:00'),
('Jane Smith', 'jane.smith@example.com', 'Monitor', 'LG UltraGear 27" 144Hz Gaming Monitor', 2, 299.99, 'Delivered', '2026-08-02 10:30:00'),
('Alice Johnson', 'alice.j@example.com', 'Accessories', 'Logitech MX Master 3S Wireless Mouse', 1, 99.99, 'Delivered', '2026-08-03 11:45:00'),
('Bob Brown', 'b.brown@example.com', 'Desktop', 'Custom Gaming PC (RTX 4070, Ryzen 7)', 1, 1899.50, 'Shipped', '2026-08-04 14:20:00'),
('Charlie Davis', 'cdavis@example.com', 'Keyboard', 'Keychron K2 Mechanical Keyboard', 1, 89.90, 'Delivered', '2026-08-05 08:00:00'),
('Diana Evans', 'diana.e@example.com', 'Components', 'Samsung 980 Pro 2TB NVMe SSD', 2, 169.99, 'Delivered', '2026-08-06 16:10:00'),
('Evan Frank', 'e.frank@example.com', 'Storage', 'Western Digital 4TB External Hard Drive', 1, 94.50, 'Processing', '2026-08-07 12:00:00'),
('Fiona Grace', 'fiona.g@example.com', 'Networking', 'ASUS AX6000 WiFi 6 Router', 1, 219.99, 'Delivered', '2026-08-08 15:30:00'),
('George Harris', 'gharris@example.com', 'Laptop', 'Apple MacBook Pro 14" M3', 1, 1999.00, 'Delivered', '2026-08-09 17:45:00'),
('Hannah Ivy', 'hannah.i@example.com', 'Audio', 'Sony WH-1000XM5 ANC Headphones', 1, 348.00, 'Shipped', '2026-08-10 10:05:00'),
('Ian Jackson', 'ijackson@example.com', 'Components', 'Corsair Vengeance 32GB DDR5 RAM Kit', 2, 115.00, 'Delivered', '2026-08-11 11:20:00'),
('Julia King', 'julia.k@example.com', 'Monitor', 'Dell UltraSharp 32" 4K USB-C Hub Monitor', 1, 680.00, 'Pending', '2026-08-12 13:15:00'),
('Kevin Lewis', 'klewis@example.com', 'Accessories', 'Anker 10-in-1 USB-C Docking Station', 1, 129.99, 'Cancelled', '2026-08-13 14:00:00'),
('Laura Miller', 'laura.m@example.com', 'Laptop', 'Lenovo ThinkPad X1 Carbon Gen 11', 1, 1650.00, 'Delivered', '2026-08-14 09:50:00'),
('Michael Nelson', 'mnelson@example.com', 'Components', 'Intel Core i7-14700K CPU', 1, 389.99, 'Shipped', '2026-08-15 16:40:00'),
('Nina Owens', 'nina.o@example.com', 'Peripherals', 'Elgato Stream Deck MK.2', 1, 149.99, 'Delivered', '2026-08-16 08:30:00'),
('Oscar Parker', 'oparker@example.com', 'Components', 'ASUS ROG Strix Z790 Motherboard', 1, 349.99, 'Processing', '2026-08-17 10:15:00'),
('Paula Quinn', 'paula.q@example.com', 'Desktop', 'Apple Mac Studio (M2 Max)', 1, 1999.00, 'Delivered', '2026-08-18 11:00:00'),
('Quentin Reed', 'qreed@example.com', 'Networking', 'Netgear 8-Port Gigabit Ethernet Switch', 3, 29.99, 'Delivered', '2026-08-19 12:25:00'),
('Rachel Scott', 'rachel.s@example.com', 'Audio', 'Shure SM7B Dynamic Vocal Microphone', 1, 399.00, 'Shipped', '2026-08-20 15:10:00'),
('Sam Taylor', 'staylor@example.com', 'Keyboard', 'Razer BlackWidow V4 Pro', 1, 229.99, 'Delivered', '2026-08-21 17:00:00'),
('Tina Underwood', 'tunderwood@example.com', 'Accessories', 'SteelSeries QCK Heavy XXL Mousepad', 2, 29.99, 'Delivered', '2026-08-22 09:05:00'),
('Ulysses Vance', 'uvance@example.com', 'Monitor', 'Samsung Odyssey G9 49" Curved OLED', 1, 1299.99, 'Processing', '2026-08-23 10:40:00'),
('Victoria White', 'vwhite@example.com', 'Laptop', 'ASUS ROG Zephyrus G16', 1, 1799.99, 'Delivered', '2026-08-24 14:15:00'),
('Will Xavier', 'wxavier@example.com', 'Power', 'APC Smart-UPS 1500VA Battery Backup', 1, 499.99, 'Delivered', '2026-08-25 11:35:00'),
('Xena Young', 'xyoung@example.com', 'Peripherals', 'Logitech Brio 4K Webcam', 1, 169.99, 'Pending', '2026-08-26 13:50:00'),
('Yusuf Zane', 'yzane@example.com', 'Components', 'NVIDIA GeForce RTX 4080 Super', 1, 999.99, 'Shipped', '2026-08-27 16:00:00'),
('Amy Adams', 'aadams@example.com', 'Storage', 'Synology DiskStation DS224+ 2-Bay NAS', 1, 299.99, 'Delivered', '2026-08-28 08:45:00'),
('Brian Baker', 'bbaker@example.com', 'Components', 'Noctua NH-D15 CPU Cooler', 1, 109.95, 'Delivered', '2026-08-29 10:20:00'),
('Chloe Clark', 'cclark@example.com', 'Laptop', 'HP Spectre x360 2-in-1 14"', 1, 1349.99, 'Cancelled', '2026-08-30 12:10:00'),
('Daniel Wright', 'dwright@example.com', 'Accessories', 'CalDigit TS4 Thunderbolt 4 Dock', 1, 399.95, 'Delivered', '2026-08-31 15:00:00'),
('Emma Lopez', 'elopez@example.com', 'Components', 'Corsair RM850x 850W Power Supply', 1, 129.99, 'Shipped', '2026-09-01 09:30:00'),
('Frank Hill', 'fhill@example.com', 'Monitor', 'BenQ DesignVue 27" 4K Monitor', 2, 499.00, 'Delivered', '2026-09-02 11:15:00'),
('Grace Scott', 'gscott@example.com', 'Desktop', 'HP OMEN 45L Gaming Desktop', 1, 2499.99, 'Processing', '2026-09-03 14:00:00'),
('Henry Green', 'hgreen@example.com', 'Keyboard', 'Logitech MX Keys S Wireless Keyboard', 1, 109.99, 'Delivered', '2026-09-04 16:45:00'),
('Isabel Adams', 'iadams@example.com', 'Audio', 'Focusrite Scarlett 2i2 USB Audio Interface', 1, 199.99, 'Delivered', '2026-09-05 10:10:00'),
('Jack Baker', 'jbaker@example.com', 'Accessories', 'Ergonomic Vertical Wireless Mouse', 1, 39.99, 'Pending', '2026-09-06 12:30:00'),
('Karen Carter', 'kcarter@example.com', 'Networking', 'TP-Link TL-SG105 5-Port Switch', 2, 17.99, 'Delivered', '2026-09-07 08:15:00'),
('Liam Mitchell', 'lmitchell@example.com', 'Laptop', 'Acer Swift Go 14 OLED', 1, 799.99, 'Shipped', '2026-09-08 13:40:00'),
('Mia Perez', 'mperez@example.com', 'Storage', 'Crucial X9 Pro 1TB Portable SSD', 2, 89.99, 'Delivered', '2026-09-09 15:20:00'),
('Noah Roberts', 'nroberts@example.com', 'Components', 'Fractal Design North ATX PC Case', 1, 139.99, 'Delivered', '2026-09-10 17:10:00'),
('Olivia Turner', 'oturner@example.com', 'Monitor', 'ASUS TUF Gaming 24" 1080p Monitor', 1, 159.00, 'Processing', '2026-09-11 09:05:00'),
('Peter Phillips', 'pphillips@example.com', 'Components', 'AMD Ryzen 9 7900X CPU', 1, 399.00, 'Delivered', '2026-09-12 11:50:00'),
('Quinn Campbell', 'qcampbell@example.com', 'Peripherals', 'Razer Kiyo Pro Streaming Webcam', 1, 99.99, 'Shipped', '2026-09-13 14:30:00'),
('Rose Parker', 'rparker@example.com', 'Audio', 'Audio-Technica ATH-M50x Headphones', 1, 149.00, 'Delivered', '2026-09-14 10:00:00'),
('Steve Evans', 'sevans@example.com', 'Desktop', 'Dell OptiPlex Small Form Factor Desktop', 2, 749.00, 'Pending', '2026-09-15 12:45:00'),
('Tara Edwards', 'tedwards@example.com', 'Power', 'CyberPower 1350VA UPS', 1, 159.95, 'Delivered', '2026-09-16 16:15:00'),
('Victor Collins', 'vcollins@example.com', 'Accessories', 'Monitor Desk Mount Dual Arm', 1, 49.99, 'Delivered', '2026-09-17 08:50:00'),
('Wendy Stewart', 'wstewart@example.com', 'Laptop', 'Microsoft Surface Laptop 6', 1, 1299.00, 'Processing', '2026-09-18 11:25:00'),
('Xavier Morris', 'xmorris@example.com', 'Components', 'ARCTIC Liquid Freezer III 360 AIO', 1, 119.99, 'Shipped', '2026-09-19 14:05:00');