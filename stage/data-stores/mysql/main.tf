provider "aws" {
    region = "us-east-1"
}

module "mysql" {
    source = "../../../modules/data-stores/mysql"
    
    cluster_name = "db-stage"
    db_remote_state_bucket = "tuar-state-ljn"
    db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
    db_instance_class = "db.t3.small"
}