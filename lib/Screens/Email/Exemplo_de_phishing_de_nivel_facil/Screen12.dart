import 'package:flutter/material.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../page/perguntas.dart';

class Screen12 extends StatelessWidget {
  const Screen12({Key? key}) : super(key: key);

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Acesso a caixas eletronicos suspenso",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  const SenderCard(label: "Bradesco"),
                  const ShippingInformation(
                      sender: "Bradesco",
                      emailSender: "infoBradesco@live.br",
                      emailRecipient: "usuario@gamil.com"),
                  SizedBox(height: 14),
                  Column(
                    children: [
                      //Image.asset('images/amazon.jpg'),
                      Row(
                        children: [
                          Text(
                            "Prezado Cliente,",
                            textAlign: TextAlign.left,
                            //textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
    
                      Text(
                        "Por motivos de segurança comunicamos a todos os clientes que, visando barrar o constante aumento de fraudes no Internet Banking Bradesco será obrigatório realizar a Atualização do seu Cartão Chaves de Segurança, e nova forma de acesso ao Internet Banking. Caso não efetue a sua Atualização obrigatória com urgência o acesso via caixas eletroniÔnicos sera suspenso!",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
    
                      SizedBox(height: 8),
                      Text("Utilize o botão abaixo para efetuar a atualizas",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
    
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.yellow,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Atualizar Dados',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Atenciosamente,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Bradesco.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
    );
  }
}
