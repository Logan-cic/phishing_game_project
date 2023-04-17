import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen7 extends StatelessWidget {
  const Screen7({Key? key}) : super(key: key);

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
                children: [
                  //EmailTitle(label: "iFood quer ouvir você!"),
                  SenderCard(label: "iFood"),
                  ShippingInformation(
                      sender: "iFood",
                      emailSender: "<news@news.ifood.com.br>",
                      emailRecipient: "logancardoso4@gamil.com"),
                  SizedBox(height: 12,),
    
                  Image.asset('images/ifood.jpg'),
                  SizedBox(height: 12,),
                  Text(
                      "Faz tempo que a gente não se fala. Queria te ouvir e melhorar a experiência que você teve. Topa me ajudar? É só responder essa pesquisa rapidinho. O link para a pesquisa: https://pesquisaifood.com/jfe/form/SV_2fNiVw3jkVGl4Q6",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ],
              ),
            ),
      )
    );
  }
}
