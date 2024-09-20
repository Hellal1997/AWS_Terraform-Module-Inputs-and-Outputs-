resource "aws_instance" "instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_ids[count.index]
  vpc_security_group_ids = var.security_group_ids
  key_name      = var.key_name
  associate_public_ip_address = var.associate_public_ip_address

  user_data = var.user_data 
 
  tags = {
    Name = "${var.instance_name}-${count.index}"
  }
}
resource "null_resource" "public_instance_provisioners" {
  count = var.associate_public_ip_address ? var.instance_count : 0

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.key)
    host        = aws_instance.instance[count.index].public_ip
  }

  provisioner "file" {
   
    source      = "./key-pair.pem"
    destination = "/home/ubuntu/key-pair.pem"
    
  }

  provisioner "remote-exec" {
    inline = [
      "chmod 400 /home/ubuntu/key-pair.pem"  # Ensure correct permissions
    ]
  }
    depends_on = [aws_instance.instance]

  }