import 'package:firebase_core/firebase_core.dart';
import 'package:phishing_game_project/services/firebase_crud.dart';

class GuardaRespostas {
  static List<Map<String, dynamic>> respostas = [];

  adiciona(Map<String, dynamic> rpt) {
    if (respostas.length < 2) {
      respostas.add(rpt);
      print(respostas.length);
    } else if (respostas.length == 2) {
      print("O jogo acabou");
      uploadFirebase();
    }
  }

  Future uploadFirebase() async {
    await FirebaseCrud.addResposta(respostas);
  }
}

// void main(List<String> args) {
//   GuardaRespostas teste1 = GuardaRespostas();
//   GuardaRespostas teste2 = GuardaRespostas();
//   GuardaRespostas teste3 = GuardaRespostas();
//   GuardaRespostas teste = GuardaRespostas();

//   teste1.adiciona({"nome1": "Logan"});
//   teste2.adiciona({"nome2": "Logan"});
//   teste3.adiciona({"nome3": "Logan"});
//   teste3.adiciona({"nome3": "Logan"});
// }
