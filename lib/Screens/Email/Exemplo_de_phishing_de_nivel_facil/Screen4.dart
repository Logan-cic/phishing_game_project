import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';

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
                        builder: ((context) => Perguntas())));
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
            body:  WillPopScope(
            onWillPop: () async {
              Navigator.pop(context);
              return false; // Impede o retorno para a tela anterior
            },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                    child: Column(
                  children: [
                    // EmailTitle(
                    //     label:
                    //         "Você acaba de receber o inforemail Santander - Instabilidade no sistema"),
                    SenderCard(label: "PayPal"),
                    ShippingInformation(
                        sender: "Banco PayPal",
                        emailSender: "infoPayPal@.com",
                        emailRecipient: "usuarioGP@gmail.com"),
                      SizedBox(height: 14),
            
                    Image.asset('images/paypal.jpg'),
                    SizedBox(height: 14),
                    
                    Row(
                      children: [
                        Text(
                          "Caro membro valioso do Paypal,",
                          textAlign: TextAlign.left,
                          //textDirection: TextDirection.ltr,
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                      SizedBox(height: 14),
              
                     Text(
                              "Devido a preocupações, para a segurança e integridade do paypal conta, emitimos esta mensagem de alerta.Chegou ao nosso conhecimento que as informações da sua conta precisam ser atualizado devido a membros inativos, fraudes e relatórios falsos.si você puder reservar de 5 a 10 minutos de sua experiência on-line e renovarseus registros, você não terá problemas futuros com o serviço online. No entanto, a falha em atualizar seus registros resultará na suspensão da conta Esta notificação expira em 48. Depois de atualizar seus registros de conta, sua conta paypal o serviço não será interrompido e vamos continuar normalmente. Por favor, siga o link abaixo e faça login na sua conta e renove as informações da sua conta",style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                         SizedBox(height: 10),
                        Row(
                          children: [
                            Text("https://www.paypal.com/webscr?cmd=login-run",
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 16)),
                          ],
                        ),
                     SizedBox(height: 10),
            
                        Row(
                          children: [
                            Text("cumprimentos,\nPayPal.",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold))
                          ],
                        ),
                  ],
                )),
              ),
            )),
      ),
    );
  }
}


// "",style: TextStyle(color: Colors.white, fontSize: 16