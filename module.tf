# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
  access_key = "AKIAQZHTVDCOVSXMEHIW"
  secret_key = "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"
}


resource "aws_instance" "TerraformEC2" {
  ami           = "ami-011996ff98de391d1"
  instance_type = "t2.micro"

  tags = {
    Name = var.name
  }
}

