variable "url" {
  type        = string
  description = "URL of the IOS-XE device"
  sensitive   = true
}

variable "username" {
  type        = string
  description = "Username for authentication"
  sensitive   = true
}

variable "password" {
  type        = string
  description = "Password for authentication"
  sensitive   = true
}

variable "shutdown" {
  type        = bool
  default     = false
  description = "Whether the interface is shut down"
}

variable "mtu_ignore" {
  type        = bool
  default     = false
  description = "Whether to ignore MTU in OSPF"
}

variable "network_type_broadcast" {
  type        = bool
  default     = false
  description = "Whether to use broadcast network type"
}

variable "network_type_non_broadcast" {
  type        = bool
  default     = false
  description = "Whether to use non-broadcast network type"
}

variable "network_type_point_to_multipoint" {
  type        = bool
  default     = false
  description = "Whether to use point-to-multipoint network type"
}

variable "id" {
  type        = string
  description = "ID value for OSPF process ID and message digest key"
  sensitive   = true
}

variable "md5_auth_key" {
  type        = string
  description = "MD5 authentication key"
  sensitive   = true
}

variable "md5_auth_type" {
  type        = string
  description = "MD5 authentication type"
}

variable "bandwidth" {
  type        = number
  default     = 1000000
  description = "Interface bandwidth in bits per second"
}

variable "key" {
  type        = string
  description = "S3 backend key for Terraform state"
}

variable "region" {
  type        = string
  description = "AWS region for S3 backend"
}

variable "bucket" {
  type        = string
  description = "S3 bucket for Terraform state"
  
}