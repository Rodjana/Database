# ---------------------------------------------------------------------- #
# Script generated with: DeZign for Databases V9.0.0                     #
# Target DBMS:           MySQL 5                                         #
# Project file:          Project1.dez                                    #
# Project name:                                                          #
# Author:                                                                #
# Script type:           Database drop script                            #
# Created on:            2015-11-23 16:16                                #
# ---------------------------------------------------------------------- #


# ---------------------------------------------------------------------- #
# Drop foreign key constraints                                           #
# ---------------------------------------------------------------------- #

ALTER TABLE `Student` DROP FOREIGN KEY `Advisor_Student`;

ALTER TABLE `Student` DROP FOREIGN KEY `Major_Student`;

ALTER TABLE `Student` DROP FOREIGN KEY `Faculty_Student`;

ALTER TABLE `Student` DROP FOREIGN KEY `Subject_Student`;

ALTER TABLE `Subject` DROP FOREIGN KEY `Advisor_Subject`;

# ---------------------------------------------------------------------- #
# Drop table "Student"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Student`;

# ---------------------------------------------------------------------- #
# Drop table "Subject"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Subject`;

# ---------------------------------------------------------------------- #
# Drop table "Faculty"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

ALTER TABLE `Faculty` DROP PRIMARY KEY;

DROP TABLE `Faculty`;

# ---------------------------------------------------------------------- #
# Drop table "Advisor"                                                   #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Advisor`;

# ---------------------------------------------------------------------- #
# Drop table "Major"                                                     #
# ---------------------------------------------------------------------- #

# Drop constraints #

DROP TABLE `Major`;
