import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../../models/Dados_do_usuario.dart';
import '../../../page/perguntas.dart';

class Screen18 extends StatelessWidget {
  const Screen18({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Userdata user;
    return Container(
      height: 460,
      child: MaterialApp(
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
                Text("Periodo de matrícula chegou!!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                const SenderCard(label: "Facomp"),
                const ShippingInformation(
                    sender: "Facomp UFPA",
                    emailSender: "infosecretaria@ufpa.br",
                    emailRecipient: "aluno@gamil.com"),
                SizedBox(height: 14),
                Column(
                  children: [
                    //Image.asset('images/amazon.jpg'),
                    Row(
                      children: [
                        Text(
                          "Prezadas(os) Alunas(os),",
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
                      "O período de matrícula do 2022.2 começou hoje, 17.02.22 (quinta-feira) e termina no dia 23.02.22 (quarta-feira), acesse a sua conta SIGAA para realizar a matrícula o quanto antes.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text("ATENÇÃO",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 8),

                    Text(
                      "Os alunos que não apresentaram o comprovante vacinal, não vão conseguir fazer matrícula. Recomendamos que acessem nossa pagina https://www.computacao.ufpa.br/ e providenciem o quantos antes.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 8),

                    Text(
                      "Aos alunos que entregaram mas estão com impedimento por favor entrar em contato com a secretaria informando secretariaDaFaculdade@ufpa.br, vamos verificar o que está acontecendo.",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 10),

                    Text(
                      "PS: Não esqueça de imprimir a solicitação de matrícula.",
                      style: TextStyle(color: Colors.red, fontSize: 18),
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
                        Text("Secretaria da faculdade de computação.",
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
      ),
    );
  }
}
