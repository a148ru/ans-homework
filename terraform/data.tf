# generate inventory file for Ansible
resource "local_file" "inventory" {
  content = templatefile("${path.module}/templates/inventory.tftpl",
    {
      instance = yandex_compute_instance.vm
    }
  )
  filename = "../playbook/inventory/test.yml"
}
