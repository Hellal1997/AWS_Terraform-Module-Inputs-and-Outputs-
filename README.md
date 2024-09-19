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


<img width="535" alt="Q" src="https://github.com/mohamedesmael10/terraform-aws-project/blob/main/Shots/1.jpeg?raw=true">
This repository contains Terraform code that deploys a high secure app on AWS. The app includes an EC2 instance running Ubuntu 20.04, a VPC with public and private subnets, and security groups that allow inbound traffic to the app only from specific IP addresses.

