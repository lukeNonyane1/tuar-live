variable "cluster_name" {
    description = "This is the name of the environment"
    type = string
    default = "prod"
}

variable "db_remote_state_bucket" {
    description = "The name of the S3 bucket used for the database's remote state storage"
    type = string
    default = "tuar-state-ljn"
}

variable "db_remote_state_key" {
    description = "The name of the key in the S3 bucket used for the database's remote state storage"
    type = string
    default = "prod/data-stores/mysql/terraform.tfstate"
}

variable "db_password" {
    description = "This is the password of the database"
    type = string
}

variable "db_instance_class" {
  description = "This is the instance for the environment"
  type = string
  default = "db.t3.medium"
}