# ExMon
## Sobre o projeto

jogo produzido em Elixir baseado em turnos que conta com um player contra o
computador.

##  Construído com

* [Elixir](https://elixir-lang.org/)
* [Erlang](https://www.erlang.org/)
* [Credo](https://github.com/rrrene/credo)

## Pré-requisitos

Instale o elixir de acordo com o seu sistema operacional atravéz do link abaixo:

* [Instalação Elixir](https://https://elixir-lang.org/install.html)

## Instalação

1-Clone o repositório.

```sh
https://github.com/carlosrobertosalgueiro/Ex_Mon.git
```

2-Instale o pacote de dependêcias  usando o comando.

```sh
mix deps.get
```

## Uso

1-Inicie o IEX

```sh
iex -S mix
```
2-Crie um Player 

 A função vai receber os seguintes parametros de acordo com a ordem a seguir: "Nome",:Ataque,:Ataque,:Cura
 
 Atribua o comando "ExMon.create_player("Nome","Ataque","Ataque","Cura")" a uma variavel chamada player.
 
 Importante: As ações do jogo são passadas em formato de Atom, excerto o nome do jogador que é em string.
 
 ```sh
player = ExMon.create_player("carlos", :soco, :chute, :cura)
```

3-Inicie o jogo usando o seguinte comando

 ```sh
ExMon.start_game(player)
```

4-Após o jogo inicado é hora de realizar um movimento. 

  Você pode usar as seguintes ações: :soco, :chute, :cura
  
 ```sh
ExMon.make_move(:soco)
```








