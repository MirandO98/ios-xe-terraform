locals {
  
  ipv4_address = {

    GigabitEthernet-Interface = "15.1.1.1"
    GigabitEthernet-mask = "255.255.255.252"
    loopback-interface = "200.1.1.1"
    loopback-mask = "255.255.255.255"
  }
  ospf_confg = {
    
  router-1 = {  
    cost = "10"
    dead_interval = "30"
    hello_interval =  "5"
    priority = "10"
    area_id = "0"
  }
  }
}