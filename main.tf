terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 3.27"
		}
	}
}

provider "aws" {
	region = "af-south-1"
}

resource "aws_instance" "tf-spin" {
	ami = "ami-0081edcfb10f9f0d6"
	instance_type = "t3.micro"

	tags = {
		"Name" = "instance name"
		"creator" = "username"
		"purpose" = "Terraform-Playground"
	}
}
