provider "aws" {
    region = "us-east-1"
}

module "mysql" {
    source = "../../../modules/data-stores/mysql"
    
    cluster_name = "${var.cluster_name}"
    db_remote_state_bucket = "${var.db_remote_state_bucket}"
    db_remote_state_key = "${var.db_remote_state_key}"
    db_instance_class = "${var.db_instance_class}"
    db_password = "${var.db_password}"
}