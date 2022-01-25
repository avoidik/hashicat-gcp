module "network" {
  source  = "app.terraform.io/graceful-hippo/network/google"
  version = "3.4.0"
  # insert required variables here
  network_name = "gaurav-network"
  project_id = var.project
  subnets = subnets = [
    {
      subnet_name   = "gaurav-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}