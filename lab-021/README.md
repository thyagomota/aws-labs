# Lab-021

## VPC Peering

Difficulty Level: 2

Creation Date: July 1, 2020

Original Author(s): [Thyago Mota](https://github.com/thyagomota)

Contributor(s):

## Goal

The goal of this lab is to illustrate a VPC peering connection, a way to connect two VPCs using a private connection.

## Architecture Diagram

![lab-021-arch-01](images/lab-021-arch-01.png)

## Overview

Once the VPCs and subnets are created, the internet gateway and the EC2 instances are launched and configured, follow the steps described next.

### Step 1 - Create the Peering Connection

![lab-021-scrn-01](images/lab-021-scrn-01.png)
![lab-021-scrn-02](images/lab-021-scrn-02.png)
![lab-021-scrn-03](images/lab-021-scrn-03.png)

### Step 2 - Accept the Peering Connection

![lab-021-scrn-04](images/lab-021-scrn-04.png)
![lab-021-scrn-05](images/lab-021-scrn-05.png)
![lab-021-scrn-06](images/lab-021-scrn-06.png)
![lab-021-scrn-07](images/lab-021-scrn-07.png)

### Step 3 - Modify Route Tables

First on the VPC A side:

![lab-021-scrn-08](images/lab-021-scrn-08.png)

Then on the VPC B side:

![lab-021-scrn-09](images/lab-021-scrn-09.png)

To test the setting, first ssh to the EC2 instance A (the one on VCP A).  Then try to ssh to EC2 instance B (the on on VPC B) using its private IP address.
