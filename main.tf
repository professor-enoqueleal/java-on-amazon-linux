provider "aws" {
  version = "~> 4.63.0"
  region  = "us-east-1"
}

resource "aws_instance" "dev" {

  ami           = "ami-0e38fa17744b2f6a5"
  instance_type = "t3.medium"
  key_name      = "vockey"
  tags = {
    Name = "web-server-windows"
  }

  vpc_security_group_ids = ["${aws_security_group.sg_to_web_server.id}"]

}
