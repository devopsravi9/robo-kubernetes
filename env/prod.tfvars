ENV                     = "prod"
PROJECT                 = "roboshop"
PUBLIC_ZONE_ID          = "Z0462442QH5T6H1KPDGO"
PRIVATE_ZONE_ID         = "Z04748881QTGM14CJWM7A"
WORKSTATION_IP          = "172.31.1.237/32"
PROMETHEUS_IP           = "172.31.0.198/32"

//VPC
VPC_CIDR                = "10.100.0.0/16"
PUBLIC_CIDR             = [ "10.100.0.0/24", "10.100.1.0/24"]
PRIVATE_CIDR            = [ "10.100.2.0/24", "10.100.3.0/24"]
AZ                      = ["us-east-1a", "us-east-1b"]
DEFAULT_VPC_ID          = "vpc-0ee467a809c645459"
DEFAULT_CIDR            = "172.31.0.0/16"
DEFAULT_ROUTE_TABLE_ID  = "rtb-019135e82660af7cb"

//rds
RDS_ENGINE              = "mysql"
RDS_ENGINE_VERSION      = "5.7"
RDS_INSTANCE_CLASS      = "db.t3.micro"
RDS_PG_FAMILY           = "mysql5.7"
RDS_PORT                = 3306

//docdb
DOCDB_ENGINE            =  "docdb"
DOCDB_ENGINE_VERSION    =  "4.0.0"
DOCDB_INSTANCE_COUNT    =  1
DOCDB_INSTANCE_CLASS    =  "db.t3.medium"
DOCDB_PG_FAMILY         =  "docdb4.0"
DOCDB_PORT              =  27017

//elasticahe
ELASTICACHE_ENGINE         = "redis"
ELASTICACHE_ENGINE_VERSION = "6.2"
ELASTICACHE_INSTANCE_COUNT = 1
ELASTICACHE_INSTANCE_CLASS = "cache.t3.small"
ELASTICACHE_PG_FAMILY      = "redis6.x"
ELASTICACHE_PORT           = 6379

//rabbitmq
RABBITMQ_PORT             = 5672
RABBITMQ_INSTANCE_CLASS   = "t3.micro"

INSTANCE_COUNT = {
  FRONTEND = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  USER = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  CART = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  CATALOGUE = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  SHIPPING = {
    COUNT = 2
    INSTANCE_TYPE = "t3.small"
  }
  PAYMENT = {
    COUNT = 2
    INSTANCE_TYPE = "t3.small"
  }
}

