#### lint

```bash
a148ru@polaris134:~/Documents/Нетология/DevOps/3.ansible/ans-homework/playbook$ ansible-lint playbook.yml 

Passed: 0 failure(s), 0 warning(s) on 1 files. Last profile that met the validation criteria was 'production'.
a148ru@polaris134:~/Documents/Нетология/DevOps/3.ansible/ans-homework/playbook$ 
```

#### Run playbook
```bash
a148ru@polaris134:~/Documents/Нетология/DevOps/3.ansible/ans-homework/playbook$ ansible-playbook -i inventory/prod.yml playbook.yml 

PLAY [Install clickhouse in ubuntu] *********************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
The authenticity of host '51.250.94.95 (51.250.94.95)' can't be established.
ED25519 key fingerprint is SHA256:cT6FV/Z6qihnT5/zEprgfr5lgLtvVhVQDhcD74sIwMM.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
[WARNING]: Platform linux on host clickhouse-test is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.18/reference_appendices/interpreter_discovery.html for more information.
ok: [clickhouse-test]

TASK [Install dependencies] *****************************************************************************************************************************************************
changed: [clickhouse-test]

TASK [Get key clickhouse repository] ********************************************************************************************************************************************
changed: [clickhouse-test]

TASK [Add clickhouse in apt lists] **********************************************************************************************************************************************
changed: [clickhouse-test]

TASK [Install Clickhouse service] ***********************************************************************************************************************************************
changed: [clickhouse-test]

TASK [Flush handlers] ***********************************************************************************************************************************************************

RUNNING HANDLER [Start clickhouse service] **************************************************************************************************************************************
changed: [clickhouse-test]

TASK [Create database] **********************************************************************************************************************************************************
changed: [clickhouse-test]

PLAY [Install Vector service] ***************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
The authenticity of host '51.250.15.61 (51.250.15.61)' can't be established.
ED25519 key fingerprint is SHA256:DnQDQXbOWXXEWuVRQspAOaEFxw7goqTsJuzCwbRObIo.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
[WARNING]: Platform linux on host vector-test is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.18/reference_appendices/interpreter_discovery.html for more information.
ok: [vector-test]

TASK [Make directory for Unarchive Vector] **************************************************************************************************************************************
changed: [vector-test]

TASK [Download Vector archive] **************************************************************************************************************************************************
changed: [vector-test]

TASK [Unarchive Vector] *********************************************************************************************************************************************************
changed: [vector-test]

TASK [Make dir] *****************************************************************************************************************************************************************
changed: [vector-test]

TASK [Config vector] ************************************************************************************************************************************************************
changed: [vector-test]

TASK [Add the group vector] *****************************************************************************************************************************************************
changed: [vector-test]

TASK [Add the user vector] ******************************************************************************************************************************************************
changed: [vector-test]

TASK [Make dir] *****************************************************************************************************************************************************************
changed: [vector-test]

TASK [Copy vector exec] *********************************************************************************************************************************************************
changed: [vector-test]

TASK [Add vector.service in systemd] ********************************************************************************************************************************************
changed: [vector-test]

RUNNING HANDLER [Restart vector] ************************************************************************************************************************************************
changed: [vector-test]

PLAY [Install Nginx] ************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
The authenticity of host '84.201.175.225 (84.201.175.225)' can't be established.
ED25519 key fingerprint is SHA256:c5S1YoxFkVveGoh1TvVNUY4AhlIiA4XtjV7vadrJ0C8.
This key is not known by any other names.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
[WARNING]: Platform linux on host lighthouse-test is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.18/reference_appendices/interpreter_discovery.html for more information.
ok: [lighthouse-test]

TASK [Install nginx] ************************************************************************************************************************************************************
changed: [lighthouse-test]

TASK [Copy config nginx] ********************************************************************************************************************************************************
changed: [lighthouse-test]

TASK [Copy default site] ********************************************************************************************************************************************************
changed: [lighthouse-test]

RUNNING HANDLER [Restart Nginx server] ******************************************************************************************************************************************
changed: [lighthouse-test]

PLAY [Install Lighthouse] *******************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
ok: [lighthouse-test]

TASK [Get lighthouse] ***********************************************************************************************************************************************************
changed: [lighthouse-test]

PLAY RECAP **********************************************************************************************************************************************************************
clickhouse-test            : ok=7    changed=6    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
lighthouse-test            : ok=7    changed=5    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
vector-test                : ok=12   changed=11   unreachable=0    failed=0    skipped=0    rescued=0    ignored=0  
```


