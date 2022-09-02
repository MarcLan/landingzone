terraform {
  required_providers {
    huaweicloud = {
      source  = "huaweicloud/huaweicloud"
      version = "~> 1.26.0"
    }
  }
}


provider "huaweicloud" {
  region = "ap-southeast-2"
  access_key = "HMSVCQHYTYSBJHQF886M"
  secret_key = "qdwBzakJPs3hAbReAcDsEvis69vWbFjL2zK5uczr"
}

resource "huaweicloud_vpc" "vpc_landingzone" {
  name = var.vpc_name
  cidr = var.vpc_cidr
}

resource "huaweicloud_vpc_subnet" "subnet_landingzone" {
  vpc_id = huaweicloud_vpc.vpc_landingzone.id
  name = var.subnet_name
  cidr = var.subnet_cidr
}