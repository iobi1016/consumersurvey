provider "aws" {
  region  = "us-east-1"
  access_key = "AKIA4W4ILHAXFG5TCSMI"
  secret_key = "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"
}

//generates pem file
resource "tls_private_key" "consumersurveypem" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

variable "key_name" {}

//generates aws key pair
resource "aws_key_pair" "rsa_4096" {
    key_name = var.key_name
    public_key = tls_private_key.rsa_4096.public_key_openssh
}

resource "local_file" "private_key" {
    content = tls_private_key.rsa_4096.private_key_pem
    filename = var.key_name
} 

resource "aws_instance" "consumersurvey" {
ami             = "ami-067d1e60475437da2"
instance_type = "t2.micro"
key_name = aws_key_pair.consumersurvey_key.key_name

tags = {
    Name = "consumer_survey"
}
}
