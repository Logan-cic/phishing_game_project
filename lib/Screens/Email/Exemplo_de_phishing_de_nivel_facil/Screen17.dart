import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen17 extends StatelessWidget {
  const Screen17({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
            floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Perguntas())));
              },
            ),
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text(
                "Game Phishing",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("[FADESP]Sua senha foi alterada!",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  SenderCard(label: "FADESP"),
                  ShippingInformation(
                      sender: "Fadesp",
                      emailSender: "fadesp.amparo@gmail.com",
                      emailRecipient: "fuladodetal@gmail.com"),
                 
                    SizedBox(height: 12),
                    Text(
                        "Recebemos sua solicitação de recupração de senha para a conta de CPF: ***.871.***-**.",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 12),
    
                    Text("Esta é sua nova senha: 860371%#",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 12),
                 
                    Text("Recomendamos a alteração desta senha ao entrar no sistema. Se deseja alterar agora Clique Aqui",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                  
                    SizedBox(height: 12),
    
                    Text("Para dúvidas entre em contato através deste email.",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                    SizedBox(height: 12),
    
                    Text("SISTEMA DE AMPARO FADESP ",
                       style: TextStyle( fontSize: 18,color: Colors.white, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
    );
  }
}
