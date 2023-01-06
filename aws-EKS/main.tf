module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.0.4"

  cluster_name    = var.cluster.name
  cluster_version = var.cluster.kubernetes_version

  vpc_id                         = var.cluster.vpc.vpc_id
  subnet_ids                     = var.cluster.vpc.subnet_ids
  cluster_endpoint_public_access = (var.cluster.endpoint_access == "public") ? true : false

  tags = {
    "Created By"  = lookup(var.cluster.tags, "Created By")
    "Description" = lookup(var.cluster.tags, "Description")
  }

  cluster_addons = {
    coredns = {
      most_recent = contains(var.cluster.addons, "coredns")
    }
    kube-proxy = {
      most_recent = contains(var.cluster.addons, "kube-proxy")
    }
    vpc-cni = {
      most_recent = contains(var.cluster.addons, "vpc-cni")
    }
  }

  eks_managed_node_group_defaults = {
    ami_type      = var.node_groups_defaults["ami_type"]
    capacity_type = var.node_groups_defaults["capacity_type"]
  }

  eks_managed_node_groups = {
    one = {
      name           = var.node_group.name
      instance_types = var.node_group.instance_types
      min_size       = var.node_group.min_size
      max_size       = var.node_group.max_size
      desired_size   = var.node_group.desired_size
    }
  }
}
