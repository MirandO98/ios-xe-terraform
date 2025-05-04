resource "iosxe_interface_ethernet" "example" {
  type                           = "GigabitEthernet"
  name                           = "3"
  bandwidth                      = var.bandwidth
  description                    = "My Interface Description"
  shutdown                       = var.shutdown
  ip_proxy_arp                   = false
  ip_redirects                   = false
  ip_unreachables                = false
  ipv4_address                   = locals.ipv4_address.GigabitEthernet-interface
  ipv4_address_mask              = locals.ipv4_address.GigabitEthernet-mask

}

#loopback
resource "iosxe_interface_loopback" "example" {
  name                       = 100
  description                = "My loopback Description"
  shutdown                   = var.shutdown
  ip_proxy_arp               = false
  ip_redirects               = false
  ip_unreachables            = false
  ipv4_address               = locals.ipv4_address.loopback-interface
  ipv4_address_mask          = locals.ipv4_address.loopback-mask
}