terraform {
  backend "s3" {
    bucket         = "terraweek-state-maheshkumar-16072026"
    key            = "dev/terraform.tfstate"
    region         = "us-west-2"
    #dynamodb_table = "terraweek-state-lock"
    use_lockfile = true
    encrypt        = true
  }
}