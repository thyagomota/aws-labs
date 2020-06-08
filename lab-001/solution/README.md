# Lab-001

## Solution
1. In the EC2 service menu, click on "Launch instance" and then select "Amazon Linux 2 AMI." You can use the suggested free-tier eligible instance type.
2. Make sure you select the public default subnet and that the "Auto-assign Public IP" setting is enabled for that subnet.
3. Create a new security group named "ssh-access" with a rule that allows SSH from anywhere (or choose "My IP" if you prefer).
4. For the key-pair you can create a new key pair (name it lab-001). Download the key pair to your computer (the file will be named lab-001.pem).
5. Launch your instance.

## Test
1. Once your instance is up and running, click on "Connect" and copy the example ssh command-line.
2. Open a terminal window and move to the folder where you saved lab-001.pem.
3. Change the permission of the key file to 600 (chmod 600 lab-001.pem)
3. Paste and run the ssh command. You should be able to log into your instance.
