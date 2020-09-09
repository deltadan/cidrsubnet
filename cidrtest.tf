locals {
  vnet_mgt_cidr = "192.168.0.0/20"
}

output "subnets" {
  value = [
    {
      name = "subnet1"
      cidr = cidrsubnet(local.vnet_mgt_cidr, 4, 0)
    },
    {
      name = "subnet2"
      cidr = cidrsubnet(local.vnet_mgt_cidr, 4, 1)
    },
  ]
}
