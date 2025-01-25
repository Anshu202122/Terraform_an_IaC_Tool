module "vpc" {
  source      = "./Modules/virtualPrivateCloud"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "security_group" {
  source = "./Modules/securityGroups"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source  = "./Modules/elasticCloudCompute"
  sg_id   = module.security_group.sg_id
  subnets = module.vpc.subnet_ids
}

module "alb" {
  source    = "./Modules/appLoadBalancer"
  sg_id     = module.security_group.sg_id
  subnets   = module.vpc.subnet_ids
  vpc_id    = module.vpc.vpc_id
  instances = module.ec2.instances
}
