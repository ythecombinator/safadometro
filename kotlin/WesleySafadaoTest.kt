fun main(args: Array<String>) {

  if (args.size < 3) {
    println("Erro: Informe sua data de nascimento separado por espaços\nExemplo: 31 12 99")
    return
  }

  WesleySafadao(args[0].toInt(), args[1].toInt(), args[2].toInt())

}
