variable "region" {
  default = "us-west-2"
  type = "string"
}

variable "groupname" {
  type = "list"
  default = ["dev-aisec","infra-aisec","test-aisec"]
}
variable "usernamedev" {
  type = "list"
  default = ["dev1","dev2","dev3"]
}

variable "usernameinfra" {
  type = "list"
  default = ["infra1","infra2","infra3"]
}

variable "usernametest" {
  type = "list"
  default = ["test1","test2","test3"]
}


