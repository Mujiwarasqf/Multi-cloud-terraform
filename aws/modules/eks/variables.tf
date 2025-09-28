variable "cluster_name" {}

variable "subnet_ids" {}

variable "node_subnet_ids" {}

# Instance / node config
variable "instance_types" {}
variable "ami_type" {}
variable "capacity_type" {}

variable "node_desired_capacity" {}
variable "node_min_size" {}
variable "node_max_size" {}

variable "ssh_key_name" {}
variable "remote_access_sg_ids" {}
variable "node_group_name_suffix" {}
variable "kubernetes_version" {}

variable "endpoint_private_access" {}
variable "endpoint_public_access" {}

variable "common_tags" {}

# SECURITY inputs (names aligned to your root)
variable "web_security_group_id" {}

variable "app_security_group_id" {}

variable "database_security_group_id" {}

variable "app_to_node_port" {}

variable "vpc_id" {
  description = "VPC ID where the EKS cluster will be deployed"
  type        = string
}

variable "subnets" {
  description = "Subnets for the EKS cluster"
  type        = list(string)
}