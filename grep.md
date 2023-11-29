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
grep -o 'prod\.ERROR.*' laravel-2023-11-01.log | sort | uniq > teste.log
```

## Pesquisar com grep com case insensitive (sem distinção entre maiúsculas e minúsculas)
> Para ser uma linha única, sem repetição, primeiro precisa ordenar, para depois usar o programa uniq
```bash
grep -o -i 'google \w*' BrowserHistory.json | sort | uniq | less
```

## Grep pesquisando com cláusula 'OU'
```bash
grep -o -e 'palavra 1' -e 'palavra 2' -e 'palavra 3' arquivo.txt | sort | uniq
```
