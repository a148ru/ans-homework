## 


```bash
$ ansible-lint site.yml
```

![alt text](image.png)

-----------------------

```bash
$ ansible-playbook -i inventory/prod.yml site.yml --check
```
![alt text](image-1.png)

-----------------------

```bash
$ ansible-playbook -i inventory/prod.yml site.yml --diff
```
1.
![alt text](image-2.png)
2.
![alt text](image-3.png)