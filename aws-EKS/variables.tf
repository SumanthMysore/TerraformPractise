variable "cluster" {
  default = {
    name               = "bc-75"
    kubernetes_version = "1.24"
    vpc = {
      vpc_id     = "vpc-009470e55cc89e05e"
      subnet_ids = ["subnet-051b703b3e3db09a5", 
                    "subnet-08210e4584335dfda", 
                    "subnet-06fc373b96fc60783"
                    ]
    }
    tags = {
      "Created By"  = "Sumanth Mysore"
      "Description" = "EKS Cluster created for Bootcamp-75 deployment"
    }
    endpoint_access = "public"
    addons = ["coredns", "kube-proxy", "vpc-cni"]
  }
}

variable "node_groups_defaults" {
  type = map(string)
  default = {
    "ami_type"      = "AL2_x86_64"
    "capacity_type" = "ON_DEMAND"
  }
}

variable "node_group" {
  type = object({
    name           = string
    instance_types = list(string)
    min_size       = number
    max_size       = number
    desired_size   = number
  })
  default = {
    name           = "bc-75-node"
    instance_types = ["t3.medium"]
    min_size       = 1
    max_size       = 3
    desired_size   = 2
  }
}