variable "repository_name" {
  description = "Name of the ECR repository"
  type        = string
  default     = "shopedge"
}

variable "image_scan_on_push" {
  description = "Enable image scanning on push"
  type        = bool
  default     = true
}

variable "image_tag_mutability" {
  description = "Tag mutability setting for the ECR repository"
  type        = string
  default     = "MUTABLE"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type        = map(string)
  default     = {}
}