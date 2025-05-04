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
  

  dynamic "process_id" {
    for_each = each.value.process_ids
    content {
      id = process_id.value.id
      
      dynamic "area" {
        for_each = process_id.value.areas
        content {
          area_id = area.value.area_id
        }
      }
    }
  }
  
 
  dynamic "message_digest_key" {
    for_each = each.value.message_digest_keys
    content {
      id            = message_digest_key.value.id
      md5_auth_key  = message_digest_key.value.md5_auth_key
      md5_auth_type = message_digest_key.value.md5_auth_type
    }
  }
}