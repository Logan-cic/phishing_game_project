import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key}) : super(key: key);

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
                  //EmailTitle(label: "Colocamos um troco na sua mão!"),
                  SenderCard(label: "Inter"),
                  ShippingInformation(
                      sender: "Inter",
                      emailSender: "noreply@comunicacao.bancointer.com.br",
                      emailRecipient: "logancardoso4@gamil.com"),
                  Image.asset('images/inter.jpg'),
                  Container(
                    height: 460,
                    color: Colors.black,
                    child: Center(
                      child: Text(
                          "Com o Inter, você tem LIBERDADE DE ESCOLHA. Ao fazer a Portabilidade de Consignado, você decide se quer ter troco na mão, para realizar mais sonhos, ou se quer reduzir as suas parcelas, para economizar mês a mês.\n\nAlém dos nossos benefícios tradicionais, ao portar seu Consignado acima de R\$ 100 mil para o Inter, você ganha um Cartão Inter Black, para fazer compras no crédito e ter toda a exclusividade que merece. \n\nAcesse o link e saiba mais: https://www.bancointer.com.br/pra-voce/"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
