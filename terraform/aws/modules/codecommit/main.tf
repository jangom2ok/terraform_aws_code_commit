#
#  IAM Groups
#
resource "aws_iam_group" "group_codecommit" {
  name = "${var.app}_codecommit_group"
}

#
# Attach group policy
#
resource "aws_iam_group_policy_attachment" "group_codecommit-attach" {
  group      = aws_iam_group.group_codecommit.name
  policy_arn = "arn:aws:iam::aws:policy/AWSCodeCommitPowerUser"
}

#
# CodeCommit Repositorys
#
resource "aws_codecommit_repository" "repository" {
  repository_name = var.app
  description     = "${var.app} git repository"
  default_branch  = "develop"
}
