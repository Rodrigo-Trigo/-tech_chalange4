resource "aws_eks_cluster" "fiap" {
  name     = "fiap-eks"
  role_arn = "arn:aws:iam::656894455947:role/LabRole"

  vpc_config {
    subnet_ids = [
      aws_subnet.public_a.id,
      aws_subnet.public_b.id
    ]
  }
}

resource "aws_eks_node_group" "fiap_nodes" {
  cluster_name    = aws_eks_cluster.fiap.name
  node_group_name = "fiap-nodes"
  node_role_arn   = "arn:aws:iam::656894455947:role/LabRole"
  subnet_ids      = [
    aws_subnet.public_a.id,
    aws_subnet.public_b.id
  ]

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }
}
