terraform {
  backend "s3" {
    bucket = "talent-academy-terraform-tfstates-787786425565"
    key    = "sprint1/week5/tf-vpc-ci-cd/terraform.tfstates"
  }
}