# Use this function to test your CIDR Ranges
This simple function can be used to test the CIDR ranges that will be built by Terraform when using the [cidrsubnets](https://www.terraform.io/docs/configuration/functions/cidrsubnet.html) function.


Instructions to run the function to use this CIDR tester
1. Copy the cidrtest.tf into a folder with no other Terraform files.

2. Update the CIDR range of the VNET
```
locals {
    vnet_mgt_cidr = "192.168.0.0/20"
}

```
3. Save the file and run the following command in the folder
```
terraform apply
```
4. The output will show the networks you have created.
```
Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

subnets = [
  {
    "cidr" = "192.168.0.0/24"
    "name" = "subnet1"
  },
  {
    "cidr" = "192.168.1.0/24"
    "name" = "subnet2"
  },
]
```

More CIDR ranges can be added to the array to help you tweak the values to match up to the requirements for your VNETs.