terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

#instance EC2

resource "aws_instance" "server_app" {
    ami = "ami-0a695f0d95cefc163"
    instance_type = "t2.micro"
    key_name = "server-app"
    # user_data = <<-EOF
    #                #!/bin/bash
    #                cd /home/ubuntu
    #                echo "<h1>Feito com Terraform</h1>" > index.html
    #                nohup busybox httpd -f -p 8080 &
    #                EOF
    tags = {
      "Name" = "ServidorFeitocomTerraform"
    }
}
