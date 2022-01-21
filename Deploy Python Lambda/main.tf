#Get AWS Account ID of main Account
data "aws_caller_identity" "current" {}

module "backend" {
  source = "./modules/backend"
  aws_region = var.aws_region
  environment = var.environment
}