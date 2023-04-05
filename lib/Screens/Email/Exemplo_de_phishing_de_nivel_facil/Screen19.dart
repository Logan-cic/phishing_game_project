import 'package:flutter/material.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../models/Dados_do_usuario.dart';
import '../../../page/perguntas.dart';

class Screen19 extends StatelessWidget {
  const Screen19({Key? key}) : super(key: key);

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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => Perguntas())));
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
                Text("Aula de Grafos 04/10 - Adiamento",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                const SenderCard(label: "Facomp"),
                const ShippingInformation(
                    sender: "Facomp UFPA",
                    emailSender: "infosecretaria@ufpa.br",
                    emailRecipient: "aluno@gamil.com"),
                SizedBox(height: 14),
                
                  
                   Column(
                    children: [
                      //Image.asset('images/amazon.jpg'),
                      Row(
                        children: [
                          Text(
                            "Prezadas(os) Alunas(os), Boa tarde",
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

                      Text(
                        "Infelizmente não tenho como ministrar aula para vocês hoje devido a um problema de saúde. Vou adicionar uma lista de exercícios no Sigaa e corrigimos na próxima aula. Como a lista tem exercícios sobre assuntos que ainda não estudamos, peço que façam somente os relativos ao que já vimos.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
              

                      
                  SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Sds,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Professor de Grafos",
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
