# EKS Cluster Configuration
resource "aws_eks_cluster" "main" {
  name     = "fiap-eks"
  role_arn = "arn:aws:iam::123456789012:role/EKSRole"

  vpc_config {
    subnet_ids = [aws_subnet.public.id]
  }

  tags = {
    Environment = "fase4"
  }
}
