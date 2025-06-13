create database Investment_portfolio;
use investment_portfolio;

CREATE TABLE Investors (
    InvestorID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    CapitalInvested DECIMAL(12,2)
);

CREATE TABLE Assets (
    AssetID INT PRIMARY KEY AUTO_INCREMENT,
    InvestorID INT,
    AssetType VARCHAR(50),
    InvestmentAmount DECIMAL(12,2),
    ExpectedReturn DECIMAL(5,2),
    RiskScore INT,
    FOREIGN KEY (InvestorID) REFERENCES Investors(InvestorID)
);

INSERT INTO Investors (Name, CapitalInvested) VALUES
('Alice Johnson', 500000),
('Rutuja Kirve', 750000),
('John Doe', 450000),
('Sophia Patel', 600000),
('Michael Smith', 800000),
('Emily Carter', 350000),
('David Brown', 720000),
('Olivia Adams', 410000),
('Ethan Roberts', 670000),
('William Lewis', 900000),
('Lucas White', 300000),
('Amelia Nelson', 480000),
('Daniel Scott', 520000),
('Madison Reed', 750000),
('James Turner', 580000),
('Victoria Hall', 820000),
('Benjamin Clark', 620000),
('Isabella Walker', 770000),
('Nathan Green', 420000),
('Emma King', 880000),
('Oliver Martinez', 660000),
('Charlotte Gonzalez', 550000),
('Jack Thompson', 530000),
('Liam Harris', 730000),
('Sophia Lee', 590000),
('Jacob Wright', 640000),
('Ava Miller', 870000),
('Noah Baker', 620000),
('Evelyn Parker', 700000),
('Carter Evans', 490000),
('Lucas Simmons', 850000),
('Grace Bryant', 620000),
('Henry Russell', 460000),
('Mia Brooks', 780000),
('Andrew Diaz', 310000),
('Chloe Foster', 560000),
('Landon Ramirez', 730000),
('Elizabeth Rivera', 680000),
('Matthew Ward', 620000),
('Zoey Perry', 800000),
('Samuel Wood', 720000),
('Natalie Hudson', 540000),
('Elijah Powell', 850000),
('Avery Morris', 400000),
('Dylan Bennett', 530000),
('Scarlett Reed', 660000),
('Gabriel Edwards', 750000),
('Leah Coleman', 580000),
('Ryan Jenkins', 830000),
('Harper Watson', 670000);

INSERT INTO Assets (InvestorID, AssetType, InvestmentAmount, ExpectedReturn, RiskScore) VALUES
(1, 'Equity (Stocks)', 200000, 8.5, 7),
(1, 'Bonds', 100000, 4.2, 3),
(2, 'Private Equity', 400000, 10.5, 8),
(2, 'Real Estate', 350000, 6.8, 5),
(3, 'Middle-Market Loan', 300000, 7.5, 6),
(4, 'Fixed-Income Securities', 280000, 5.5, 4),
(4, 'Commodities (Gold)', 180000, 3.5, 2),
(5, 'Equity (Stocks)', 600000, 9.2, 7),
(6, 'Bonds', 350000, 4.5, 3),
(6, 'Private Equity', 300000, 11.0, 8),
(7, 'Middle-Market Loan', 400000, 7.8, 6),
(8, 'Fixed-Income Securities', 500000, 5.3, 4),
(9, 'Commodities (Oil)', 250000, 4.0, 3),
(10, 'Real Estate', 480000, 6.5, 5),
(11, 'Private Equity', 350000, 10.2, 8),
(12, 'Equity (Stocks)', 400000, 9.0, 7),
(13, 'Bonds', 370000, 4.1, 3),
(14, 'Middle-Market Loan', 290000, 7.4, 6),
(15, 'Commodities (Gold)', 220000, 3.6, 2),
(16, 'Fixed-Income Securities', 330000, 5.1, 4),
(17, 'Equity (Stocks)', 700000, 9.8, 7),
(18, 'Private Equity', 500000, 11.5, 8),
(19, 'Middle-Market Loan', 250000, 7.3, 6),
(20, 'Real Estate', 420000, 6.7, 5),
(21, 'Commodities (Oil)', 310000, 4.2, 3),
(22, 'Fixed-Income Securities', 550000, 5.6, 4),
(23, 'Equity (Stocks)', 320000, 9.1, 7),
(24, 'Bonds', 240000, 4.3, 3),
(25, 'Private Equity', 380000, 10.7, 8),
(26, 'Middle-Market Loan', 470000, 7.9, 6),
(27, 'Commodities (Gold)', 260000, 3.7, 2),
(28, 'Fixed-Income Securities', 510000, 5.4, 4),
(29, 'Real Estate', 340000, 6.3, 5),
(30, 'Equity (Stocks)', 680000, 9.5, 7),
(31, 'Bonds', 450000, 4.4, 3),
(32, 'Private Equity', 600000, 11.2, 8),
(33, 'Middle-Market Loan', 370000, 7.6, 6),
(34, 'Commodities (Oil)', 290000, 4.1, 3),
(35, 'Fixed-Income Securities', 430000, 5.2, 4),
(36, 'Real Estate', 580000, 6.9, 5),
(37, 'Equity (Stocks)', 520000, 9.3, 7),
(38, 'Bonds', 390000, 4.6, 3),
(39, 'Private Equity', 400000, 11.0, 8),
(40, 'Middle-Market Loan', 410000, 7.7, 6),
(41, 'Commodities (Gold)', 270000, 3.8, 2),
(42, 'Fixed-Income Securities', 460000, 5.5, 4),
(43, 'Real Estate', 620000, 7.0, 5),
(44, 'Equity (Stocks)', 750000, 9.6, 7),
(45, 'Bonds', 420000, 4.7, 3),
(46, 'Private Equity', 530000, 11.3, 8),
(47, 'Middle-Market Loan', 480000, 7.8, 6),
(48, 'Commodities (Oil)', 330000, 4.3, 3),
(49, 'Fixed-Income Securities', 540000, 5.6, 4),
(50, 'Real Estate', 670000, 7.2, 5);

SHOW TABLES;
DESCRIBE ASSETS;
SELECT * FROM ASSETS;
select * from INVESTORS;

select investorid, sum(investmentamount) as totalinvestment
from assets
group by investorid;

select investorid, assettype, sum(investmentamount) as totalinvestment
from assets
group by investorid, assettype
order by investorid;

select assettype, avg(expectedreturn) as avgreturn
from assets
group by assettype;

select investorid, avg(riskscore) as portfoliorisk
from assets
group by investorid
order by portfoliorisk desc;

select assettype, investmentamount, expectedreturn, riskscore
from assets
where expectedreturn > 8.0 and riskscore > 6
order by expectedreturn desc;

select a.investorid, i.name, a.assettype, sum(a.investmentamount) as totalinvestment, avg(a.expectedreturn) as avgreturn, avg(a.riskscore) as risklevel
from assets a join investors i 
on a.investorid = i.investorid
group by a.investorid, i.name, a.assettype
order by totalinvestment desc;



