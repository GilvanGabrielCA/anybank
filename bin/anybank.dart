import 'package:anybank/conta.dart';

void main() {
  Conta contaMatheus = Conta("Matheus", 1000);
  Conta contaRoberta = Conta("Roberta", 2000);
  ContaCorrente contaChris = ContaCorrente("Chris", 4000);
  ContaPoupanca contaDenise = ContaPoupanca("Denise", 4000);
  ContaSalario contaCatarina = ContaSalario("Catarina", 5000, "00.000.000/0001-00", "Salgaderia Catarina");

  List<Conta> contas = <Conta>[contaMatheus, contaRoberta];

  for (Conta conta in contas) {
    conta.imprimeSaldo();
  }
  
  contaRoberta.receber(3000);
  contaMatheus.receber(500);
  contaMatheus.enviar(200);

  contaChris.imprimeSaldo();
  contaChris.enviar(4300);

  contaDenise.imprimeSaldo();
  contaDenise.enviar(4300);
  contaDenise.calculaRendimento();
  contaDenise.imprimeSaldo();

  contaCatarina.depositarSalario(1000);
  contaCatarina.imprimeSaldo();
}

