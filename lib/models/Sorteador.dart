import 'dart:math';

import 'guardaRespostas.dart';

class Sorteador {
  static sortear() {

    int elemento = Random().nextInt(153) + 1;
    GuardaRespostas tam = GuardaRespostas();
    if(tam.tamanhoEP == 5 ){
        print("cheguei no meu maximo de pares");
        return 1;
    }
    if (elemento % 2 == 0) {
      return elemento;
    } 
    if(tam.tamanhoNP == 5 ){
        print("cheguei no meu maximo de impares");
        return 2;
    }
    if(elemento % 2 == 1) {
      return elemento;
    }
   
  }
  
}

// void main() {
//   Sorteador sorteador = Sorteador();
//   // for (int i = 0; i <= 9; i++) {
//   //     print(Sorteador.conteudo);
//   //     int numeroSorteado = Sorteador.sortear();
//   //     print("O numero é o: $numeroSorteado");
//   //     print(Sorteador.conteudo);
//   //     print(Sorteador.tamanho);
  
//   // }
//       print(Sorteador.conteudo.length);

// }
