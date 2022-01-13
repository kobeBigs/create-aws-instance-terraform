# Terraform: Create AWS EC2 Instance

This repo helps create EC2 Instance using Terraform

In `main.tf` change:
- region, in the provider block
    ```
    provider "aws" {
	    region = "af-south-1"
    }
    ```
- in the resource block, give the instance a name in the tags, you may assign your name or email to the creator tag.
    ```
    resource "aws_instance" "tf-spin" {
        ...
        tags = {
            "Name" = "instance name"
            "creator" = "username"
            "purpose" = "Terraform-Playground"
        }
    }
    ```

## how to run it
1. Open your terminal, clone this repo.
2. Navigate in to the repo dir
    `cd path-to-repo/create-aws-instance-terraform`.
3. Run `terraform  init` to initialize the configuration.
4. Run `terraform plan` to preview what terraform is about to create or change.
5. Apply the configuration `terraform apply`.
    Type **yes** at the prompt as confirmation to create the instance/infrastructure.
6. Go to your aws console to see the instance created.

Voila!

You can terminate or remove instance by running `terraform destroy`