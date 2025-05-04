resource "iosxe_interface_ethernet" "interfaces" {
  type              = local.interfaces.gigabit_ethernet.type
  name              = local.interfaces.gigabit_ethernet.name
  description       = local.interfaces.gigabit_ethernet.description
  bandwidth         = local.interfaces.gigabit_ethernet.bandwidth
  shutdown          = local.interfaces.gigabit_ethernet.shutdown
  ip_proxy_arp      = local.interfaces.gigabit_ethernet.ip_proxy_arp
  ip_redirects      = local.interfaces.gigabit_ethernet.ip_redirects
  ip_unreachables   = local.interfaces.gigabit_ethernet.ip_unreachables
  ipv4_address      = local.interfaces.gigabit_ethernet.ipv4_address
  ipv4_address_mask = local.interfaces.gigabit_ethernet.ipv4_address_mask
}

# loopback
resource "iosxe_interface_loopback" "loopback" {
  name              = local.interfaces.loopback.name
  description       = local.interfaces.loopback.description
  shutdown          = local.interfaces.loopback.shutdown
  ip_proxy_arp      = local.interfaces.loopback.ip_proxy_arp
  ip_redirects      = local.interfaces.loopback.ip_redirects
  ip_unreachables   = local.interfaces.loopback.ip_unreachables
  ipv4_address      = local.interfaces.loopback.ipv4_address
  ipv4_address_mask = local.interfaces.loopback.ipv4_address_mask
}