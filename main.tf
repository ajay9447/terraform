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
  region = "ap-south-1"
}

# create as3 backet 

resource "aws_s3_bucket" "example" {
    bucket = "my-tf-test-backet-17022026"

    tags = {
        Name = "my-backet"
        Environment = "test"
    }
}