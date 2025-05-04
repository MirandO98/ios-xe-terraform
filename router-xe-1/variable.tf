variable "url" {
  type = "string"
  default = ""
}


variable "username" {
  type = "string"
  default = "XXX"
}


variable "password" {

  type = "string"
  default = "XXX"
  
}

variable "shutdown" {
  type = bool
  default = false
}

variable "mtu_ignore" {

  type = bool
  default = false 
}

variable "network_type_broadcast" {
  type = bool
  default = false
  
}

variable "network_type_non_broadcast" {
  type = bool
  default = false
}

variable "network_type_point_to_multipoint" {
  type = bool
  default = false
}
variable "id" {

  type = "string"
  default = "XXX"
  
}

variable "md5_auth_key" {

  type = "string"
  default = "XXX"
  
}

variable "md5_auth_type" {
  type = "string"
  default = "XXX"
}

variable "bandwidth" {

  type = number
  default = 1000000
  
}