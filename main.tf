module "s3_website" {
  source = "./modules/s3-website"

  bucket_name = "alexander-itevu4330-samling2-lab2-website" # Bytt til noe globalt unikt (f.eks. ditt-navn-pgr301-website)

  tags = {
    Name        = "ITEVU4330 Samling 2 Lab 2"
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}

module "s3_website_two" {
  source = "./modules/s3-website"

  bucket_name = "alexander-itevu4330-samling2-lab2-website-2" # Må være globalt unikt, bruk ditt eget prefiks

  tags = {
    Name        = "ITEVU4330 Lab - Nettside 2"
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}

output "s3_website_url" {
  value       = module.s3_website.website_url
  description = "URL for the S3 hosted website"
}

output "s3_website_two_url" {
  value       = module.s3_website_two.website_url
  description = "URL for den andre S3-hostede nettsiden"
}

output "bucket_name" {
  value       = module.s3_website.bucket_name
  description = "Name of the S3 bucket"
}