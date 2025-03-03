abstract class Pontuacao {
  void calculaPontos(); //Tirar a chave diz que não foram implementadas dentro da classe pontuacao, dizendo então que é uma interface.
  void devolveColocacao();
}

class Volei extends Esporte implements Pontuacao {
  Volei(super.time);
  
  @override
  void calculaPontos() {
    // TODO: implement calculaPontos
  }
  
  @override
  void devolveColocacao() {
    // TODO: implement devolveColocacao
  }
}

abstract class Esporte {
  String time;

  Esporte(this.time);
}

//Volei herda de esporte(tem um time). Ele também precisa ter seus calculos e sua colocação. 
//São coisas separadas mas que todo esporte tem só que a implementação de cada um de uma forma diferente.
//Para garantir que cada um tenha sua forma de implementação, utilizamos interface.