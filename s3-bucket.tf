module "s3-bucket" {
  source  = "app.terraform.io/rogergomez-training/s3-bucket/aws"
  version = "2.1.0"
  # insert required variables here
  bucket_prefix = "rogergomez"
  tags = {
    name        = "${var.prefix}-vpc-${var.region}"
    environment = "Production"
    Department  = "Storage"
    Billable    = "Hashicorp"
  }
}
