# AWS_Terraform-Module-Inputs-and-Outputs-



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
