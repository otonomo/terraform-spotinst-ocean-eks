// region terraform-aws-modules/eks

output "cluster_id" {
  description = "The name/id of the EKS cluster. Will block on cluster creation until the cluster is really ready"
  value       = module.eks.cluster_id
}

output "cluster_arn" {
  description = "The Amazon Resource Name (ARN) of the cluster"
  value       = module.eks.cluster_arn
}

output "cluster_certificate_authority_data" {
  description = "Nested attribute containing certificate-authority-data for your cluster. This is the base64 encoded certificate data required to communicate with your cluster"
  value       = module.eks.cluster_certificate_authority_data
}

output "cluster_endpoint" {
  description = "The endpoint for your EKS Kubernetes API"
  value       = module.eks.cluster_endpoint
}

output "cluster_version" {
  description = "The Kubernetes server version for the EKS cluster"
  value       = module.eks.cluster_version
}

output "cluster_security_group_id" {
  description = "Security group ID attached to the EKS cluster. On 1.14 or later, this is the 'Additional security groups' in the EKS console"
  value       = module.eks.cluster_security_group_id
}

output "config_map_aws_auth" {
  description = "A kubernetes configuration to authenticate to this EKS cluster"
  value       = module.eks.config_map_aws_auth
}

output "cluster_iam_role_name" {
  description = "IAM role name of the EKS cluster"
  value       = module.eks.cluster_iam_role_name
}

output "cluster_iam_role_arn" {
  description = "IAM role ARN of the EKS cluster"
  value       = module.eks.cluster_iam_role_arn
}

output "cluster_oidc_issuer_url" {
  description = "The URL on the EKS cluster OIDC Issuer"
  value       = module.eks.cluster_oidc_issuer_url
}

output "cluster_primary_security_group_id" {
  description = "The cluster primary security group ID created by the EKS cluster on 1.14 or later. Referred to as 'Cluster security group' in the EKS console"
  value       = module.eks.cluster_primary_security_group_id
}

output "cloudwatch_log_group_name" {
  description = "Name of cloudwatch log group created"
  value       = module.eks.cloudwatch_log_group_name
}

output "cloudwatch_log_group_arn" {
  description = "ARN of cloudwatch log group created"
  value       = module.eks.cloudwatch_log_group_arn
}

output "kubeconfig" {
  description = "kubectl config file contents for this EKS cluster"
  value       = module.eks.kubeconfig
}

output "kubeconfig_filename" {
  description = "The filename of the generated kubectl config"
  value       = module.eks.kubeconfig_filename
}

output "oidc_provider_arn" {
  description = "The ARN of the OIDC Provider if `enable_irsa = true`"
  value       = module.eks.oidc_provider_arn
}

output "workers_user_data" {
  description = "User data of worker groups"
  value       = module.eks.workers_user_data
}

output "workers_default_ami_id" {
  description = "ID of the default worker group AMI"
  value       = module.eks.workers_default_ami_id
}

output "worker_security_group_id" {
  description = "Security group ID attached to the EKS workers"
  value       = module.eks.worker_security_group_id
}

output "worker_iam_instance_profile_arns" {
  description = "Default IAM instance profile ARN for EKS worker groups"
  value       = module.eks.worker_iam_instance_profile_arns
}

output "worker_iam_instance_profile_names" {
  description = "Default IAM instance profile name for EKS worker groups"
  value       = module.eks.worker_iam_instance_profile_names
}

output "worker_iam_role_name" {
  description = "Default IAM role name for EKS worker groups"
  value       = module.eks.worker_iam_role_name
}

output "worker_iam_role_arn" {
  description = "Default IAM role ARN for EKS worker groups"
  value       = module.eks.worker_iam_role_arn
}

output "security_group_rule_cluster_https_worker_ingress" {
  description = "Security group rule responsible for allowing pods to communicate with the EKS cluster API"
  value       = module.eks.security_group_rule_cluster_https_worker_ingress
}

output "cluster_token" {
  sensitive   = true
  description = "The token to use to authenticate with the cluster"
  value       = element(concat(data.aws_eks_cluster_auth.cluster[*].token, [""]), 0)
}

output "cluster_ca_certificate" {
  sensitive   = true
  description = "Cluster CA certificate (base64 encoded)"
  value       = element(concat(data.aws_eks_cluster.cluster[*].certificate_authority.0.data, [""]), 0)
}

// endregion

// region spotinst/ocean-eks

output "ocean_cluster_id" {
  description = "The ID of the Ocean cluster"
  value       = local.ocean_cluster_id
}

output "ocean_controller_id" {
  description = "The ID of the Ocean controller"
  value       = local.ocean_controller_id
}
output "cluster_name" {
  description = "The ID of the Ocean controller"
  value       = local.cluster_name
}
// endregion
