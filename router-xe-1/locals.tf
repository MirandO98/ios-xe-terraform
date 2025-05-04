locals {
  interfaces = {
    gigabit_ethernet = {
      type              = "GigabitEthernet"
      name              = "3"
      bandwidth         = var.bandwidth
      description       = "My Interface Description"
      shutdown          = var.shutdown
      ip_proxy_arp      = false
      ip_redirects      = false
      ip_unreachables   = false
      ipv4_address      = "15.1.1.1"
      ipv4_address_mask = "255.255.255.252"
    },
    loopback = {
      type              = "Loopback"
      name              = "100"
      description       = "My loopback Description"
      shutdown          = var.shutdown
      ip_proxy_arp      = false
      ip_redirects      = false
      ip_unreachables   = false
      ipv4_address      = "200.1.1.1"
      ipv4_address_mask = "255.255.255.255"
    }
  }

  ospf_configs = {
    loopback1 = {
      type                             = "Loopback"
      name                             = "1"
      cost                             = "10"
      dead_interval                    = "30"
      hello_interval                   = "5"
      mtu_ignore                       = var.mtu_ignore
      network_type_broadcast           = var.network_type_broadcast
      network_type_non_broadcast       = var.network_type_non_broadcast
      network_type_point_to_multipoint = var.network_type_point_to_multipoint
      network_type_point_to_point      = true
      priority                         = "10"
      ttl_security_hops                = 2
      process_ids = [
        {
          id = var.id
          areas = [
            {
              area_id = "0"
            }
          ]
        }
      ]
      message_digest_keys = [
        {
          id            = var.id
          md5_auth_key  = var.md5_auth_key
          md5_auth_type = var.md5_auth_type
        }
      ]
    }
  }
}