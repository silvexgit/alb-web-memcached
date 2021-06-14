resource "aws_elasticache_cluster" "silvex-memcached" {
  cluster_id           = "silvex-memcached-cluster"
  engine               = "memcached"
  node_type            = "cache.t2.micro"
  az_mode              = "cross-az"
  num_cache_nodes      = 3
  parameter_group_name = "default.memcached1.6"
  preferred_availability_zones = ["${var.SILVEX-REGION}a", 
                                  "${var.SILVEX-REGION}b", 
                                  "${var.SILVEX-REGION}c" ] 
  security_group_ids  =  [aws_security_group.Silvex-Traffic-172-33.id] 
  port                = 11211
  subnet_group_name   = "silvex-sn-ec-172-33-pri-123"

  depends_on = [
    aws_elasticache_subnet_group.silvex-sn-ec-172-33-pri-123
  ]
}
