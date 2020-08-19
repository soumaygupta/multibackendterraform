
terraform {
  backend "consul" {
    address = "35.192.205.182:8500"
    path    = "backend/state"
    lock = true
    access_token = "8717d8c8-5f68-2405-9c15-07d8122c71b9"

  }
}
