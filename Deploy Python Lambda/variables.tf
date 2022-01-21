# variables.tf

variable "aws_region" {
  description = "The AWS region resources are created in"
  default = "us-west-2"
}

variable "environment" {
  description = "The name of the environment"
}

variable "aws_profile" {
  description = "The AWS profile to be used for the deployment"
}

