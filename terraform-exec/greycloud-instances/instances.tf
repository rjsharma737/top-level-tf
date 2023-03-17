module "instance" {
  source = "./path/to/module"

  instance_count           = var.instance_count
  instance_names           = var.instance_names
  instance_machine_types   = var.instance_machine_types
  instance_boot_disk_sizes = var.instance_boot_disk_sizes
  instance_boot_disk_types = var.instance_boot_disk_types
  instance_image           = var.instance_image
  instance_ssh_keys        = var.instance_ssh_keys
  instance_labels          = var.instance_labels
  network_tags             = var.network_tags
  delete_disks_on_instance_delete = var.delete_disks_on_instance_delete
  subnet_name              = var.subnet_name
  subnet_region            = var.subnet_region
}


/*
locals {
  variables = merge(
    var,
    file("${path.module}/variables.tfvars"),
  )
}

module "instance" {
  source = "./modules/instance"

  variables = local.variables
}

data "google_compute_subnetwork" "subnet" {
  name          = local.variables.subnet_name
  region        = local.variables.subnet_region
  depends_on    = [module.instance] # Wait for instances to be created
}

data "google_compute_zones" "zones" {
  region = local.variables.subnet_region
}
*/