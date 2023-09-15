programa {
  inclua biblioteca Util --> ut

  cadeia usuario
  cadeia senha
  inteiro tentativa = 1

  funcao inicio() {
    
    faca {
      limpa()
      escreva("Digite o seu usuario: \n")
      leia(usuario)
      escreva("Digite a sua senha: \n")
      leia(senha)

      se (usuario == "admin" e senha == "admin") {
      limpa()
      escreva("Login realizado com sucesso. \n")
      tentativa = 4

      } senao {
        limpa()
        escreva("Login ou senha incorretos. \n")
        escreva(tentativa,"° tentativa, ao chegar na 3° tentativa, o seu acesso será bloqueado temporariamente")
        ut.aguarde(3000)
        tentativa++
      }
    } enquanto (tentativa < 4)
  }


}