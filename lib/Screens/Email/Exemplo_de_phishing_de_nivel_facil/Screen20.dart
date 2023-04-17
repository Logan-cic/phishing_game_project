import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../page/perguntas.dart';

class Screen20 extends StatelessWidget {
  const Screen20({Key? key}) : super(key: key);

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
                  Text("[Imersão Java] Um novo desafio para você, Usuário",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  const SenderCard(label: "Facomp"),
                  const ShippingInformation(
                      sender: "Jacqueline | Alura",
                      emailSender: "jacqueline@alura.com.br",
                      emailRecipient: "aluno@gmail.com"),
                  SizedBox(height: 14),
                  Column(
                    children: [
                      //Image.asset('images/amazon.jpg'),
                      Row(
                        children: [
                          Text(
                            "Olá, Aluno!",
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
                        "Aqui é a Jacqueline Oliveira, Instrutora da Alura, e tenho um desafio para você que já participou das nossas Imersões:",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text("Vem aí uma nova edição da Imersão Java!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
    
                      Text(
                        "É a sua oportunidade de mergulhar em programação, desenvolver a sua primeira aplicação em Java e ampliar o seu portfólio. Bora lá?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text("Topo, desafio Alura!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: 8),
                      Text(
                        "Serão 5 dias imersos com aulas e desafios desenvolvidos especialmente para você consolidar seu conhecimento, adicionar novos projetos ao seu portfólio e dar um upgrade na sua carreira.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Serão 5 dias imersos com aulas e desafios desenvolvidos especialmente para você consolidar seu conhecimento, adicionar novos projetos ao seu portfólio e dar um upgrade na sua carreira.E tudo isso, claro, com a didática da Alura, encontros ao vivo, grupos de estudos diários e acesso à uma comunidade exclusiva no Discord!",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
    
                    
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Abraços,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Jacqueline Oliveira",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      
                      Row(
                        children: [
                          Text("Instrutora de Java da Alura.",
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
