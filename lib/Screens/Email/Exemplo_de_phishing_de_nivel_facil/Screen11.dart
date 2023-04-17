import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen11 extends StatelessWidget {
  const Screen11({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
                children: [
                  // EmailTitle(
                  //     label: "Informações importantes sobre a sua conta PayPal"),
                  SenderCard(label: "Nigerian "),
                  ShippingInformation(
                      sender: "Nigerian ",
                      emailSender: "service@nigerian.com.br",
                      emailRecipient: "logancardoso4@gamil.com"),
                  //Image.asset('images/paypal.jpg'),
                        SizedBox(height: 12),
    
                  Row(
                          children: [
                            Text(
                              "Iimportante,",
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
                          "As informações transmitidas são para uso exclusivo do destinatário pretendido e podem conter material confidencial e/ou legalmente privilegiado. Qualquer revisão, retransmissão, divulgação, divulgação ou outro uso ou tomada de qualquer ação com base nesta informação por pessoas ou entidades que não sejam o destinatário pretendido é proibida e pode resultar em penalidades severas. Se você recebeu este e-mail por engano, notifique a Linha Direta de Privacidade do Australian Taxation Office, telefone para 1300 661 542 e exclua todas as cópias desta transmissão junto com quaisquer anexos. Acesse o link para atualizar seus dados: \n\nwww.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                   
                ],
              ),
            ),
          ),
    );
  }
}
