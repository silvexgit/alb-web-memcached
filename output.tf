output "ALB_Hostnam" {
  description = "DNS name of ALB"
  value       = join("", aws_lb.silvex-alb-pub-100.*.dns_name)
}

output "Memcache_Hostname" {
  value = "${aws_elasticache_cluster.silvex-memcached.configuration_endpoint}"
}

#output "silvex-aws-linux-101-tf" {
#  value = aws_instance.silvex-aws-linux-101-tf.public_dns
#}


