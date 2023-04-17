import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../page/perguntas.dart';

class Screen9 extends StatelessWidget {
  const Screen9({Key? key}) : super(key: key);

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
                  Text("Atualização sobre a candidatura",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  const SenderCard(label: "Caixa Economica"),
                  const ShippingInformation(
                      sender: "Caixa Economica",
                      emailSender: "caixa123@gmail.com",
                      emailRecipient: "aluno@gamil.com"),
                  SizedBox(height: 12),
                  Column(
                    children: [
                  SizedBox(height: 14),
                  Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('images/Caixa_Econômica_Federal_logo.png'),
                    ),
                  ),
                  SizedBox(height: 14),
    
                      Row(
                        children: [
                          Text(
                            "Houve problema ao creditar o valor",
                            textAlign: TextAlign.left,
                            //textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                    
               
                        
                      Text(
                        "Os RS1.966,80 que enviaram para você via PIX ainda não estão disponíveis.Informamos que www.caixa.gov.br sistema de identificação da Caixa Econômica Federal.",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(height: 8),
                        Text(
                        "O recadastramento de segurança é indispensável para desbloquear seus créditos",
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
                          Text("Caixa economica Federau",
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
    );
  }
}
