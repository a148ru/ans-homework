data "yandex_compute_image" "ubuntu" {
  family = var.image.ubuntu2204
}

resource "yandex_compute_instance" "vm" {
  for_each = var.names
  name                      = "${each.value}"
  allow_stopping_for_update = true
  platform_id               = "standard-v3"
  zone                      = "ru-central1-a"
  resources {
    cores  = 2
    memory = 4
  }
  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.image_id
    }
  }
  network_interface {
    subnet_id = yandex_vpc_subnet.develop.id
    nat       = true
  }
  metadata = {
    serial-port-enable = 0
    ssh-keys           = "ubuntu:${local.vms_ssh_key}"
  }
  scheduling_policy {
    preemptible = true
  }
}

resource "yandex_vpc_network" "develop" {
  name = "develop"
}

resource "yandex_vpc_subnet" "develop" {
  name       = "develop"
  zone       = var.default_zone["a"]
  network_id = "${yandex_vpc_network.develop.id}"
  v4_cidr_blocks = var.default_cidr.a
}