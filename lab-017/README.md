# Lab-017

## Snapshot an EBS Volume

Difficulty Level: 2

Creation Date: June 26, 2020

Original Author(s): [Thyago Mota](https://github.com/thyagomota)

Contributor(s):

## Goal
This lab's goal is similar to [lab-016](../lab-016) but because we want to move a volume from one AZ to another we will have to first create a snapshot of the volume and then create a new volume from the snapshot.

## Architecture Diagram
![lab-017-arch-01](images/lab-017-arch-01.png)

## Overview

Create two EC2 instances in different AZs. Create an EBS volume and attach it to one of them. Create some files in the volume and then terminate the the EC2 that had the attached volume. Then follow the steps.

### Step 1 - Create an Snapshot of an EBS Volume

Go to *Elastic Block Store - Snapshots*.

![lab-017-scrn-01](images/lab-017-scrn-01.png)
![lab-017-scrn-02](images/lab-017-scrn-02.png)

Verify that your snapshot was successfully created at *Snapshots*. You might want to copy the *Snapshot ID* to use it on the next step. Once your snapshot is created you can delete the EBS volume.

![lab-017-scrn-03](images/lab-017-scrn-03.png)

### Step 2 - Create an EBS Volume from a Snapshot

Create a new volume from the snapshot that you created in the previous step. Make sure your volume is created on the other AZ.

![lab-017-scrn-04](images/lab-017-scrn-04.png)

### Step 3 - Attach EBS Volume

Attach the EBS volume created from the snapshot to the EC2 instance running on the other AZ.

## Test and Validation

Connect to the EC2 instance running on the other AZ, mount the EBS volume and see if you can access the files created earlier.
