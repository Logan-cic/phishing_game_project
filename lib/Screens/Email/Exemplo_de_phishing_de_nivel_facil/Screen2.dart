import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';


class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

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
              title: Center(
                child: Text(
                  "Game Phishing",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            body: WillPopScope(
              onWillPop: () async {
                Navigator.pop(context);
                return false; // Impede o retorno para a tela anterior
              },
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Text("Tudo no Roxinho: quer saber se você ganhou?",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  SenderCard(label: "Nubank"),
                  ShippingInformation(
                      sender: "Nubank",
                      emailSender: "inforemail@nubank.com.br",
                      emailRecipient: "logancardoso4@gamil.com"),
                  SizedBox(height: 14),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('images/nubank.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 400,
                      color: Colors.black,
                      child: const Center(
                        child: Text(
                            "Parabéns, \n\nVocê foi um dos ganhadores na premiação do concurso Tudo no Roxinho. O Nubank nasceu com a missão de descomplicar o dia a dia das pessoas, principalmente quando se trata de vida financeira. Oferecemos produtos e serviços simples de usar e que podem ser acompanhados totalmente pelo aplicativo. \n\nE com a promoção “Tudo no Roxinho” não é diferente. Lançada hoje, 16 de maio de 2022, ela vai durar três meses, com quatro sorteios de R\$ 10 mil por mês, durante o período da promoção e um grande prêmio de R\$ 300 mil ao final da promoção, que se encerra em setembro deste ano. \n\nEntre no nosso site e resgate sua premiação: \nhttps://nunbank.com.br/premio",
                            style: TextStyle(color: Colors.white, fontSize: 16)),
                      ),
                    ),
                  ),
                ],
              )),
            )),
    );
  }
}
