# AWS EC2 Creation using Terraform

## Prerequisites

1. Install Terraform (AMD64, Version: 1.5.5).
2. Install AWS CLI in Windows environment:
   - Download and run the AWS CLI MSI installer for Windows (64-bit): [AWS CLI MSI Installer](https://awscli.amazonaws.com/AWSCLIV2.msi)
   - Verify the installation using `aws --version`.

3. Configure AWS CLI:
   - Retrieve your AWS Access Key ID and Secret Access Key from AWS IAM.
   - Open a terminal and run `aws configure`, then provide your credentials and default region.

## Project Setup

1. Clone this repository to your local machine:
git clone https://github.com/mahmuda-bjitgroup/terraform-aws.git

2. Open Visual Studio Code (VSCode):
   - Open the terraform-aws folder in VSCode or any preferred.

3. Run the Terraform Commands:
   - Open a terminal in VSCode:

   - Select "New Terminal" and choose Bash.
   - Run the following Terraform commands in the terminal:
      - terraform init (Initialize Terraform configuration.)
      - terraform plan (Preview changes to be applied.)
      - terraform apply (Apply changes to create EC2 instance.)
