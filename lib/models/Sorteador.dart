import 'dart:math';

class Sorteador {
  static List<int> lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];

  static int sortear() {
    int elemento = lista[Random().nextInt(lista.length)];
    lista.remove(elemento);
    return elemento;
  }

  static List<int> get conteudo => lista;
  static int get tamanho => lista.length;

}

void main() {
  // Sorteador sorteador = Sorteador();
  for (int i = 0; i <= 9; i++) {
  int numeroSorteado = Sorteador.sortear();
    
    if (numeroSorteado % 2 == 0) {
      print("é par $numeroSorteado");
      print(Sorteador.conteudo);
      print(Sorteador.tamanho);
    } else{
      print("impar $numeroSorteado");
      print(Sorteador.conteudo);
      print(Sorteador.tamanho);
    }
  }
}
