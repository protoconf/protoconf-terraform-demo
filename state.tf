terraform {
  backend "remote" {
    organization = "protoconf"

    workspaces {
      name = "protoconf-terraform-demo"
    }
  }
}
