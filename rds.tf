resource "aws_db_instance" "mydbsql" {
  allocated_storage    = 10
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  storage_type         = "gp2"
  name                 = "mydb"
  username             = "user1"
  password             = "Hello@123"
  port                 = "3306"
  publicly_accessible  = true
  skip_final_snapshot  = true
  parameter_group_name = "default.mysql5.7"

  tags = {
    Name = "db1"
  }
}
