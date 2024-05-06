variable "token" {
  
}

variable "cloud_id" {
  description = "The ID of the Yandex Cloud under which to deploy the resources"
}

variable "folder_id" {
  description = "The ID of the folder within Yandex Cloud to host the resources"
}

variable "default_zone" {
  description = "The default deployment zone for resources"
}

variable "vpc_name" {
  description = "The name assigned to the Virtual Private Cloud"
}

variable "public_subnet_name_1" {
  description = "The name of the first public subnet"
}

variable "public_subnet_zone_1" {
  description = "The availability zone for the first public subnet"
}

variable "public_subnet_cidr_1" {
  description = "CIDR block for the first public subnet"
}

variable "public_subnet_name_2" {
  description = "The name of the second public subnet"
}

variable "public_subnet_zone_2" {
  description = "The availability zone for the second public subnet"
}

variable "public_subnet_cidr_2" {
  description = "CIDR block for the second public subnet"
}

variable "public_subnet_name_3" {
  description = "The name of the third public subnet"
}

variable "public_subnet_zone_3" {
  description = "The availability zone for the third public subnet"
}

variable "public_subnet_cidr_3" {
  description = "CIDR block for the third public subnet"
}

variable "private_subnet_name_1" {
  description = "The name of the first private subnet"
}

variable "private_subnet_zone_1" {
  description = "The availability zone for the first private subnet"
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for the first private subnet"
}

variable "private_subnet_name_2" {
  description = "The name of the second private subnet"
}

variable "private_subnet_zone_2" {
  description = "The availability zone for the second private subnet"
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
}

variable "private_subnet_name_3" {
  description = "The name of the third private subnet"
}

variable "private_subnet_zone_3" {
  description = "The availability zone for the third private subnet"
}

variable "private_subnet_cidr_3" {
  description = "CIDR block for the third private subnet"
}

variable "db_user_name" {
  description = "Username for the database"
  default     = "netology_user"
}

variable "db_user_password" {
  description = "Password for the database user"
  default     = "your_secure_password"
}
