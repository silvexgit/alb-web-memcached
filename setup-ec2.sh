#! /bin/bash
#
# https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/Appendix.PHPAutoDiscoverySetup.Installing.html
#
cd
sudo yum -y install httpd
sudo cp /usr/share/httpd/noindex/index.html /var/www/html/
sudo systemctl start httpd
sudo systemctl enable
sudo yum -y install telnet
sudo yum -y install gcc-c++
sudo yum -y install amazon-linux-extras
sudo amazon-linux-extras enable php7.3
sudo yum -y clean metadata
sudo yum -y install php-cli php-pdo php-fpm php-json php-mysqlnd
wget https://elasticache-downloads.s3.amazonaws.com/ClusterClient/PHP-7.3/latest-64bit
sudo tar -zxvf latest-64bit
sudo mv amazon-elasticache-cluster-client.so /usr/lib64/php/modules/
echo "extension=amazon-elasticache-cluster-client.so" | sudo tee --append /etc/php.d/50-memcached.ini
echo "<html>" > /tmp/index.html
echo "<body>" >> /tmp/index.html 
echo "<h2>" >> /tmp/index.html
echo " " >> /tmp/index.html
uname -n >> /tmp/index.html
echo "</h2>" >> /tmp/index.html
echo "</body>"  >> /tmp/index.html
echo "</html>" >>  /tmp/index.html
sudo cp  /tmp/index.html /var/www/html/

sudo systemctl restart httpd
