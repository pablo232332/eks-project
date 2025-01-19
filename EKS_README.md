
# README: Terraform Configuration for Amazon EKS

## Overview
This Terraform configuration creates an Amazon EKS (Elastic Kubernetes Service) infrastructure in AWS. The resources include a VPC, subnets, IAM roles, and the EKS cluster.

## File Structure

### 1. `main.tf`
- **Provider AWS**: Configures the AWS provider to use the region specified in the variable `aws_region`.
- **VPC**: Creates a new Virtual Private Cloud (VPC) with DNS support enabled.
- **Subnets**: Creates public subnets in the VPC based on the CIDR blocks provided.
- **EKS Cluster**: Sets up an Amazon EKS cluster in the created subnets.
- **IAM Role for EKS**: Creates an IAM role and attaches managed policies for EKS to interact with other AWS resources.

### 2. `outputs.tf`
Exports the following information about the created resources:
- **eks_cluster_name**: The name of the EKS cluster.
- **eks_cluster_endpoint**: The endpoint of the EKS cluster.
- **eks_cluster_arn**: The Amazon Resource Name (ARN) of the EKS cluster.

### 3. `variable.tf`
Defines the following input variables:
- `aws_region`: The AWS region for resource deployment (default: `eu-west-2`).
- `cluster_name`: The name of the EKS cluster (default: `Pawel-eks-cluster`).
- `vpc_cidr_block`: The CIDR block for the VPC (default: `10.0.0.0/16`).
- `Subnet_cidr_blocks`: A list of CIDR blocks for subnets in the VPC (default: `[ "10.0.1.0/24", "10.0.2.0/24" ]`).
- `vpc_id`: Optional parameter for specifying an existing VPC ID.

## Prerequisites
1. Terraform installed on your local machine.
2. AWS credentials configured with permissions to create the specified resources.
3. An understanding of AWS resources and costs associated with the EKS cluster.

## Usage

### Initialize Terraform
```bash
terraform init
```

### Review the Plan
```bash
terraform plan
```

### Apply the Configuration
```bash
terraform apply
```
Confirm the action when prompted.

### Destroy the Resources
To delete all resources created:
```bash
terraform destroy
```

## Outputs
After applying the configuration, the following outputs will be displayed:
- **Cluster Name**: The name of the EKS cluster.
- **Cluster Endpoint**: The endpoint of the EKS cluster.
- **Cluster ARN**: The Amazon Resource Name (ARN) of the EKS cluster.

## Notes
- Ensure the `vpc_id` variable is empty if you want to create a new VPC.
- Costs will be incurred for the created resources. Use the AWS Pricing Calculator to estimate costs.
- The default security group allows access to the cluster endpoints. Adjust security settings as needed for your environment.

## License
This project is licensed under the MIT License.
