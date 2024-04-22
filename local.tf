resource "local_file" "serverlist" {
  content = templatefile("details.tpl",
    {
      testserver-1 = aws_instance.master-1.public_ip
      testserver-2 = aws_instance.master-2.public_ip
      testserver-3 = aws_instance.master-3.public_ip
    }
  )
  filename = "invfile"
}
