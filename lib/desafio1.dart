// Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci),
// é uma sequência de números inteiros, começando normalmente por 0 e 1,
// na qual cada termo subsequente corresponde à soma dos dois anteriores.
// A sequência recebeu o nome do matemático italiano Leonardo de Pisa,
// mais conhecido por Fibonacci, que descreveu, no ano de 1202,
// o crescimento de uma população de coelhos,
// a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.

import 'dart:convert';
import 'dart:io';

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main(List<String> agrs){

  var result = fibonacci(getDados());
  print("${result}");

}

int getDados(){

  int valor = 0;
  print("Bem-vindo!\n");
  print("Digite um número inteiro: ");
  String? numeroString = stdin.readLineSync(encoding: utf8);

  try{
    if(numeroString != null)
      valor =  int.parse(numeroString);
  }on FormatException catch (e){
    print('Digite numeros inteiro');
  }finally{
    return valor;
  }

}