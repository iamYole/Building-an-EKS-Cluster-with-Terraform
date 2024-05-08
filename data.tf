# get all available AZs in the region
data "aws_availability_zones" "available_azs" {
  state = "available"
}

# obtain the account id
data "aws_caller_identity" "current" {}
