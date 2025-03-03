import 'package:anybank/conta.dart';

void main(){
/*   Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000); */
  ContaCorrente contaChris = ContaCorrente("Chris", "Azul", 4000);
  ContaPoupanca contaDenise = ContaPoupanca("Denise", 4000);
  ContaEmpresa contaMatheus = ContaEmpresa("Matheus", 2000);
  ContaInvestimento contaRoberta = ContaInvestimento("Roberta", 2000);
  
/*   List<Conta> contas = <Conta>[contaMatheus, contaRoberta, contaChris, contaDenise]; */ //Só pode guardar variaveis do tipo conta dentro dessa lista

/*   for (Conta conta in contas){ //Para cada conta que estiver dentro não depende se o nome da variavel é fulano
    conta.imprimeSaldo();
  }

  contaRoberta.receber(3000);
  contaMatheus.receber(500);
  contaMatheus.enviar(200); */

  contaChris.imprimeSaldo();
  contaChris.enviar(4300);
  
  contaDenise.imprimeSaldo();
  contaDenise.enviar(4300);
  contaDenise.calculaRendimento();
  contaDenise.imprimeSaldo();

  contaMatheus.enviar(1000);
  contaRoberta.receber(1000);

}

/*
extendes = herança
implements = interface 
With = mixin 
*/