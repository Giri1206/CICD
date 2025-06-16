#root

module "vpc" {
  source = "./vpc"
}
module "ec2" {
  source = "./ec2"
  varsn = module.vpc.pb_sn
  varsg= module.vpc.secg
}