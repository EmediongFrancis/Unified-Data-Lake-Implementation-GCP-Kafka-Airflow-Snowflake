resource "aws_redshift_cluster" "madhatter-redshift" {
  cluster_identifier = "madhatter-redshift-cluster"
  database_name      = "madhatterdb"
  master_username    = "admin"
  master_password    = "password"
  node_type          = "dc2.large"
  cluster_type       = "single-node"
}
