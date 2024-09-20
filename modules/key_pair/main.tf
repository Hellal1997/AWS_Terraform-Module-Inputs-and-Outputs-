# Generate a private key
resource "tls_private_key" "terraform_generated_private_key" {
  algorithm = var.encrypt_kind
  rsa_bits  = var.encrypt_bits
}

# Define the AWS Key Pair
resource "aws_key_pair" "generated_key" {
  key_name   = "key-pair"
  public_key = tls_private_key.terraform_generated_private_key.public_key_openssh
}

# Generate and save the private key file
resource "null_resource" "generate_key_file" {
  provisioner "local-exec" {
    command = <<-EOT
      echo '${tls_private_key.terraform_generated_private_key.private_key_pem}' > key-pair.pem
      chmod 400 key-pair.pem
    EOT
  }

  # Ensure that the null_resource runs after the key pair is created
  depends_on = [aws_key_pair.generated_key]

}
