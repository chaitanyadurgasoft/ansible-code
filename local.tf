resource "local_file" "serverlist" {
  content = templatefile("details.tpl",
    {
      testserver-1 = aws_instance.testserver-1.public_ip
      testserver-2 = aws_instance.testserver-2.public_ip
      testserver-3 = aws_instance.testserver-3.public_ip
      testserver-1-dns=aws_instance.testserver-1.public_dns
      testserver-2-dns=aws_instance.testserver-2.public_dns
      testserver-3-dns=aws_instance.testserver-3.public_dns
    }
  )
  filename = "testserver"
}
