variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "role_arn" {
  description = "role arn"
  type        = string
}

variable "name" {
  description = "name of the service"
  type        = string
}
variable "vpc_id" {
  type        = string
  description = "VPC ID for ECS and ALB"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of public subnet IDs"
}

variable "container_image" {
  type        = string
  description = "Container image for ECS"
}

variable "container_port" {
  type    = number
  default = 80
}

variable "cpu" {
  type    = string
  default = "256" # 0.25 vCPU
}

variable "memory" {
  type    = string
  default = "512" # 0.5 GB RAM
}

variable "desired_count" {
  description = "Number of desired tasks to run in the ECS service"
  type        = number
  default     = 1
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP address to the ECS task"
  type        = bool
  default     = true
}

variable "container_name" {
  description = "Name of the container in the ECS task definition"
  type        = string
  default     = "web"
}

variable "target_port" {
  description = "The port on the container to which the load balancer forwards traffic"
  type        = number
  default     = 80
}

variable "target_protocol" {
  description = "The protocol used by the target group (e.g., HTTP or HTTPS)"
  type        = string
  default     = "HTTP"
}

variable "listener_port" {
  description = "The port on which the load balancer is listening"
  type        = number
  default     = 80
}

variable "listener_protocol" {
  description = "The protocol used by the load balancer listener (e.g., HTTP or HTTPS)"
  type        = string
  default     = "HTTP"
}
