
rg = {
  rg1 = {
    name_rg  = "mukhtar-rg"
    location = "Korea Central"
  }
}
sa = {
  sa1 = {
    name                     = "mukhtarstorageaccta0088"
    resource_group_name      = "mukhtar-rg"
    location                 = "Korea Central"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

vnet = {
  vnet1 = {
    name                = "mukhtar-vnet"
    resource_group_name = "mukhtar-rg"
    location            = "Korea Central"
    address_space       = ["10.0.0.0/16"]
  }
}

snet = {
  snet1 = {
    name                 = "frontend-subnet"
    virtual_network_name = "mukhtar-vnet"
    resource_group_name  = "mukhtar-rg"
    address_prefixes     = ["10.0.1.0/26"]
  }
  snet2 = {
    name                 = "backend-subnet"
    virtual_network_name = "mukhtar-vnet"
    resource_group_name  = "mukhtar-rg"
    address_prefixes     = ["10.0.2.0/26"]
  }
}

nic = {
  nic1 = {
    name_nic                      = "mukhtarvm-nic"
    resource_group_name           = "mukhtar-rg"
    location                      = "Korea Central"
    name_ip                       = "mukhtar"
    private_ip_address_allocation = "Dynamic"
    name_pip                      = "mukhtar-vm-pip"
    name_snet                     = "frontend-subnet"
    name_vnet                     = "mukhtar-vnet"
    name_nsg                      = "mukhtar-nsg"
  }
}

pip = {
  pip1 = {
    name                = "mukhtar-vm-pip"
    resource_group_name = "mukhtar-rg"
    location            = "Korea Central"
    allocation_method   = "Static"
  }
}

nsg = {
  nsg1 = {
    name_nsg               = "mukhtar-nsg"
    resource_group_name    = "mukhtar-rg"
    location               = "Korea Central"
    name_security_rule     = "sec"
    destination_port_range = "22"


  }
}

# kv = {
#   kv1 = {
#     name_kv            = "mukhtarkayvault11223355"
#     name_rg            = "mukhtar-rg"
#     location           = "Korea Central"
#     sku_name           = "standard"
#     secret_permissions = ["Get", "List", "Set", "Delete", "Backup", "Restore", "Recover", "Purge", ]
#     key_permissions    = ["Get", "List", "Create", "Delete", "Update", "Import", "Backup", "Restore", "Purge", "Recover", ]

#   }
# }

# kvsu = {
#   kvsu1 = {
#     username   = "username-secret8"
#     user_value = "devopsadmin"
#     name_kv    = "mukhtarkayvault11223355"
#     name_rg    = "mukhtar-rg"
#   }
# }

# kvsp = {
#   kvsp1 = {
#     pswdname  = "password-secret8"
#     pas_value = "Passw@rd123"
#     name_kv   = "mukhtarkayvault11223355"
#     name_rg   = "mukhtar-rg"
#   }
# }

# vm = {
#   vm1 = {
#     name_vm       = "mukhtarvm"
#     name_rg       = "mukhtar-rg"
#     location      = "Korea Central"
#     vm_size       = "Standard_D2s_v3"
#     name_username = "username-secret8"
#     name_password = "password-secret8"
#     name_nic      = "mukhtarvm-nic"
#     name_kv       = "mukhtarkayvault11223355"
#   }
# }

# nsg-nic-assoc = {
#   nsg-nic-assoc1 = {
#     name_nsg            = "mukhtar-nsg"
#     resource_group_name = "mukhtar-rg"
#     name_nic            = "mukhtarvm-nic"
#     name_security_rule  = "sec"
#   }
# }
