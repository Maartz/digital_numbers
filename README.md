# DigitalNumbers

Digital Numbers propose une API qui transforme un entier en chaine de caractere facon ecran LCD.

```
 _           _     _           _     _     _     _     _ 
| |     |    _|    _|   |_|   |_    |_      |   |_|   |_|
|_|     |   |_     _|     |    _|   |_|     |   |_|     |
```

## Lancer les tests

Cloner le repo, se mettre a la racine et lancer la commande `mix test`

## Tester l'outil

Cloner le repo, se mettre a la racine et lancer un shell interactif a l'aide de `iex -S mix`

`iex` est le REPL propose par Elixir. On peut y charger un projet grace au flag `-S mix`.

Une fois dans le REPL:

```elixir
iex(1)> DigitalNumbers.print(910)

iex(2)> DigitalNumbers.print("1")
"feed me only with positive integer (╯°□°）╯︵ ┻━┻"
```


La documentation peut etre telecharger au format HTML ou ePub [ici](https://send.firefox.com/download/f0c01d959a8c0e26/#xLq4aWuK7hxXd-5bTdZUlg)