import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen10 extends StatelessWidget {
  const Screen10({Key? key}) : super(key: key);

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
                  Text("Muita ateção a sua conta",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  SenderCard(label: "Paypal"),
                  ShippingInformation(
                      sender: "Paypal",
                      emailSender: "service@paypal.com.br",
                      emailRecipient: "logancardoso4@gamil.com"),
    
                      SizedBox(height: 12,),
                  Image.asset('images/paypal2.png'),
                      SizedBox(height: 12,),
                 
                       Text(
                          "Olá cliente,\n\n obrigado por usar Paypal. Sinto informar que sua conta corrente/poupança será suspensa por não cumprir com nossos termos e condições\n\nOs motivos são: dados cadastrais desatualizados, cartão chave de segurança expirada.\n\nPara evitar essa suspenção será necessário atualizar seus dados Acesse o link para atualizar seus dados: \n\nwww.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
                    
                  
                ],
              ),
            ),
          ),
    );
  }
}
