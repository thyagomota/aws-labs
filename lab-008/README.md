# Lab-999

## Secure EC2 Auto Scaling + Load Balancing

Difficulty Level: 2

Creation Date: June 15, 2020

Original Author(s): [Thyago Mota](https://github.com/thyagomota)

Contributor(s): [João Marcelo](https://github.com/jmhal)

## Goal
This is lab is similar to [lab-007](../lab-007) with a caveat: the auto scaling group is configured to create the EC2 instances in the private subnet. Also, two security groups control traffic in and out of the application load balancer and the EC2 instances in the private subnets. To enable the EC2 instances in the private subnet to respond to requests coming from the internet, a NAT gateway was configured on the public subnets of the VPC. 

## Architecture Diagram
Use AWS official architecture icons available [here](https://aws.amazon.com/architecture/icons/).

## Overview
Write a short paragraph giving some background information about the services your lab will use. Reference the [AWS Documentation](https://docs.aws.amazon.com/index.html) or any other sources that you find online and deem valid.

Break this section into subsections explaining all steps needed to complete the lab. Use screenshots to create visual aids for readers that are new to AWS.

## Test and Validation
Provide some guidance on how to test the lab and validate whether it is doing what is suppose to do.
