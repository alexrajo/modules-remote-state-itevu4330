terraform {
  backend "s3" {
    bucket       = "pgr301-terraform-state"
    key          = "alexander-itevu4330-s2-lab2/website/terraform.tfstate" # Bytt "ola-nordmann" til ditt eget navn
    region       = "eu-west-1"
    use_lockfile = true
    encrypt      = true
  }
}