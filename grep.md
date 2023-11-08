grep -v '^$' file.txt | sort | uniq
# Grep

## Contar quantidade de linhas de um arquivo que contenham essa string
```bash
grep -o 'prod\.ERROR.*Too many connections' laravel-2023-10-31.log | wc -l
```

## Abrir no less as linhas que contenham essa string
```bash
grep -o 'prod\.ERROR.*' laravel-2023-11-01.log | less
```

## Gerar um arquivo de texto com as linhas únicas e ordenadas alfanumericamente
```bash
grep -o 'prod\.ERROR.*' laravel-2023-11-01.log | uniq | sort > teste.log
```
