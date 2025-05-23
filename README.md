# 🚀 Como ejecutar
Para ejecutar la `infraestructura` existen varias formas, la más sencilla es crear el archivo `terraform.tfvars` y allí poner la siguiente estructura:

```javascript
// terraform.tfvars

aws_access_key = "IAM_ACCESS_KEY"
aws_secret_key = "IAM_SECRET_KEY"

ami_id         = "ami-ID" 
instance_type  = "INSTANCE_TYPE" // t2.micro
instance_count = 2 // numero de instancias de EC2

```
