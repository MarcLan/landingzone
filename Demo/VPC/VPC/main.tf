resource "huaweicloud_vpc" "vpc_landingzone" {
  name = var.vpc_name
  cidr = var.vpc_cidr
}

resource "huaweicloud_vpc_subnet" "subnet_landingzone" {
  vpc_id = huaweicloud_vpc.vpc_landingzone.id
  name = var.subnet_name
  cidr = var.subnet_cidr
}