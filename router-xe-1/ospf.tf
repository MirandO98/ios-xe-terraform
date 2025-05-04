resource "iosxe_interface_ospf" "ospf_interfaces" {
  for_each = local.ospf_configs
  

  type                             = each.value.type
  name                             = each.value.name
  cost                             = each.value.cost
  dead_interval                    = each.value.dead_interval
  hello_interval                   = each.value.hello_interval
  mtu_ignore                       = each.value.mtu_ignore
  network_type_broadcast           = each.value.network_type_broadcast
  network_type_non_broadcast       = each.value.network_type_non_broadcast
  network_type_point_to_multipoint = each.value.network_type_point_to_multipoint
  network_type_point_to_point      = each.value.network_type_point_to_point
  priority                         = each.value.priority
  ttl_security_hops                = each.value.ttl_security_hops
  

  process_ids = [for process_id in each.value.process_ids : {
    id      = process_id.id
    areas   = [for area in process_id.areas : { area_id = area.area_id }]
  }]
  
 
  message_digest_keys = [
    for key in each.value.message_digest_keys : {
      id            = key.id
      md5_auth_key  = key.md5_auth_key
      md5_auth_type = key.md5_auth_type
    }
  ]
}