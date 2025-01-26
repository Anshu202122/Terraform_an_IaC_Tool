# Terraform as IaC Tool for AWS Resource Provisioning and CI/CD

## Project Overview
This project demonstrates the use of Terraform as an Infrastructure as Code (IaC) tool to provision AWS cloud resources and the integration of GitHub Actions for automating the CI/CD pipeline. The infrastructure includes essential components like VPC, subnets, EC2 instances, a load balancer and more, creating a secure and scalable architecture.

The project also features a simple frontend hosted on EC2 instances, which displays a welcome message and provides instance-related details (e.g., instance ID, type, and availability zone). Traffic is managed efficiently using an Application Load Balancer.


## Architecture Description

1. VPC: A Virtual Private Cloud to isolate resources in a secure network.
2. Subnets: Two subnets are associated with the routing table for better traffic distribution.
3. Routing Table and Internet Gateway: Ensures connectivity between resources and the internet.
4. EC2 Instances: Two instances hosting a simple frontend application displaying instance details.
5. S3 Bucket: Configured as the backend for Terraform to store state files securely.
6. Application Load Balancer (ALB): Distributes traffic evenly between the EC2 instances.
7. Security Groups: Configured with HTTP and SSH rules for secure access.


## Steps to Replicate the Setup

### 1. Prerequisites

* Install Terraform
* Set up AWS CLI and configure your credentials:
     aws configure
* Fork or clone this repository.

### 2. Configure Terraform

* Navigate to the project directory containing the Terraform files.
* Initialize Terraform:
    terraform init
* Validate the configuration files:
    terraform validate
* Plan the infrastructure:
    terraform plan
* Apply the Terraform configuration to provision resources:
    terraform apply

### 3. CI/CD Pipeline

The GitHub Actions workflow automates the infrastructure deployment. Push changes to the repository, and the pipeline will:
    * Build and test the configuration.
    * Deploy changes automatically using Terraform.
    

## How to Test the Deployed Application

After deploying the infrastructure, note the public IP of the Application Load Balancer from the Terraform output.
Open the DNS public IP in your browser:
You should see the frontend displaying:
        A welcome message and information about the instances (e.g., instance ID, instance type, and availability zone).
        

## Verify Load Balancing

Refresh the page multiple times to confirm traffic is distributed between the EC2 instances (you may notice changes in displayed instance details).
