# get all available AZs in the region
data "aws_availability_zones" "available_azs" {
  state = "available"
}

# obtain the account id
data "aws_caller_identity" "current" {}

# get EKS cluster info to configure Kubernetes and Helm providers
data "aws_eks_cluster" "cluster" {
  name = module.eks_cluster.cluster_id
}
data "aws_eks_cluster_auth" "cluster" {
  name = module.eks_cluster.cluster_id
}

