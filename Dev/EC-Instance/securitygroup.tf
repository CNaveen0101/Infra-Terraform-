provider "aws" {
    region = "us-east-1"
  
}

resource "aws_security_group" "terrefsg" {
    name = "mylabelsg"
    description = "Securitygroupformynewserver"
    vpc_id = "vpc-0ea1ac6cf1b16f15a"

    ingress {
        description = "Allowing Https"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress  {
        description = "Allowing SSH"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "Allowing Https"
        from_port = "443"
        to_port = "443"
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Allowing all external traffic"
        from_port = 0
        to_port = 0
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "mylatestsg"
      Environment = "Dev"
    }
    
  
}
