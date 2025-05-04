resource "iosxe_interface_ospf" "example" {
  type                             = "Loopback"
  name                             = "1"
  cost                             = locals.ospf_confg.router-1.cost
  dead_interval                    = locals.ospf_confg.router-1.dead_interval
  hello_interval                   = locals.ospf_confg.router-1.hello_interval
  mtu_ignore                       = var.mtu_ignore 
  network_type_broadcast           = var.network_type_broadcast
  network_type_non_broadcast       = var.network_type_non_broadcast 
  network_type_point_to_multipoint = var.network_type_point_to_multipoint 
  network_type_point_to_point      = true
  priority                         = locals.ospf_confg.priority
  ttl_security_hops                = 2
  process_ids = [
    {
      id = var.id
      areas = [
        {
          area_id = locals.ospf_confg.area_id
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