import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen15 extends StatelessWidget {
  const Screen15({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              children: [
                //EmailTitle(label: "Últimas horas do Saldão do Cliente!"),
                SenderCard(label: "Amazon"),
                ShippingInformation(
                    sender: "Amazon",
                    emailSender: "store-news@amazon.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                SizedBox(height: 12,),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('images/amazon.jpg'),
                ),
                SizedBox(height: 12,),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:  Column(
                        children: [
                          Text(
                              "Acesse o link e confira as ofertas: ",
                              style: TextStyle(color: Colors.white, fontSize: 16)),
                          Text("https://www.amazon.com.br/events/saldaodocliente/", style: TextStyle(color: Colors.blue, fontSize: 16))
                        ],
                      ),
                    ),
                  ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
