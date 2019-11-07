# Usar o Valgrind

## Executar Valgrind com mais opções
```sh
valgrind --leak-check=full --track-origins=yes name-of-your-program
```

## Executar Valgrind com mais opções ainda e com salvamento do log em txt
```sh
valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind-out.txt ./executable
```

## Para mostrar a linha correta do erro
```sh
valgrind --tool=memcheck --leak-check=full --show-leak-kinds=all --track-origins=yes --verbose --log-file=valgrind-out.txt ./executable
```