# generate inventory file for Ansible
resource "local_file" "inventory" {
  content = templatefile("${path.module}/templates/inventory.tftpl",
    {
      instance = yandex_compute_instance.vm
      username = var.username
    }
  )
  filename = "../playbook/inventory/prod.yml"
}
