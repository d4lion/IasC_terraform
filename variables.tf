variable "ami_id" {
  description = "AMI ID para las instancias EC2"
  type        = string
}

variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Número de instancias EC2"
  type        = number
  default     = 2
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
  
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
}