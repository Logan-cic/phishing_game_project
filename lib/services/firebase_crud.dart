import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import '../models/response.dart';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;

final CollectionReference _Collection = _firestore.collection('Usuario');
final CollectionReference _Collection2 = _firestore.collection('Respostas');

class FirebaseCrud {
  static Future<Response> addUsuario({
    required String idade,
    required String areaDeAtuacao,
  }) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection.doc();

    Map<String, dynamic> data = 
      {
        "idade": idade,
        "area_de_atuaçao": areaDeAtuacao,
      };

    var result = await documentReferencer.set(data).whenComplete(() {
    }).catchError((e) {
      response.code = 500;
      
    });
    return response;
  }

  static Future<Response> addResposta(List<Map<String, dynamic>> dados) async {
    Response response = Response();
    DocumentReference documentReferencer = _Collection2.doc();
    // print("Ta indo");
    var result = await documentReferencer.set({"Repostas" : dados}).whenComplete(() {
      response.code = 200;
      response.message = "Sucessfully added to the database";
    }).catchError((e) {
      response.code = 500;
      response.message = e;
    });

    return response;
  }
}
