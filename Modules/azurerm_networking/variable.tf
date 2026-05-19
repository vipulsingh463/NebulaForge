variable "virtual_networks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    cidr                = list(string)

    subnets = optional(map(object({
      name = string
      cidr = list(string)
    })))

  }))
}
