resource "aws_security_group" "sg_to_web_server" {

  name        = "sg_to_web_server"
  description = "Esse sg habilita o acesso nas portas necessarias para o desenvolvimento"

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow incoming TCP connections"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 3389
    to_port     = 3389
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow incoming RDP connections"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 8080
    to_port     = 8080
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow entry http connections on 8080"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all trafic"
  }

  tags = {
    Name = "Allow ports for connections"
  }

}
