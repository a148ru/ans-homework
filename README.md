### 1. Подготовка окружения

- Используя terraform в Yandex.Cloud
    ```bash
    $ terraform -chdir=../terraform apply
    ```
    потребуется указать переменные:
    * token
    * cloud_id
    * folder_id

- Создать вручную 3 хоста *ubuntu/debian* и подготовить inventory файл (пример `inventory/test.yml`)
```yaml
---
clickhouse:
  hosts:
    clickhouse-test:
      ansible_host: 192.168.100.200
      ansible_ssh_user: root

vector:
  hosts:
    vector-test:
      ansible_host: 192.168.100.201
      ansible_ssh_user: root

lighthouse:
  hosts:
    lighthouse-test:
      ansible_host: 192.168.100.202
      ansible_ssh_user: root

```

### 2. Зависимости

https://github.com/AlexeySetevoi/ansible-clickhouse
https://github.com/a148ru/vector-role
https://github.com/a148ru/lighthouse-role

```shell
ansible-galaxy role install -r requirements.yml
```

### 3. Запуск playbook

```bash
$ ansible-playbook -i inventory/prod.yml playbook.yml
```
