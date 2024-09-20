variable "encrypt_kind" {
  description = "Encryption algorithm for the private key."
  type        = string
  default     = "RSA"
}

variable "encrypt_bits" {
  description = "Number of bits for the RSA key."
  type        = number
  default     = 4096
}