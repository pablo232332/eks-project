variable "aws_region" {
  description = "aws region to deploy resources"
  default = "eu-west-2"
}
variable "cluster_name" {
    description = "Name of the EKS cluster"
    default = "Pawel-eks-cluster"
}

#VPC CIDR block for the newly created VPC
variable "vpc_cidr_block" {
    description = "CIDR block for the VPC"
   default = "10.0.0.0/16"
}
# subnet CIDR blocks for the VPC
variable "Subnet_cidr_blocks" {
    description = "List of CIDR blocks for the subnets"
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24"]
}
# Opttional VPC ID if we want specify an existing VPC
variable "vpc_id" {
  description = "ID of the VPC where subnets will be created"
  type = string
  default = ""
}