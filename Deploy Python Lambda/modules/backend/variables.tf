# variables.tf

variable "aws_region" {
  description = "The AWS region things are created in"
  default = "us-west-2"
}

variable "environment" {
  description = "The name of the environment"
}