output "eks_cluster_name" {
    description = "Name of the EKS cluster"
    value = aws_eks_cluster.eks_cluster
}

output "eks_cluster_endpoint" {
    description = "Name of the EKS Cluster"
    value = aws_eks_cluster.eks_cluster.name
  
}

output "eks_cluster_arn" {
    description = "EKS cluster ARN"
    value = aws_eks_cluster.eks_cluster.arn
}