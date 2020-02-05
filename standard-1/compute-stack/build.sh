#! /bin/bash
sudo yum update
sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd
echo "<h1>Deployed via Terraform - Template 1</h1>" | sudo tee /var/www/html/index.html