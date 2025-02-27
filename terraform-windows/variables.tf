variable "vsphere_user" {}

variable "vsphere_password" {
  default= "Mystery"
  sensitive = true

}



variable "vsphere_server" {
  default= "vc-oit02.oit.umn.edu"
}

variable "windows_template" {
    default = "Win2019-Template-Base-Thin"
}

variable "computer_name" {
    default = "machine"
}

variable "vm-count" {
    default = 1
}

variable "vm-name" {
  type        = string
  description = "The name of the vSphere virtual machines and the hostname of the machine"
}

variable "vm-cpu" {
  type        = string
  description = "Number of vCPU for the vSphere virtual machines"
  default     = "2"
}

variable "vm-ram" {
  type        = string
  default =     "8"
  description = "Amount of RAM for the vSphere virtual machines (example: 2048)"
}

variable "domain" {
  type        = string
  default     = "ad.umn.edu"
  description = "Domain for DNS and AD"
}

variable "domain_admin_user" {
  type        = string
  default     = "oitserver-bind"
  description = "Domain account with necessary privileges to join a computer to the domain."
}

variable "domain_admin_password" {
  type        = string
  description = "Domain user password."
}

variable "dns_server_list" {
  type        = list(any)
  default     = ["128.101.101.101","134.84.84.84"]
  description = "list of DNS server IPs"
}

variable "ipv4_addresses" {
  type        = list(any)
  description = "list IPs"
}

variable "ipv4_netmasks" {
  type        = list(any)
  description = "list of net masks corresponding to the list of IPs"
}

variable "vmgateway" {
  type        = string
  description = "Network gateway IP"
}

variable "local_adminpass" {
  type        = string
  default     = "Parcel#420$ForYou"
  description = "admin pass local to machine"
}