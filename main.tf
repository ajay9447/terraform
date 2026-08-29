terraform {
    required_providers {
        aws = {
           source = "hashicorp/aws"
           version = "~>6.0"  

        }
    }
}

# configration option

provider "aws" {
  region = "us-east-1"
}

# create as3 backet 

resource "aws_s3_bucket" "example" {
    bucket = "my-tf-test-backet-176882026"

    tags = {
        Name = "my-backet"
        Environment = "test"
    }
}