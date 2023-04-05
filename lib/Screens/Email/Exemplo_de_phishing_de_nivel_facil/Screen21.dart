import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../models/Dados_do_usuario.dart';
import '../../../page/perguntas.dart';

class Screen21 extends StatelessWidget {
  const Screen21({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Userdata user;
    return Container(
      height: 460,
      child: MaterialApp(
        home: Scaffold(
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
                Text("Atualização sobre a candidatura",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                const SenderCard(label: "Indeed"),
                const ShippingInformation(
                    sender: "Indeed",
                    emailSender: "no-reply@indeed.com",
                    emailRecipient: "aluno@gamil.com"),
                SizedBox(height: 14),
                Column(
                  children: [
                    //Image.asset('images/amazon.jpg'),
                    Row(
                      children: [
                        Text(
                          "O e-mail que não queríamos mandar",
                          textAlign: TextAlign.left,
                          //textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Row(
                      children: [
                        Text(
                          "Estágio em Análise e Desenvolvimento de\nSistemas",
                          textAlign: TextAlign.left,
                          //textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.yellow,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                      
                    Text(
                      "Infelizmente, a empresa Empregar Já decidiu não avançar com sua candidatura no momento.",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                      Text(
                      "Mas não desista, continue a buscar vagas e se candidatar a elas.",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                   
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Atenciosamente,",
                            style:
                                TextStyle(color: Colors.white, fontSize: 16)),
                      ],
                    ),
                    Row(
                      children: [
                        Text("Equipe Indeed",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
