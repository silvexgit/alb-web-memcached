resource "aws_elasticache_subnet_group" "silvex-sn-ec-172-33-pri-123" {
  name       = "silvex-sn-ec-172-33-pri-123"
  subnet_ids = [aws_subnet.silvex-sn-172-33-pri-1.id,
                aws_subnet.silvex-sn-172-33-pri-2.id, 
                aws_subnet.silvex-sn-172-33-pri-3.id
		]
}
