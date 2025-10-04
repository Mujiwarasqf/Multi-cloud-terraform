variable "app_image" {
  description = "The Docker image for the application."
  type        = string
}

variable "app_port" {
  description = "The port the application listens on."
  type        = number
}

variable "cpu" {
  description = "The CPU units to allocate for the container."
  type        = number
  default     = 256
}

variable "memory" {
  description = "The memory to allocate for the container."
  type        = number
  default     = 512
}

variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "subnets" {
  description = "A list of subnets to launch the container in."
  type        = list(string)
}

variable "security_groups" {
  description = "A list of security groups to associate with the container."
  type        = list(string)
}

variable "cluster_name" {
  description = "The name of the ECS cluster."
  type        = string
  default     = "shopedge-cluster"
}
