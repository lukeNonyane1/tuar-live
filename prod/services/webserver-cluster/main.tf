provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  

  cluster_name = "webservers_prod"
  db_remote_state_bucket = "${var.db_remote_state_bucket}"
  db_remote_state_key = "${var.db_remote_state_key}"
}
