## Para printar uma query string completa
```python
from django.db import connection
```

```python
models = Models.objects.filter(ativo=True)
```
```python
sql, params = models.query.sql_with_params()
```
```python
with connection.cursor() as cursor:
  print(cursor.mogrify(sql, params).decode("utf-8"))
```

## Para ver as querys que foram executadas
```python
from django.db import connection
```
```python
models = Models.objects.filter(ativo=True)
```
```python
for query in connection.queries:
    print(query['sql'])
```
