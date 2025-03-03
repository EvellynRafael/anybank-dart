abstract class Conta {  // Classe abstrata serve para que outras classes usem-na como modelo (herdem os atributos/propriedades e métodos delas).
  String titular;
  double _saldo; //underline antes da variavel para definir que ela é privada

  Conta(this.titular, this._saldo); //this -> Referenciar algo dentro do próprio escopo

  void receber(double valor){ //Pra quem vai receber? Para a conta um determinado valor.
    _saldo += valor;
    imprimeSaldo();
  }

  void enviar(double valor ){ //Pra quem vai enviar? Para a conta um determinado valor.
    if (_saldo >= valor){
      _saldo -= valor;
      imprimeSaldo();
    } 
  }

  void imprimeSaldo(){
    print("O saldo atual de $titular é: R\$$_saldo");
  }
}

class ContaCorrente extends Conta {
  double emprestimo = 300;
  String cor; //Só pra testar a outra forma de utilizar super.
  ContaCorrente(this.cor, String titular, double _saldo): super(titular, _saldo); //Forma diferente de fazer super

  //Sobrescrita de método -> sobrescrever uma função de uma forma que acha mais válido para essa situação (no caso a classe)
  //Polimorfismo -> Capacidade de adionar diferenças a um objeto ou classe
  @override
  void enviar(double valor) {
    if (_saldo + emprestimo >= valor) {
      _saldo -= valor;
      imprimeSaldo();
    }
  }
} 
// super -> Referenciar uma propriedade que estamos tentando clonar (herança)
class ContaPoupanca extends Conta {
  double rendimento = 0.05;
  ContaPoupanca(super.titular, super._saldo); //Outra forma de criar super

  void calculaRendimento() { //Não precisa receber nenhum valor pois o rendimento está na própria classe
    _saldo += _saldo * rendimento;
  }
}

mixin Imposto {
  double taxa = 0.03;

  double valorTaxado(double valor) {
    return valor * taxa;
  }
}

class ContaEmpresa extends Conta with Imposto {
  ContaEmpresa(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimeSaldo();
    }
  }

  @override
  void receber (double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimeSaldo();
  }
}

class ContaInvestimento extends Conta with Imposto {
  ContaInvestimento(super.titular, super._saldo);

  @override
  void enviar(double valor) {
    if (_saldo >= valor + valorTaxado(valor)) {
      _saldo -= valor + valorTaxado(valor);
      imprimeSaldo();
    }
  }

  @override
  void receber (double valor) {
    _saldo += valor - valorTaxado(valor);
    imprimeSaldo();
  }
}