class GuardaRespostas {

  var respostas = [];

  adiciona(Map<String, dynamic> rpt) {
    if (respostas.length <= 2) {
      respostas.add(rpt);
    }
  }

  listaDeRespostas() {
    print(respostas);
  }
}

void main(List<String> args) {
  GuardaRespostas teste = GuardaRespostas();
  teste.adiciona(
      {"Sim ou Nao": "sim", "\ncaso sim": "nao sei", "caso nao": "\nfoda se"});
  teste.adiciona(
      {"Sim ou Nao": "sim", "\ncaso sim": "nao sei", "caso nao": "\nfoda se"});

  List<Map<String, dynamic>> listaDeRespostas = [];
  for (int i = 0; i < 2; i++) {
    listaDeRespostas.add(teste.respostas[i]);
  }
  print(listaDeRespostas.length);
}
