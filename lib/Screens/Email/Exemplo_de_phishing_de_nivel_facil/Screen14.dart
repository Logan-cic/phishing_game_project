import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen14 extends StatelessWidget {
  const Screen14({Key? key}) : super(key: key);

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
                //EmailTitle(label: "Um novo aparelho está usando sua conta "),
                SenderCard(label: "Netflix"),
                ShippingInformation(
                    sender: "Netflix",
                    emailSender: "noreply@suportes.acessorias.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/netflix.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                        "Se foi você ou outra pessoa que mora na sua residência: \nDivirta-se!\n\nSe foi outra pessoa: \nLembre-se de que somente as pessoas que moram na sua residência podem usar sua conta.\n\nSe foi outra pessoa: \nRecomendamos alterar imediatamente sua senha para manter a segurança da conta. \nAcesse o link: http://help.netflixoficial.com/pt/  ",
                        style: TextStyle(color: Colors.white, fontSize: 16)),
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
