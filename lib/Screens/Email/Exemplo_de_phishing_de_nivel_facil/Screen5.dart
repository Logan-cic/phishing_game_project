import 'package:flutter/material.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 460,
        child: MaterialApp(
          home: Scaffold(
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
                  // EmailTitle(label: "Aviso de suspenção de conta Amazon"),
                  SenderCard(label: "Banco do Brasil"),
                  ShippingInformation(
                      sender: "Banco do Brasil",
                      emailSender: "noreply@Amz-boF2R3.com ",
                      emailRecipient: "logancardoso4@gamil.com"),
                  //Image.asset('images/nubank.jpg'),
                  Container(
                    height: 460,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                          "Esta atualização vem para correção de alguns modulos adicionais de acesso e se faz obngztúna para todos os dientes pessoa física. Para realiza-la siga as instruções disponíveis no link abaixo:"),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: double.infinity,
                    color: Colors.black,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        '[http:/hwww.bb.com.br/autoatendimento/internet/atualizar]',
                        textDirection: TextDirection.ltr,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue[700],
                        ),
                      ),
                    ),
                    alignment: Alignment.topLeft,
                  ),
                  Container(
                    height: 200,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                        "\n\nCaso suas informações não forem confirmadas suas conta será suspensa.",
                        textDirection: TextDirection.ltr,
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
