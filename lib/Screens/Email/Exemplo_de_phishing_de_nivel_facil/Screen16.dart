import 'package:flutter/material.dart';
import 'package:phishing_game_project/model/Dados_do_usuario.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen16 extends StatelessWidget {
  const Screen16({Key? key}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Últimas horas do Saldão do Cliente!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                const SenderCard(label: "Amazon Inc."),
                const ShippingInformation(
                    sender: "Amazon Inc.",
                    emailSender: "infosecurity@amazon.com.br",
                    emailRecipient: "logancardoso4@gamil.com"),
                SizedBox(height: 14),
                Container(
                  height: 602,
                  width: 390,
                  color: Colors.black,
                  child: Column(
                    children: [
                      //Image.asset('images/amazon.jpg'),
                      Row(
                        children: [
                          Text(
                            "Dear Customer, ",
                            textAlign: TextAlign.left,
                            //textDirection: TextDirection.ltr,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "  We detected suspicious activity in your account and multiple password used for access your account.",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      SizedBox(height: 8),
                      Text("We need you to confirm your account!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 183, 0),
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          Text("1. Click Here ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                          Text(
                            "to confirm your account.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text("2. Enter your informations. ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("3. Finally your account will be confirmed. ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      SizedBox(height: 6),
                      Row(
                        children: [
                          Text("Note",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            ": If you dont't confirm it withing 48 hours, we will",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "close or suspend your account.",
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Sincerely,",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16)),
                        ],
                      ),
                      Row(
                        children: [
                          Text("Amazon.",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
