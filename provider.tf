# with aws credentials exposed
# provider "aws" {
#   region     = "us-east-1"
#   access_key = "AKIAZITYUD2SS3VVMLHU"
#   secret_key = "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"
# }

# with aws cli
provider "aws" {
region     = "us-east-1"
}

# terraform {
#     required_providers {
#       aws = {
#         source = "hashicorp/aws"
#         version = ">5.11.0"
#       }
#     }   
# }

# with aws environment variable
# provider "aws" {}