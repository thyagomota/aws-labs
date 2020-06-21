# Lab-009

## Standalone RDS Instance Running MySQL

Difficulty Level: 2

Creation Date: June 21, 2020

Original Author(s): [Thyago Mota](https://github.com/thyagomota)

Contributor(s):

## Goal
This lab illustrates how to launch a standalone RDS instance running a MySQL database. An EC2 instance will also be launched to allow access to the database using phpMyAdmin.

## Architecture Diagram

![lab-009-arch-01](images/lab-009-arch-01.png)

## Overview
The Amazon Relational Database Service (Amazon RDS) offers a managed service based on relational databases.  In this lab you will be configuring RDS to use MySQL, an open source database. For simplicity, you will not configure more advanced features available in RDS, such as *multi-az deployment* or *read replicas*. To verify that RDS is working, you will configure an EC2 instance with Apache and phpMyAdmin, a free software tool written in PHP that simplifies administration of a MySQL database over the Web.

### Step 1 - Create a Custom VPC with Two Public subnets

Start this lab by configuring an internet gateway on a custom VPC. Make sure there is a default route for your VPC's internet gateway. Make sure your public subnets are configured in distinct AZs and that auto-assign IPv4 is enabled.

### Step 2 - Launch an RDS Instance

Below are some of the main options you should select:
* Database creation method: Standard Create
* Engine option: MySQL
* Templates: Free tier
* DB instance identifier: lab-009
* Master password: 12345678 (not safe but this is just a lab)
* DB instance size: Standard classes
* Storage: default options are fine for this lab
* Multi-az deployment: if you selected the *free tier* template you should not even be able to select *multi-az deployment* options
* Connectivity: set your custom VPC as the one where your RDS instance will run; in the additional connectivity configuration - VPC security group, choose *Create new* and name it *lab-009sg*; finally for the availability zone choose the one suffixed with 1a (or the first option that appears to you)
* Additional configurations: set the initial database name to *lab009* and disable automatic backups

![lab-009-scrn-01](images/lab-009-scrn-01.png)

### Step 3 - Launch EC2 Instance

Configure an EC2 instance in the public subnet in the same AZ where your RDS instance was launched. Use the [user-data](files/user-data.sh).  

## Test and Validation
Provide some guidance on how to test the lab and validate whether it is doing what is suppose to do.
