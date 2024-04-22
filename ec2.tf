data "aws_ami" "my_ami" {
  #most_recent = true
  name_regex = "^Ansible"
  owners     = ["262011202526"]
}

resource "aws_instance" "testserver-1" {
  ami                         = data.aws_ami.my_ami.id
  key_name                    = "Aws_Default_Key_Mumbai"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.ansible_subnet-1.id
  vpc_security_group_ids      = ["${aws_security_group.allow_tls.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "Master_01"
  }
}

resource "aws_instance" "testserver-2" {
  ami                         = data.aws_ami.my_ami.id
  key_name                    = "Aws_Default_Key_Mumbai"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.ansible_subnet-2.id
  vpc_security_group_ids      = ["${aws_security_group.allow_tls.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "Master_02"
  }
}
resource "aws_instance" "testserver-3" {
  ami                         = data.aws_ami.my_ami.id
  key_name                    = "Aws_Default_Key_Mumbai"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.ansible_subnet-1.id
  vpc_security_group_ids      = ["${aws_security_group.allow_tls.id}"]
  associate_public_ip_address = true
  tags = {
    Name = "Master_03"
  }
}
