// Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
// Consiste quando temos 3 valores e precisamos saber o quarto.
// Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente os valores entre os dois grupos. Ex:
// --
// Grupo1.1             Grupo1.2
// X
// Grupo2.1            Grupo2.2
// --
// Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2
//
// Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução da regra de 3,
// levando em consideração que será considerado o argumento vário como valor a ser encontrado, logo, poderá ter apenas um valor necessáriamente "vazio".

import 'dart:convert';
import 'dart:io';

void main(List<String> agrs){
  double num1 = getDado("Digite numero grupo 1.1"); //1.1
  double num2 = getDado("Digite numero grupo 1.2"); //1.2
  double num3 = getDado("Digite numero grupo 2.1"); //2.1
  double num4 = getDado("Digite numero grupo 2.3"); //2.2

  if(num1 == 0){
    num1 = (num2 * num3) / num4;
  }
  if(num2 == 0){
    num2 = (num1 * num4) / num3;
  }
  if(num3 == 0){
    num3 = (num1 * num4) / num2;
  }
  if(num4 == 0){
    num4 = (num2 * num3) / num1;
  }

  print('$num1 \n $num2 \n $num3 \n $num4');
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
    print('Vazio');
  }finally{
    return valor;
  }

}