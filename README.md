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

Project Task: Building Infrastructure with Terraform and Configuring Docker with Ansible
Objective:
Build and manage infrastructure across two availability zones (AZs) using Terraform, and configure Docker on private machines using Ansible. The project should leverage GitOps practices with your preferred CI/CD tool.

Tools Required:
Terraform: For building the infrastructure.
Ansible: For configuration management and automation.
Docker: To be installed on private machines and used for running a container.
GitOps: For managing configurations and CI/CD processes.
CI/CD Tools: Choose one (Jenkins, GitHub Actions, or GitLab Pipelines).
Task Breakdown:
Terraform Infrastructure Setup:

Create VPC and configure network needs.
For each AZ, create two subnets: one public and one private.
Set up an Auto Scaling Group (ASG) with two instances.
Place the Load Balancer (LB) in the public subnets.
Deploy the instances in the private subnets.
Ensure the private IPs of the instances are passed to an inventory file for later use.
Bastion Host Configuration:

Set up a Bastion Host in the public subnet to manage access to the private instances.
After creating the infrastructure, copy the necessary Ansible role and configuration files to the Bastion Host.
Ansible Configuration:

Use Ansible to install Docker on the private instances.
Create a custom Ansible role for Docker installation.
Run a nginx container on each private instance using Docker.
GitOps Implementation:

Manage the entire configuration (Terraform and Ansible) using a Git repository.
Implement CI/CD pipelines using your chosen tool (Jenkins, GitHub Actions, or GitLab Pipelines) to automate the deployment and configuration process.
Hints:
You will execute the Ansible playbook on the Bastion Host.
Ensure that all configurations and scripts are stored and managed in a Git repository.
Use the inventory file created by Terraform to manage the target hosts for Ansible.


-----------------------------------------------------------------------------------------------------

1. Terraform Infrastructure Setup
a. Create VPC and Configure Networking

    Define a VPC in Terraform, specifying the CIDR block.
    Create two subnets in each Availability Zone (AZ), one public and one private.
    Set up an Internet Gateway (IGW) for the public subnets.
    Attach a NAT Gateway in the public subnet for instances in private subnets to access the internet.

b. Create Auto Scaling Group (ASG)

    Define the ASG with a Launch Configuration or Launch Template.
    Use the private subnets for deploying the instances.
    Set the desired, minimum, and maximum number of instances in the ASG.

c. Load Balancer Setup

    Create an Elastic Load Balancer (ELB) and place it in the public subnets.
    Attach the instances in the private subnets to the ELB.

d. Bastion Host Configuration

    Deploy a Bastion Host in one of the public subnets.
    Configure security groups to allow SSH access to the Bastion Host and restrict access to the private instances.
    Set up a key pair for SSH access.

e. Passing Private IPs to Inventory File

    Use Terraform's local_file resource to write the private IPs of the instances to an inventory file that Ansible will use later.

2. Ansible Configuration
a. Copy Ansible Files to Bastion Host

    After the infrastructure is set up, use Terraform's provisioner to copy Ansible playbooks and roles to the Bastion Host.

b. Create Ansible Role for Docker Installation

    Create a custom Ansible role to install Docker. This role should include tasks for:
        Installing Docker dependencies.
        Installing Docker.
        Starting and enabling the Docker service.

c. Run a Nginx Container on Private Instances

    Create a playbook that uses the Docker Ansible role to install Docker and then runs an Nginx container on each private instance.

3. GitOps Implementation
a. Manage Configurations with Git

    Store your Terraform configurations, Ansible playbooks, and roles in a Git repository.
    Structure your repository to separate Terraform and Ansible configurations clearly.

b. Implement CI/CD Pipeline

    Choose a CI/CD tool (e.g., Jenkins, GitHub Actions, or GitLab Pipelines).
    Create pipelines that:
        Trigger Terraform to apply infrastructure changes.
        Trigger Ansible playbook execution from the Bastion Host to configure the instances.

4. Execution Plan

    Initialize Terraform:
        Run terraform init to initialize the Terraform environment.

    Apply Terraform Configuration:
        Use terraform apply to build the infrastructure.

    Execute Ansible Playbook:
        SSH into the Bastion Host.
        Run the Ansible playbook to install Docker and deploy Nginx on the instances.

    Set Up CI/CD:
        Integrate the Terraform and Ansible workflows into your chosen CI/CD tool.
        Automate the deployment process to trigger on commits or pull requests.

Considerations:

    Use Terraform modules to keep your code DRY (Don't Repeat Yourself).
    Ensure secure handling of sensitive data like SSH keys and secrets by using Terraform's built-in secrets management or a tool like AWS Secrets Manager.
    Test your playbooks and infrastructure in a staging environment before applying to production.

