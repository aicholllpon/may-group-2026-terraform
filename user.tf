resource "aws_iam_user" "lb" {
  name = "hello"
}

resource "aws_iam_user" "lb2" {
  name = "loadbalancer2"
}

resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"

  users = [
    # aws_iam_user.lb.name,
    # aws_iam_user.lb2.name
    "hello",
    "loadbalancer2"
  ]
  #   group = aws_iam_group.developers.name
  group = "developers"
}