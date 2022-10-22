variable VPC_CIDR {}
variable "PROJECT" {}
variable "ENV" {}
variable "PRIVATE_CIDR" {}
variable "PUBLIC_CIDR" {}
variable "AZ" {}
variable "DEFAULT_VPC_ID" {}
variable "DEFAULT_ROUTE_TABLE_ID" {}
variable "DEFAULT_CIDR" {}

//rds
variable "RDS_ENGINE" {}
variable "RDS_ENGINE_VERSION" {}
variable "RDS_INSTANCE_CLASS" {}
variable "RDS_PG_FAMILY" {}
variable "RDS_PORT" {}

//docdb
variable "DOCDB_ENGINE" {}
variable "DOCDB_ENGINE_VERSION" {}
variable "DOCDB_INSTANCE_COUNT" {}
variable "DOCDB_INSTANCE_CLASS" {}
variable "DOCDB_PG_FAMILY" {}
variable "DOCDB_PORT" {}

//elasticache
variable "ELASTICACHE_ENGINE" {}
variable "ELASTICACHE_ENGINE_VERSION" {}
variable "ELASTICACHE_INSTANCE_COUNT" {}
variable "ELASTICACHE_INSTANCE_CLASS" {}
variable "ELASTICACHE_PG_FAMILY" {}
variable "ELASTICACHE_PORT" {}

//rabbitmq
variable "RABBITMQ_INSTANCE_CLASS" {}
variable "RABBITMQ_PORT" {}
variable "WORKSTATION_IP" {}

//lb
variable "PUBLIC_ZONE_ID" {}
variable "PRIVATE_ZONE_ID" {}


variable "INSTANCE_COUNT" {}
variable "PROMETHEUS_IP" {}
