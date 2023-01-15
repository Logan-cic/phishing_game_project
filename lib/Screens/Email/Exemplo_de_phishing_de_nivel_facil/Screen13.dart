import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen13 extends StatelessWidget {
  const Screen13({Key? key}) : super(key: key);

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
                      builder: ((context) => FormularioDeResposta())));
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
                //EmailTitle(label: "Última chance para economizar no Disney+"),
                SenderCard(label: "Disney+"),
                ShippingInformation(
                    sender: "Disney+",
                    emailSender: "disneymais@mail.disneymais.com",
                    emailRecipient: "logancardoso4@gamil.com"),
                Image.asset('images/disney.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                        "Você só tem mais três dias para aproveitar seu primeiro mês de Disney+ por apenas R\$ 4,90. Assine até ‌19 de setembro para garantir essa oferta especial e assistir a grandes lançamentos como Thor: Amor e Trovão da Marvel Studios e Pinóquio da Disney.\nSujeito aos termos.*\n\nAproveite a oferta:\nhttps://www.disneymais.com/pt-br?cid=dss-Disneyplus-email-HPM2QTI244-20220916"),
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
