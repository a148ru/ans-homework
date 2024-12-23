/* 
output ip_instance {
  value = [for o in yandex_compute_instance.vm : o.network_interface[0].nat_ip_address]
}

output names_instance {
  value = [for o in yandex_compute_instance.vm : o.name]
} 
*/