provider "aws" {
  region = "ap-south-1"
}

module "eks" {
  source          = "terraform-aws-modules"
  cluster_name    = "web-app-cluster"
  vpc_id          = "vpc"
  node_groups = {
    web_app_group = {
      desired_capacity = 2
      max_capacity     = 2
      min_capacity     = 1
      instance_type    = "t2.medium"
    }
  }
}
