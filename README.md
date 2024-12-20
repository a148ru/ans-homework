## Задача установки clickhouse и vector на удаленный сервер

### Установка clickhouse

Выбор версии clickhouse в ```group_vars/clickhouse/vars.yml```

```
clickhouse_version: "22.3.3.44"
```

### Установка vector

Версия vector 
```
vector_version: "0.43.1"
```

Конфиг для vector нужно поместить в templates 

