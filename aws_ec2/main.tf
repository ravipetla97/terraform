terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"

    }
  }


}

provider "aws" {
  region  = "eu-north-1"
}

resource "aws_instance" "terraform_test" {
  ami           = "ami-0989fb15ce71ba39e"
  instance_type = "t3.micro"

  tags = {
    Name = "tetsing infra building with terraform"
  }
}

