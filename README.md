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
  
## Code description
1. provider.tf:
   ```
   provider "aws" {
   }
   ```
In terraform, we need provider block to insert the provider information. As we are configuring with aws configure, the default provider configuration will work here.

2.custom-vpc.tf:
```
resource "aws_instance" "web" {
  ami           = "ami-08a52ddb321b32a8c"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.tf_sub.id
}
```
   - **Resource block:** Resources are the most important element in the Terraform language. Each resource block describes one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records.<br>
   - **AMI:** An Amazon Machine Image, or AMI, is a template for Amazon EC2 instances, created from an Amazon EC2 instance.<br>
   - **Instance Type:** Amazon EC2 provides a variety of instance types optimized to fit different use cases. Instance types comprise varying combinations of CPU, memory, storage, and networking capacity and give you the flexibility to choose the appropriate mix of resources for your applications.<br>
   - **Subnet ID:** A subnet, or subnetwork, is a logical subdivision of an IP network. The practice of dividing a network into two or more networks is called subnetting.

3. custom-vpc.tf:
```
//Create my VPC
resource "aws_vpc" "tf_vpc" {
  cidr_block = "192.168.0.0/28"
}
```
This block of code creates a VPC resource using the aws_vpc resource type. The resource is given the name tf_vpc as an identifier. The cidr_block parameter specifies the IP address range for the VPC, which in this case is "192.168.0.0/28". This means that the VPC will have a range of IP addresses from 192.168.0.0 to 192.168.0.15.
```
//Create a Subnet
resource "aws_subnet" "tf_sub" {
  vpc_id     = aws_vpc.tf_vpc.id
  cidr_block = "192.168.0.0/29"
}
```
This block of code creates a subnet resource using the aws_subnet resource type. The resource is given the name tf_sub as an identifier. The vpc_id parameter specifies the ID of the VPC that the subnet will be associated with. In this case, it references the id attribute of the previously created VPC resource (aws_vpc.tf_vpc.id). The cidr_block parameter specifies the IP address range for the subnet, which is IP addresses from "192.168.0.0" to "192.168.0.7.

5. Run the Terraform Commands:
   - Select "New Terminal" in VsCode and choose Bash.
   - Run the following Terraform commands in the terminal:
      - terraform init (Initialize Terraform configuration.)
      - terraform plan (Preview changes to be applied.)
      - terraform apply (Apply changes to create EC2 instance.)
      - Type yes if you are sure about your changes. This will confirm the action and proceed with the execution of the Terraform command.
