#
# cache.t2.micro is not supported across multiple AZ
# only larger node types. Using cache.t4g.micro takes
# about 10 minutes to create
#
resource "aws_elasticache_cluster" "silvex-memcached" {
  cluster_id           = "silvex-memcached-cluster"
  engine               = "memcached"
  #node_type            = "cache.t2.micro"
  node_type            = "cache.t4g.micro"
  az_mode              = "cross-az"
  num_cache_nodes      = 3
  parameter_group_name = "default.memcached1.6"
  #engine_version       = 1.6.17
  preferred_availability_zones = ["${var.SILVEX-REGION-A}",
                                 "${var.SILVEX-REGION-B}",
                                  "${var.SILVEX-REGION-C}" ]
  security_group_ids  =  [aws_security_group.Silvex-Traffic-172-33.id]
  port                = 11211
  subnet_group_name   = aws_elasticache_subnet_group.silvex-sn-ec-172-33-pri-123.name

  depends_on = [
    aws_elasticache_subnet_group.silvex-sn-ec-172-33-pri-123
  ]
}