#### diff

```bash
a148ru@polaris134:~/Documents/Нетология/DevOps/3.ansible/ans-homework/playbook$ ansible-playbook -i inventory/prod.yml playbook.yml --diff

PLAY [Install clickhouse in ubuntu] *********************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
[WARNING]: Platform linux on host clickhouse-test is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.18/reference_appendices/interpreter_discovery.html for more information.
ok: [clickhouse-test]

TASK [Install dependencies] *****************************************************************************************************************************************************
ok: [clickhouse-test]

TASK [Get key clickhouse repository] ********************************************************************************************************************************************
ok: [clickhouse-test]

TASK [Add clickhouse in apt lists] **********************************************************************************************************************************************
ok: [clickhouse-test]

TASK [Install Clickhouse service] ***********************************************************************************************************************************************
ok: [clickhouse-test]

TASK [Flush handlers] ***********************************************************************************************************************************************************

TASK [Create database] **********************************************************************************************************************************************************
ok: [clickhouse-test]

PLAY [Install Vector service] ***************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
[WARNING]: Platform linux on host vector-test is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.18/reference_appendices/interpreter_discovery.html for more information.
ok: [vector-test]

TASK [Make directory for Unarchive Vector] **************************************************************************************************************************************
ok: [vector-test]

TASK [Download Vector archive] **************************************************************************************************************************************************
ok: [vector-test]

TASK [Unarchive Vector] *********************************************************************************************************************************************************
ok: [vector-test]

TASK [Make dir] *****************************************************************************************************************************************************************
ok: [vector-test]

TASK [Config vector] ************************************************************************************************************************************************************
ok: [vector-test]

TASK [Add the group vector] *****************************************************************************************************************************************************
ok: [vector-test]

TASK [Add the user vector] ******************************************************************************************************************************************************
ok: [vector-test]

TASK [Make dir] *****************************************************************************************************************************************************************
ok: [vector-test]

TASK [Copy vector exec] *********************************************************************************************************************************************************
ok: [vector-test]

TASK [Add vector.service in systemd] ********************************************************************************************************************************************
ok: [vector-test]

PLAY [Install Nginx] ************************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
[WARNING]: Platform linux on host lighthouse-test is using the discovered Python interpreter at /usr/bin/python3.10, but future installation of another Python interpreter could
change the meaning of that path. See https://docs.ansible.com/ansible-core/2.18/reference_appendices/interpreter_discovery.html for more information.
ok: [lighthouse-test]

TASK [Install nginx] ************************************************************************************************************************************************************
ok: [lighthouse-test]

TASK [Copy config nginx] ********************************************************************************************************************************************************
ok: [lighthouse-test]

TASK [Copy default site] ********************************************************************************************************************************************************
ok: [lighthouse-test]

PLAY [Install Lighthouse] *******************************************************************************************************************************************************

TASK [Gathering Facts] **********************************************************************************************************************************************************
ok: [lighthouse-test]

TASK [Get lighthouse] ***********************************************************************************************************************************************************
ok: [lighthouse-test]

PLAY RECAP **********************************************************************************************************************************************************************
clickhouse-test            : ok=6    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
lighthouse-test            : ok=6    changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   
vector-test                : ok=11   changed=0    unreachable=0    failed=0    skipped=0    rescued=0    ignored=0   

a148ru@polaris134:~/Documents/Нетология/DevOps/3.ansible/ans-homework/playbook$ 
```