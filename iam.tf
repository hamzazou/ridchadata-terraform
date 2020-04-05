provider "aws" {
}

resource "aws_iam_group" "groups" {
  count = "${length(var.groupname)}"
  name = "${element(var.groupname,count.index )}"
  path = "/aisec/"
}

resource "aws_iam_user" "dev" {
  count = "${length(var.usernamedev)}"
  name = "${element(var.usernamedev,count.index )}"
}

resource "aws_iam_user" "infra" {
  count = "${length(var.usernameinfra)}"
  name = "${element(var.usernameinfra,count.index )}"
}

resource "aws_iam_user" "test" {
  count = "${length(var.usernametest)}"
  name = "${element(var.usernametest,count.index )}"
}

resource "aws_iam_group_membership" "team-dev" {
  name = "team-dev"
  users = var.usernamedev

  group = "dev-aisec"
}

resource "aws_iam_group_membership" "team-infra" {
  name = "team-infra"
  users = var.usernameinfra

  group = "infra-aisec"
}

resource "aws_iam_group_membership" "team-test" {
  name = "team-test"
  users = var.usernametest

  group = "test-aisec"
}
