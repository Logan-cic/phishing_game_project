import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

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
              title: const Text(
                "Game Phishing",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            // ignore: prefer_const_constructors
            body: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                              children: [
                  Text("OPORTUNIDADE!",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  const SenderCard(label: "Johnson Adiyah"),
                  const ShippingInformation(
                      sender: "Mr. Johnson Adiyah",
                      emailSender: "johnson.adiyahQyahoo.com",
                      emailRecipient: "usuarioGP@amail.com"),
                  Row(
                    children: [
                      Text(
                        "Olá, sou diretor de Projetos Departamento de Minerais e Energia \n",
                        textAlign: TextAlign.left,
                        //textDirection: TextDirection.ltr,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                 
                    
                    // ignore: prefer_const_constructors
                    Text(
                          "Escrevo para pedir sua indulgência em refazer o perfil dos fundos até a quantia de Oito Milhões e Quinhentos Mil Estados Unidos Dólares americanos (8,5 milhões de doláres) que | vai querer se manter em segurança no exterior sob sua supervisão. Em outras palavras, |gostaria que você recebesse os referidos fundos em nosso nome. Os Fundos foram derivados ao longo do tempo de um projeto concedido a uma firma estrangeira pelo meu departamento, e atualmente o custo real do contrato foi pago ao projeto originalexecutores, deixando o saldo na medida do referido valor que, em princípio, obtivemos aprovação para remeter Em outro continente. Por favor, perdoe o uso de um meio de informação! assim por entrar em contato com você para fazer um pedido de tão grande importância. Atualmente, | trabalho como Diretor de Projetos no Departamento de Minerais e Energia aqui em Gana. Este esforço tem um mínimo! fator de risco de sua parte, desde que você o trate com a máxima discrição. você está avisado entrar em contato comigo por e-mail para maiores esclarecimentos.",style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                   SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Eu meio que espero ouvir de você.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                   SizedBox(height: 10),

                      Row(
                        children: [
                          Text("Com os melhores cumprimentos,\nSr. Johnson Adiyah",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                  
                ],
                            ),
                ))),
      ),
    );
  }
}
