variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with the instance"
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "Availability zone for the EC2 instance"
  type        = string
}

variable "cpu_core_count" {
  description = "Number of CPU cores for the instance"
  type        = number
  default     = 2
}

variable "disable_api_termination" {
  description = "Whether to disable API termination for the instance"
  type        = bool
  default     = false
}

variable "ebs_optimized" {
  description = "Whether the instance is EBS optimized"
  type        = bool
  default     = false
}

variable "hibernation" {
  description = "Whether hibernation is enabled for the instance"
  type        = bool
  default     = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance"
  type        = string
  default     = "stop"
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "monitoring" {
  description = "Whether detailed monitoring is enabled"
  type        = bool
  default     = false
}

variable "private_ip" {
  description = "Private IP address for the instance"
  type        = string
}

variable "security_groups" {
  description = "List of security groups for the instance"
  type        = list(string)
}

variable "subnet_id" {
  description = "Subnet ID where the instance will be launched"
  type        = string
}

variable "tenancy" {
  description = "Tenancy of the instance"
  type        = string
  default     = "default"
}

variable "enclave_enabled" {
  description = "Whether AWS Nitro Enclaves are enabled"
  type        = bool
  default     = false
}

variable "root_volume_iops" {
  description = "IOPS for the root volume"
  type        = number
  default     = 100
}

variable "root_volume_size" {
  description = "Size of the root volume in GB"
  type        = number
  default     = 8
}

variable "tags" {
  description = "Tags to apply to the EC2 instance"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "AWS region for the resources"
  type        = string
}