// DESAFIO MASTERCLASS
//
// O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
// O calculo é representado por Dividir o peso pela Altura ao quadradro²
//
// Cria uma função que realize o calculo de IMC.
import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main(List<String> agrs){
  double altura = getDado("Digite sua altura:");
  double peso = getDado("Digite seu peso:");
  double imc = 0;

  if(altura > 0 && peso > 0){
    imc = (peso / pow(altura, 2));

    print("Seu imc é: ${imc}");
  }
}

double getDado(String texto){

  double valor = 0;
  print(texto);
  String? aux = stdin.readLineSync(encoding: utf8);

  try{
    if(aux != null){
      aux = aux.replaceAll(",", ".");
      valor = double.parse(aux);
    }
  } on FormatException catch (e){
    print('Digite numeros');
  }finally{
    return valor;
  }

}