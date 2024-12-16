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
