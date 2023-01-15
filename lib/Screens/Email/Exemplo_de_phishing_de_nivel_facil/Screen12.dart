import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen12 extends StatelessWidget {
  const Screen12({Key? key}) : super(key: key);

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
                //EmailTitle(label: "Microsoft account password change "),
                SenderCard(label: "Microsoft"),
                ShippingInformation(
                    sender: "Microsoft",
                    emailSender: "service@paypal.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                //Image.asset('images/paypal.jpg'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                        "Olá cliente,\n\n obrigado por usar Bradesco. Sinto informar que sua conta corrente/poupança será suspensa por não cumprir com nossos termos e condições\n\nOs motivos são: dados cadastrais desatualizados, cartão chave de segurança expirada.\n\nPara evitar essa suspenção será necessário atualizar seus dados Acesse o link para atualizar seus dados: \n\nwww.scam.org.com/FMfcgzGqQmWjKmdhgcFRXtMlKlnPlJWQ"),
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
