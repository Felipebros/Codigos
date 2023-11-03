## Contar quantidade de linhas de um arquivo que contenham essa string
```
grep -o 'prod\.ERROR.*' laravel-2023-11-03.log | wc -l
```

## Abrir no less as linhas que contenham essa string
```
grep -o 'prod\.ERROR.*' laravel-2023-11-03.log | less
```
