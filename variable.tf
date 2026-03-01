variable "project" {
  type = string
}


variable "environment" {
  type = string
  # like this we can validate our variables.
  validation {
    condition = contains(["dev", "qa", "prod"], var.environment)
    error_message = "Environments should be one of qa, dev, prod"
  }
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_tags" {
  type = map
  default = {}  
}

variable "igw_tags" {
  type = map
  default = {}  
}

variable "public_subnet_ciders" {
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "public_subnet_tags" {
  type = map
  default = {}
}