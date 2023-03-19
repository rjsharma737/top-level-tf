
##########
variable "project" {
  description = "The project ID"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "subnet_name" {
  type    = string
}

variable "subnet_region" {
  type    = string
}

variable "instance_names" {
  type    = list(string)
}

variable "instance_machine_types" {
  type    = list(string)
  default = ["e2-medium"]
}

variable "instance_boot_disk_sizes" {
  type    = list(number)
}

variable "instance_boot_disk_types" {
  type    = list(string)
  default = ["SSD"]
}

variable "instance_ssh_keys" {
  type    = list(string)
}

variable "instance_image" {
  type    = string
  default = "debian-11-bullseye-v20220920"
}

variable "instance_labels" {
  type    = map(string)
}

variable "delete_disks_on_instance_delete" {
  type    = bool
  default = true
}

variable "network_tags" {
  description = "List of network tags to add to each instance"
  type        = list(string)
  default     = ["cez-india-hq", "testvm"]
}

variable "vpc_prefix" {
  type = string
  default = "terraform-arch/devops-${var.project}-vpc-state"
}

variable "vpn_prefix" {
  type = string
  default = "terraform-arch/devops-${var.project}-vpn-state"
}

variable "instance_prefix" {
  type = string
  default = "terraform-arch/devops-${var.project}-instances-state"
}

variable "startup_script" {
  description = "User startup script to run when instances spin up"
  default     = ""
}

variable "metadata" {
  type        = map(string)
  description = "Metadata, provided as a map"
  default     = {}
}


##########
