import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class Respotas {
  List<Map<String, dynamic>> resposta = [];

  Future adicionaRespostasAoMap(Map) async {
    if (resposta.length < 2) {
      resposta.add(Map);
      return;
    } else if (resposta.length == 2) {
      resposta.add(Map);
      uploadFirebise();
      print("Map cheio");
    }
  }

  Future uploadFirebise() async {
    resposta.asMap();
    await Firebase.initializeApp();
    FirebaseFirestore.instance
        .collection("respostas")
        .add({"Respostas": resposta});
  }
}

// void main(List<String> args) {
//   Respotas respotas = Respotas();

//   respotas.adicionaRespostasAoMap({"nome": "Logan"});
//   respotas.adicionaRespostasAoMap({"nome": "Logan"});
//   respotas.adicionaRespostasAoMap({"nome": "Logan"});
//   respotas.adicionaRespostasAoMap({"nome": "Logan"});
//   respotas.adicionaRespostasAoMap({"nome": "Gatinha"});
// }
