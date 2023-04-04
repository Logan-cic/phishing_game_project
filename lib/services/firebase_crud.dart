import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/models/cronometro.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

final CollectionReference _Collection = _firestore.collection('Usuario');
final CollectionReference _Collection2 = _firestore.collection('Respostas');

class FirebaseCrud {
  static Future<Response> addUsuario({
    required String idade,
    required String areaDeAtuacao,
    required String? treinamento,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = {
      "data_de_nascimento": idade,
      "area_de_atuaçao": areaDeAtuacao,
      "Se ja assistiu treinamento sobre phishing" : treinamento
    };

    var result = await documentReferencer.set(data);
    return response;
  }

  static Future<Response> addResposta() async {
    Response response = Response();
    Cronometro tempo = Cronometro();
    GuardaRespostas listaComRespostas = GuardaRespostas();
    List<Map<String, dynamic>> dados;
    // Cronometro fim = Cronometro();
    // Duration elapsed = fim.stopTimer();
    // fim.tempoFinal(elapsed.inSeconds);

    DocumentReference documentReferencer = _Collection2.doc();
    // print("Ta indo");
    var result =
        await documentReferencer.set(
          {"Repostas das telas que sao phishing": listaComRespostas.conteudo,
            "Repostas das telas que nao sao phishing": listaComRespostas.conteudoNP
          });

    return response;
  }
}
