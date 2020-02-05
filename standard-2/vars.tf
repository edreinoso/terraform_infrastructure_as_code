variable "AWS_REGIONS" {
  default = "us-east-1"
}

#Environment
variable "environment" {
  type = "map"

  default = {
    dev = "dev"
  }
}

variable "template" {
  type    = "string"
  default = "standard-2"
}

#VPC Components
variable "vpc-name" {
  type = "map"

  default = {
    dev = "sample-vpc-dev"
  }
}

variable "vpc-cidr" {
  type = "map"

  default = {
    dev = "172.168.0.0/24"
  }
}

variable "vpc-dns-hostname" {
  type    = "string"
  default = true
}

variable "vpc-dns-support" {
  type    = "string"
  default = true
}

#Internet gateway
variable "igw-name" {
  type    = "string"
  default = "sample-igw"
}

#Subnet component
#Public subnets -- these subnets are in different availability zones
variable "public-type" {
  type    = "string"
  default = "public"
}

variable "az1PublicSubnetCidr" {
  type = "map"

  default = {
    dev = "172.168.0.0/27"
  }
}

variable "az1PublicSubnetNames" {
  type = "map"

  default = {
    dev = "public-web-subnet-01"
  }
}

variable "az2PublicSubnetCidr" {
  type = "map"

  default = {
    dev = "172.168.0.32/27"
  }
}

variable "az2PublicSubnetNames" {
  type = "map"

  default = {
    dev = "public-web-subnet-02"
  }
}

variable "publicSubnet" {
  type    = "string"
  default = "public"
}

#Private subnets
variable "private-type" {
  type    = "string"
  default = "private"
}

variable "az1PrivateSubnetCidr" {
  type = "map"

  default = {
    dev = "172.168.0.64/27,172.168.0.96/27,172.168.0.128/27"
  }
}

variable "az1PrivateSubnetNames" {
  type = "map"

  default = {
    dev = "private-web-subnet-01,private-app-subnet-01,private-db-subnet-01"
  }
}

variable "az2PrivateSubnetCidr" {
  type = "map"

  default = {
    dev = "172.168.0.160/27,172.168.0.192/27,172.168.0.224/27"
  }
}

variable "az2PrivateSubnetNames" {
  type = "map"

  default = {
    dev = "private-web-subnet-02,private-app-subnet-02,private-db-subnet-02"
  }
}

variable "privateSubnet" {
  type    = "string"
  default = "private"
}

## General subnet information

variable "main-subnet" {
  type    = "string"
  default = "main-subnet"
}

variable "ha-subnet" {
  type    = "string"
  default = "ha-subnet"
}

# Route Tables
variable "publicRouteTable" {
  type    = "string"
  default = "public-route-table"
}

variable "privateRouteTable" {
  type    = "string"
  default = "private-route-table"
}

variable "destinationRoute" {
  type    = "string"
  default = "0.0.0.0/0"
}

# Security Group
variable "sg-name-pub" {
  type    = "string"
  default = "pub"
}

variable "sg-name-pri" {
  type    = "string"
  default = "pri"
}

variable "sg-name-elb" {
  type    = "string"
  default = "elb"
}

# EC2
#Web | NAT
variable "ami" {
  type    = "string"
  default = "ami-0b898040803850657"
}

variable "custom-ami" {
  type    = "string"
  default = "NAT-Instance-AMI"
}

variable "instance-type" {
  type    = "string"
  default = "t2.micro"
}

variable "public-ip-association-true" {
  type    = "string"
  default = "true"
}

variable "sourceCheck-enable" {
  type = "string"
  default = "true"
}

variable "sourceCheck-disable" {
  type = "string"
  default = ""
}

variable "public-ip-association-false" {
  type    = "string"
  default = ""
}

variable "ec2-name-pub-nat" {
  type    = "string"
  default = "nat-host"
}

variable "ec2-name-pri-web" {
  type    = "string"
  default = "web-server"
}

variable "key-name-pub" {
  type    = "string"
  default = "base-template"
}

variable "key-name-pri" {
  type    = "string"
  default = "internal-base-template"
}
# Load Balancers

variable "elb-name" {
  type    = "string"
  default = "sample-elb"
}

variable "elb-type" {
  type    = "string"
  default = "application"
}

variable "internal-elb" {
  type    = "string"
  default = "false"
}

variable "elb-tg-name" {
  type = "string"
  default = "sample-target-group"
}

variable "tg-port" {
  type    = "string"
  default = "80"
}

variable "tg-protocol" {
  type    = "string"
  default = "HTTP"
}

variable "tg-target-type" {
  type    = "string"
  default = "instance"
}

# S3
variable "bucket-name" {
  type    = "string"
  default = "sample-load-balancer-logs-bucket"
}

variable "acl" {
  type    = "string"
  default = "private"
}

variable "destroy" {
  type    = "string"
  default = "true"
}

variable "account-id" {
  type    = "string"
  default = "130193131803"
}