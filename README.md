# Project: Multi-Tier Private Cloud with Bastion Host and Load Balancer

## Overview

This project sets up a secure, scalable cloud infrastructure using AWS services. It leverages Terraform to create and manage resources in a Virtual Private Cloud (VPC) with both public and private subnets. The architecture includes EC2 instances, a NAT Gateway, a Bastion Host, and a Load Balancer for high availability and fault tolerance. 

## Components

### 1. **VPC (Virtual Private Cloud)**
   - Provides a logically isolated environment for your resources.

### 2. **Internet Gateway (IGW)**
   - Connects the VPC to the internet, enabling resources in public subnets to access the internet.

### 3. **Public Subnets**
   - Two public subnets are created with a public route table.
   - These subnets contain internet-facing resources, like the Bastion Host.

### 4. **Private Subnets**
   - Two private subnets with a private route table are created.
   - These subnets are isolated from the internet but can access it through the NAT Gateway.
   - EC2 instances running Nginx are located here.

### 5. **Route Tables**
   - **Public Route Table**: Routes traffic from the public subnets to the Internet Gateway.
   - **Private Route Table**: Routes traffic within the VPC and to the NAT Gateway for internet access from private subnets.

### 6. **NAT Gateway**
   - Allows instances in private subnets to access the internet for updates and maintenance tasks.
   - It uses an Elastic IP to have a public IP address.

### 7. **Elastic IP**
   - Provides a static public IP address for the NAT Gateway, ensuring consistent access to the internet.

### 8. **Security Groups**
   - Act as virtual firewalls to control inbound and outbound traffic for the instances.
   - Different security groups are used for the Bastion Host, Nginx servers, and the Load Balancer.

### 9. **Bastion Host**
   - A single EC2 instance in the public subnet that serves as a secure entry point (SSH jump box) to manage private instances.
   - Allows secure SSH access to Nginx servers in private subnets.

### 10. **Nginx Instances**
   - Two EC2 instances running Nginx, located in private subnets.
   - These servers handle web traffic but are not directly accessible from the internet.
   - The instances are connected to the Load Balancer for high availability.

### 11. **Load Balancer**
   - Distributes incoming traffic across the two Nginx instances, ensuring high availability, fault tolerance, and scalability.

## Architecture Diagram


<img width="535" alt="Q" src="https://github.com/Hellal1997/AWS_Terraform-Module-Inputs-and-Outputs-/blob/main/Screenshot%20from%202024-09-20%2003-00-51.png?raw=true">
This repository contains Terraform code that deploys a high secure app on AWS. The app includes an EC2 instance running Ubuntu 20.04, a VPC with public and private subnets, and security groups that allow inbound traffic to the app only from specific IP addresses.

How to Connect

    SSH to Bastion Host:
        Use the Bastion Host to securely connect to the private Nginx servers.

    Access Nginx Servers:
        Once connected to the Bastion Host, you can SSH into the Nginx servers located in the private subnets for management and maintenance.

Benefits

    Security:
        The private subnets isolate sensitive resources.
        The NAT Gateway restricts outbound internet access for private instances while allowing them to fetch updates.

    Scalability:
        Additional Nginx instances can be added to the private subnets, and the Load Balancer will automatically distribute traffic.

    Manageability:
        The Bastion Host allows secure administration of the private instances without exposing them directly to the internet.

Getting Started
1. Install Terraform

    Download and install Terraform from Terraform Downloads.

2. Configure Cloud Provider Credentials

    Ensure your AWS credentials are properly configured on your machine.

3. Review Terraform Code

    Review the Terraform modules and configuration files to understand how each component is deployed.

4. Set Variables

    Edit terraform.tfvars with appropriate values, such as project name, AMI ID, and instance types.

5. Initialize Terraform

    Run terraform init to initialize the Terraform project.

6. Plan the Infrastructure

    Run terraform plan to preview the infrastructure changes.

7. Deploy the Infrastructure

    Run terraform apply to create the infrastructure on AWS.

