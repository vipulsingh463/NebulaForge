variable "vms" {
  type = map(object({
    nic_name            = string
    location            = string
    resource_group_name = string
    subnet_name         = string
    vm_name             = string
    size                = string
    admin_username      = string
    admin_password      = string
    key_name            = string
  }))
}
