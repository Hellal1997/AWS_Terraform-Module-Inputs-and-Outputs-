# AWS_Terraform infrastrcture ec2



<img width="535" alt="Q" src="https://github.com/Hellal1997/AWS_Terraform-Module-Inputs-and-Outputs-/blob/096cca1476064a0e8f8ea86ca786b8a03ee543a8/terraform%20lab%20.png">
This repository contains Terraform code that deploys a high secure app on AWS. The app includes an EC2 instance running Ubuntu 20.04, a VPC with public and private subnets, and security groups that allow inbound traffic to the app only from specific IP addresses.

## Prerequisites
Before you can use this repository, you need to have the following:

1- An AWS account
2- The AWS CLI installed and configured on your local machine
3- Terraform installed on your local machine

### How to Use
Clone the repository to your local machine.
Navigate to the terraform directory.
Run terraform init to initialize the project.
Run terraform plan to review the infrastructure changes that will be made.
If you're satisfied with the plan, run terraform apply to create the infrastructure on AWS.
After the infrastructure is created, you can log in to the EC2 instance using the key pair you created during the Terraform apply process.
How to Connect to the App
Open the AWS Management Console and navigate to the EC2 Dashboard.
 
 <p align="center">
  <img src="https://files.oaiusercontent.com/file-DYW5cfT3A3VYg5pLZv5YszmU?se=2024-09-16T21%3A33%3A59Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3D502be4e9-18b3-49a0-8761-d4c57956d81b.webp&sig=To7q/Xz%2BUbJf4OR0EijwyYv6JUqKTzeymyV7VyVR9FU%3D">
</p>

