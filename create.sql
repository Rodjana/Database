# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database creation script                        #
# Created on:            2015-11-23 16:16                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Add tables                                                             #
# ---------------------------------------------------------------------- #

# ---------------------------------------------------------------------- #
# Add table "Major"                                                      #
# ---------------------------------------------------------------------- #
create schema 5605104037db;
use 5605104037db;
CREATE TABLE `Major` (
    `Maj_ID` INTEGER(4) NOT NULL,
    `Maj_Name` VARCHAR(40),
    PRIMARY KEY (`Maj_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Advisor"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Advisor` (
    `Adv_ID` INTEGER(5) NOT NULL,
    `Adv_Name` VARCHAR(40),
    PRIMARY KEY (`Adv_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Faculty"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Faculty` (
    `Fac_ID` INTEGER(2) NOT NULL,
    `Fac_Name` VARCHAR(40),
    CONSTRAINT `PK_Faculty` PRIMARY KEY (`Fac_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Subject"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Subject` (
    `Cou_ID` INTEGER(3) NOT NULL,
    `Cou_Name` VARCHAR(40),
    `Cou_ID1` INTEGER(3),
    `Adv_ID` INTEGER(5),
    PRIMARY KEY (`Cou_ID`)
);

# ---------------------------------------------------------------------- #
# Add table "Student"                                                    #
# ---------------------------------------------------------------------- #

CREATE TABLE `Student` (
    `Stu_ID` INTEGER(4) NOT NULL,
    `Stu_Name` VARCHAR(40),
    `Stu_E-mail` VARCHAR(40),
    `Stu_Tel` VARCHAR(40),
    `Stu_Birthday` VARCHAR(40),
    `Maj_ID` INTEGER(4),
    `Adv_ID` INTEGER(5),
    `Fac_ID` INTEGER(2),
    `Cou_ID` INTEGER(3),
    PRIMARY KEY (`Stu_ID`)
);

# ---------------------------------------------------------------------- #
# Add foreign key constraints                                            #
# ---------------------------------------------------------------------- #

ALTER TABLE `Student` ADD CONSTRAINT `Advisor_Student` 
    FOREIGN KEY (`Adv_ID`) REFERENCES `Advisor` (`Adv_ID`);

ALTER TABLE `Student` ADD CONSTRAINT `Major_Student` 
    FOREIGN KEY (`Maj_ID`) REFERENCES `Major` (`Maj_ID`);

ALTER TABLE `Student` ADD CONSTRAINT `Faculty_Student` 
    FOREIGN KEY (`Fac_ID`) REFERENCES `Faculty` (`Fac_ID`);

ALTER TABLE `Student` ADD CONSTRAINT `Subject_Student` 
    FOREIGN KEY (`Cou_ID`) REFERENCES `Subject` (`Cou_ID`);

ALTER TABLE `Subject` ADD CONSTRAINT `Advisor_Subject` 
    FOREIGN KEY (`Adv_ID`) REFERENCES `Advisor` (`Adv_ID`);
