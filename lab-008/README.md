# Lab-008

## Secure EC2 Auto Scaling + Load Balancing

Difficulty Level: 2

Creation Date: June 15, 2020

Original Author(s): [Thyago Mota](https://github.com/thyagomota)

Contributor(s): [João Marcelo](https://github.com/jmhal)

## Goal
This is lab is similar to [lab-007](../lab-007) with a caveat: the auto scaling group is configured to create the EC2 instances in the private subnet. Also, two security groups control traffic in and out of the application load balancer and the EC2 instances in the private subnets. To enable the EC2 instances in the private subnet to respond to requests coming from the internet, NAT gateways were configured on the public subnets of the VPC.

## Architecture Diagram

video: https://www.youtube.com/embed/mdeJwTgYISM

## Overview

[lab-008-scrn-01](https://youtu.be/mdeJwTgYISM)

## Test and Validation
Provide some guidance on how to test the lab and validate whether it is doing what is suppose to do.
