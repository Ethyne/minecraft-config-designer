//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "ec2_minecraft" {
  source  = "app.terraform.io/Howes/ec2-minecraft/aws"
  version = "1.0.6"

  environment_tag = "Prod"
  sg_id = "${module.sg_minecraft.sg_id}"
}

module "sg_minecraft" {
  source  = "app.terraform.io/Howes/sg-minecraft/aws"
  version = "1.0.6"

  prefix = "David"
}
