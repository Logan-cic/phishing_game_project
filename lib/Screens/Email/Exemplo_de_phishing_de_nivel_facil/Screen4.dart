import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

/// Screen4 is a StatelessWidget that contains a Padding widget that contains a Column widget that
/// contains a EmailTitle widget, a SenderCard widget, a ShippingInformation widget, and a Container
/// widget that contains a Center widget that contains an EmailBody widget
class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

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
                // EmailTitle(
                //     label:
                //         "Você acaba de receber o inforemail Santander - Instabilidade no sistema"),
                SenderCard(label: "Banco rrr"),
                ShippingInformation(
                    sender: "Banco auria",
                    emailSender: "info@.com",
                    emailRecipient: "cadymaureria@amail.com"),
                // Image.asset('images/transferir.png'),
                Container(
                  height: 460,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                        "Pode ser que você tenha notado que na semana passada nosso site www.groupsantander.com estava funcionando instável.\nDevido a este problema, recentemente atualizamos nosso banco de dados, melhorando nossos sistemas de segurança,\nNo entanto, para concluir esta atualização e otimizar a capacidade de funcionamento de suas contas bancárias, você deve insira os detalhes da sua conta para sincronizar com nossa nova base de clientes e verifique nosso novo sistema de proteção de dados.\n\n Use este link www.sr.com para verificar seus dados."),
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}

