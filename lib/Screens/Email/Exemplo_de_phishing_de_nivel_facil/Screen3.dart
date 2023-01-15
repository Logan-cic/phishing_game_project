import 'package:flutter/material.dart';

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
                        builder: ((context) => FormularioDeResposta())));
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
            body: SingleChildScrollView(
                child: Column(
              children: [
                // const EmailTitle(
                //     label:
                //         "Você acaba de receber o inforemail Santander - Instabilidade no sistema"),
                const SenderCard(label: "Banco Santander"),
                const ShippingInformation(
                    sender: "Banco Santander",
                    emailSender: "info@asantander.com",
                    emailRecipient: "cadymaureria@amail.com"),
                Image.asset('images/transferir.png'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: const Center(
                    child: Text(
                        "Pode ser que você tenha notado que na semana passada nosso site www.groupsantander.com estava funcionando instável.\nDevido a este problema, recentemente atualizamos nosso banco de dados, melhorando nossos sistemas de segurança,\nNo entanto, para concluir esta atualização e otimizar a capacidade de funcionamento de suas contas bancárias, você deve insira os detalhes da sua conta para sincronizar com nossa nova base de clientes e verifique nosso novo sistema de proteção de dados.\n\n Use este link www.santander.com para verificar seus dados."),
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}

/*

Center(
                  child: ElevatedButton(
                    child: const Text("Next"),
                    onPressed: () {
                      print("you clicked the next button");

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Screen4();
                      }));
                    },
                  ),
                ),
                Center(
                  child: ElevatedButton(
                    child: const Text("Back"),
                    onPressed: () {
                      print("you clicked the Back button");

                      Navigator.pop(context);
                    },
                  ),
                ),




EmailTitle(label: "Você acaba de receber o inforemail Santander - Instabilidade no sistema"),
              SenderCard(label: "Banco Santander"),
              ShippingInformation(sender: "Banco Santander", emailSender: "info@asantander.com", emailRecipient: "cadymaureria@amail.com"),
              Image.asset('images/transferir.png'),
                Container(
                height: 460,
                color: Colors.black,
                child: Center(child: 
                    EmailBody(contents: "Pode ser que você tenha notado que na semana passada nosso site www.groupsantander.com estava funcionando instável.\nDevido a este problema, recentemente atualizamos nosso banco de dados, melhorando nossos sistemas de segurança,\nNo entanto, para concluir esta atualização e otimizar a capacidade de funcionamento de suas contas bancárias, você deve insira os detalhes da sua conta para sincronizar com nossa nova base de clientes e verifique nosso novo sistema de proteção de dados.\n\n Use este link www.santander.com para verificar seus dados."),
               ),
              ),
            ],
*/ 