import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

final CollectionReference _Collection = _firestore.collection('Usuario');
final CollectionReference _Collection2 = _firestore.collection('Respostas');

class FirebaseCrud {
  static Future<Response> addUsuario({
    required String nome,
    required String idade,
    required String areaDeAtuacao,
    required String email,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    List<Map<String, dynamic>> data = [
      {
        "nome_do_usuario": nome,
        "idade": idade,
        "area_de_atuaçao": areaDeAtuacao,
        "email": email,
      }
    ];

    var result = await documentReferencer.set(data).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });
    return response;
  }

  static Future<Response> addResposta() async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection2.doc();
    GuardaRespostas teste = GuardaRespostas();
    teste.adiciona(
      {"Sim ou Nao": "sim", "\ncaso sim": "nao sei", "caso nao": "\npode ser"});
    teste.adiciona(
      {"Sim ou Nao": "sim", "\ncaso sim": "nao sei", "caso nao": "\npode ser"});

  List<Map<String, dynamic>> listaDeRespostas = [];
  for (int i = 0; i < 2; i++) {
    listaDeRespostas.add(teste.respostas[i]);
  }

  
    print("Ta indo");
    var result = await documentReferencer.set({"Repostas" : listaDeRespostas});

    return response;
  }
}