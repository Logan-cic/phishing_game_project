import 'package:flutter/material.dart';
import 'package:phishing_game_project/models/guardaRespostas.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../services/firebase_crud.dart';
import '../../Resposta/Formulario_de_Resposta.dart';
import 'Screen12.dart';

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
            
            elevation: 0,
            title: Text(
              "Game Phishing",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color:  Colors.grey[850],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_outlined),onPressed: () {}),
                    IconButton(icon: Icon(Icons.archive), onPressed: () {}),
                    IconButton(icon: Icon(Icons.delete), onPressed: () {}),
                    IconButton(icon: Icon(Icons.email), onPressed: () {}),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {}), 
                  ],
                ),
              ),
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

              Image.asset('images/nubank.jpg'),

              Container(
                height: 400,
                color: Colors.grey[900],
                child: const Center(
                  child: Text(
                      "Parabéns, \n\nVocê foi um dos ganhadores na premiação do concurso Tudo no Roxinho. O Nubank nasceu com a missão de descomplicar o dia a dia das pessoas, principalmente quando se trata de vida financeira. Oferecemos produtos e serviços simples de usar e que podem ser acompanhados totalmente pelo aplicativo. \n\nE com a promoção “Tudo no Roxinho” não é diferente. Lançada hoje, 16 de maio de 2022, ela vai durar três meses, com quatro sorteios de R\$ 10 mil por mês, durante o período da promoção e um grande prêmio de R\$ 300 mil ao final da promoção, que se encerra em setembro deste ano. \n\nEntre no nosso site e resgate sua premiação: \nhttps://nunbank.com.br/premio",
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
            ],
          ))),
    );
  }
}
