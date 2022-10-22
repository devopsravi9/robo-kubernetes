module "vpc" {
  source               = "github.com/devopsravi9/module-vpc"
  VPC_CIDR             = var.VPC_CIDR
  PROJECT              = var.PROJECT
  ENV                  = var.ENV
  PRIVATE_CIDR         = var.PRIVATE_CIDR
  PUBLIC_CIDR          = var.PUBLIC_CIDR
  AZ                   = var.AZ
  DEFAULT_VPC_ID       = var.DEFAULT_VPC_ID
  DEFAULT_ROUTE_TABLE_ID = var.DEFAULT_ROUTE_TABLE_ID
  DEFAULT_CIDR         = var.DEFAULT_CIDR
}

module "rds" {
  source = "github.com/devopsravi9/module-rds"
  PROJECT                = var.PROJECT
  ENV                    = var.ENV
  RDS_ENGINE             = var.RDS_ENGINE
  RDS_ENGINE_VERSION     = var.RDS_ENGINE_VERSION
  RDS_INSTANCE_CLASS     = var.RDS_INSTANCE_CLASS
  RDS_PG_FAMILY          = var.RDS_PG_FAMILY
  RDS_PORT               = var.RDS_PORT
  VPC_ID                 = module.vpc.VPC_ID
  PRIVATE_SUBNET_ID      = module.vpc.PRIVATE_SUBNET_ID
  ALLOW_SG_CIDR          = concat( module.vpc.PRIVATE_SUBNET_CIDR, tolist([var.WORKSTATION_IP]))
}

module "docdb" {
  source = "github.com/devopsravi9/module-docdb"
  PROJECT                = var.PROJECT
  ENV                    = var.ENV
  DOCDB_ENGINE           = var.DOCDB_ENGINE
  DOCDB_ENGINE_VERSION   = var.DOCDB_ENGINE_VERSION
  DOCDB_INSTANCE_CLASS   = var.DOCDB_INSTANCE_CLASS
  DOCDB_INSTANCE_COUNT   = var.DOCDB_INSTANCE_COUNT
  DOCDB_PG_FAMILY        = var.DOCDB_PG_FAMILY
  DOCDB_PORT             = var.DOCDB_PORT
  VPC_ID                 = module.vpc.VPC_ID
  PRIVATE_SUBNET_ID      = module.vpc.PRIVATE_SUBNET_ID
  ALLOW_SG_CIDR          = concat( module.vpc.PRIVATE_SUBNET_CIDR, tolist([var.WORKSTATION_IP]))
}

module "elasticache" {
  source = "github.com/devopsravi9/module-elasticache"
  PROJECT                    = var.PROJECT
  ENV                        = var.ENV
  ELASTICACHE_ENGINE         = var.ELASTICACHE_ENGINE
  ELASTICACHE_ENGINE_VERSION = var.ELASTICACHE_ENGINE_VERSION
  ELASTICACHE_INSTANCE_CLASS = var.ELASTICACHE_INSTANCE_CLASS
  ELASTICACHE_INSTANCE_COUNT = var.ELASTICACHE_INSTANCE_COUNT
  ELASTICACHE_PG_FAMILY      = var.ELASTICACHE_PG_FAMILY
  ELASTICACHE_PORT           = var.ELASTICACHE_PORT
  VPC_ID                     = module.vpc.VPC_ID
  PRIVATE_SUBNET_CIDR        = module.vpc.PRIVATE_SUBNET_CIDR
  PRIVATE_SUBNET_ID          = module.vpc.PRIVATE_SUBNET_ID
}

module "rabbitmq" {
  source = "github.com/devopsravi9/module-rabbitmq"
  PROJECT                   = var.PROJECT
  ENV                       = var.ENV
  RABBITMQ_INSTANCE_CLASS   = var.RABBITMQ_INSTANCE_CLASS
  RABBITMQ_PORT             = var.RABBITMQ_PORT
  VPC_ID                    = module.vpc.VPC_ID
  PRIVATE_SUBNET_CIDR       = module.vpc.PRIVATE_SUBNET_CIDR
  PRIVATE_SUBNET_ID         = module.vpc.PRIVATE_SUBNET_ID
  WORKSTATION_IP            = var.WORKSTATION_IP
  PRIVATE_ZONE_ID           = var.PRIVATE_ZONE_ID
}

module "EKS" {
  source                  = "github.com/r-devops/tf-module-eks.git"
  ENV                     = var.ENV
  PRIVATE_SUBNET_IDS      = module.vpc.PRIVATE_SUBNET_ID
  PUBLIC_SUBNET_IDS       = module.vpc.PUBLIC_SUBNET_ID
  DESIRED_SIZE            = 2
  MAX_SIZE                = 4
  MIN_SIZE                = 2
  //CREATE_ALB_INGRESS      = true
  // CREATE_EXTERNAL_SECRETS = true
}







