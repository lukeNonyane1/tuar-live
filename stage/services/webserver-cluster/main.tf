provider "aws" {
  region = "us-east-1"
}

module "webserver_cluster" {
  source = "../../../modules/services/webserver-cluster"
  
  cluster_name = "webservers-stage"
  db_remote_state_bucket = "tuar-state-ljn"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
}

output "elb-dns" {
  value = "module.webserver_cluster.elb_dns"
}







