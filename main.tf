

module "webserver" {
  source = "../modules/webserver"

  environment = "webserver-stage"
  db_remote_state_bucket = "mytfstate-bk-webapp-dev"
  db_remote_state_key = "stage/data-stores/mysql/terraform.tfstate"
  instance_type = "t2.micro"
  min_size = 2
  max_size = 2
}
