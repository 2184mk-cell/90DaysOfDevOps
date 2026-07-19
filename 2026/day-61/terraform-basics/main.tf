# Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-2"
}

# Create S3 bucket
resource "aws_s3_bucket" "bucket" {

  bucket = "terraweek-maheshkumar-2026"

}

# To find the latest ami-id
data "aws_ssm_parameter" "amazon_linux" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

# Create Ec2
resource "aws_instance" "instance" {
  ami           = data.aws_ssm_parameter.amazon_linux.value
  instance_type = "t3.micro" # t2.micro is not available for me so iam taking t3.micro

  tags = {
    Name = "TerraWeek-Day1"
  }
}
