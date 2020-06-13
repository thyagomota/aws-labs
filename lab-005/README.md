# Lab-005

## An HTTP Load Balancer

Difficulty Level: 1

Creation Date: June 11, 2020

Original Author(s): [Thyago Mota](https://github.com/thyagomota)

Contributor(s): [João Marcelo](https://github.com/jmhal)

## Goal
The goal of this lab is to illustrate how to use an [Application Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html) to distribute requests over two web servers running on distinct Availability Zones.

## Architecture Diagram
![lab-005-arch-01](images/lab-005-arch-01.png)

## Overview
AWS Elastic Load Balancing (ELB) service supports three types of load balancers:
* Application Load Balancer,
* Network Load Balancer, and
* Classic Load Balancer.

As the name suggests, the *Application Load Balancer* works at the application layer and understands protocols such as HTTP. This gives the load balancer the ability to support routing rules based on the URL or the host field in the HTTP header, for example.

### Step 1 - Create VPC and Subnets
Create a new VPC with the *Name tag* lab-005 and the *IPv4 CIDR block* 192.168.0.0/16. Then create two public subnets in distinct availability zones of your VPC.  Make sure to set the CIDR IPv4 block correctly to each subnet according to the ranges specified in the architecture diagram. You can use tags subnet-A and subnet-B for the subnets.

![lab-005-scrn-01](images/lab-005-scrn-01.png)
![lab-005-scrn-02](images/lab-005-scrn-02.png)
![lab-005-scrn-03](images/lab-005-scrn-03.png)
![lab-005-scrn-04](images/lab-005-scrn-04.png)
![lab-005-scrn-05](images/lab-005-scrn-05.png)
![lab-005-scrn-06](images/lab-005-scrn-06.png)
![lab-005-scrn-07](images/lab-005-scrn-07.png)

### Step 2 - Create an Internet Gateway
Create an [Internet gateway](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Internet_Gateway.html) with the *Name tag* lab-005 and attach it to lab-005 VPC. This procedure is described in detail in step 2 of [lab-002](../lab-002).

### Step 3 - Modify the Main Route Table
Add a default route on your VPC router with a destination to the *Internet gateway* created in the previous step.

![lab-005-scrn-08](images/lab-005-scrn-08.png)
![lab-005-scrn-09](images/lab-005-scrn-09.png)
![lab-005-scrn-10](images/lab-005-scrn-10.png)
![lab-005-scrn-11](images/lab-005-scrn-11.png)

### Step 4 - Launch EC2 Instances
Launch an EC2 instance on each of the public subnets you created in the first step of this lab.

1. You can use *Amazon Linux 2 AMI*.
2. You can choose the *Free tier eligible* instance type.
3. Make sure to set the correct VPC and subnet for each instance; also, use the provided [user-data](files/user-data.sh) to setup an HTTP server on your instances.
4. You can select the suggested storage for your instances.
5. You should add a *Name tag* to help identifying your instances.
6. Both instances should be in a *Security Group* with inbound rules that accept SSH and HTTP traffic.
7. You should secure your instances by creating a *lab-005* key pair.

At this point you should be able to access both instances using a browser an the instances public IP addresses. You should be able to see the hostname of each instance as the index page.

### Step 5 - Create the Application Load Balancer
Follow the procedure described by the screenshots.
![lab-005-scrn-12](images/lab-005-scrn-12.png)
![lab-005-scrn-13](images/lab-005-scrn-13.png)
![lab-005-scrn-14](images/lab-005-scrn-14.png)
![lab-005-scrn-15](images/lab-005-scrn-15.png)
![lab-005-scrn-16](images/lab-005-scrn-16.png)
![lab-005-scrn-17](images/lab-005-scrn-17.png)
![lab-005-scrn-18](images/lab-005-scrn-18.png)
![lab-005-scrn-19](images/lab-005-scrn-19.png)
![lab-005-scrn-20](images/lab-005-scrn-20.png)

## Test and Validation
Copy the DNS name associated with the load balancer and, using a browser, try to access it. You should be able to see alternate responses (as you refresh the page) of the two instances webpages which proves that the load balancer is working properly by redirecting the request evenly to the two instances.

![lab-005-scrn-21](images/lab-005-scrn-21.png)

Another test you should do is to stop one of the instances and verify that the load balancer will not send requests to the stopped instance anymore.  
