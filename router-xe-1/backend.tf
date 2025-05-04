terraform {
  
  backend "s3" {
    bucket         = "my-terraform-state"
    key            = var.key
    region         = var.region
    encrypt        = true
    state_lock  =     true
  }
  

}