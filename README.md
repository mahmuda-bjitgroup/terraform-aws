# AWS EC2 Creation using Terraform

## Topics
1. Provider
2. VPC
3. Subnet
4. EC2

## Prerequisites

1. There are several ways to create provider block. Here we are following aws cli configuration. 
First we need aws cli in windows environment. Here is the instruction to install aws cli in windows environment. 

   - Download and run the AWS CLI MSI installer for Windows (64-bit): [AWS CLI MSI Installer](https://awscli.amazonaws.com/AWSCLIV2.msi):<br>
`https://awscli.amazonaws.com/AWSCLIV2.msi`
   - Alternatively, we can run the msiexec command in any terminal(e.g., cmd(windows), powershell) to run the MSI installer.
`C:\> msiexec.exe /i https://awscli.amazonaws.com/AWSCLIV2.msi`<br>

To confirm the installation, open the Start menu, search for cmd to open a command prompt window, and at the command prompt use the aws --version command.<br>
`C:\> aws --version`
   - We can see something like this:
`aws-cli/2.13.8 Python/3.11.4 Windows/10 exe/AMD64 prompt/off`<br>
2. Next we need to configure aws cli for which we need token credentials. Steps for this process: 
   - Go to aws account
   - From the search bar of aws, search for IAM
   - Go to Users and search for your username
   - Go to security credentials section
   - Scroll down to access key
   - We are working with aws cli, so choose Command Line Interface(CLI) from the available options
   - Choose confirmation: Tik the mark for “I understand……”
   - Set the description tag(Optional)
   - Retrieve the access key: Download the .csv file or access key and secret access key is given already.

3. Terminal configuration:
   - From the terminal type:<br>
`aws configure`
   - It will ask for AWS Access Key ID, AWS Secret Access Key, Default region name and Default output format.  <br>
`$ aws configure`<br>
`AWS Access Key ID [None]: ***********************`<br>
`AWS Secret Access Key [None]: ***************************`<br>
`Default region name [None]: us-east-1`<br>
`Default output format [None]: json`

## Project Setup

1. Clone this repository to your local machine:
git clone https://github.com/mahmuda-bjitgroup/terraform-aws.git

2. Open Visual Studio Code (VSCode):
   - Open the terraform-aws folder in VSCode or any preferred IDE.

3. Run the Terraform Commands:
   - Select "New Terminal" in VsCode and choose Bash.
   - Run the following Terraform commands in the terminal:
      - terraform init (Initialize Terraform configuration.)
      - terraform plan (Preview changes to be applied.)
      - terraform apply (Apply changes to create EC2 instance.)
