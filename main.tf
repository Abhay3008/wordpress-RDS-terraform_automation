provider "kubernetes" {
  config_context_cluster = "minikube"
}



provider "aws" {
  region  = "us-east-1"
  profile = "YOUR-PROFILE"
}



module "kube" {
  source = "."
}

module "rds" {
  source = "."
}
