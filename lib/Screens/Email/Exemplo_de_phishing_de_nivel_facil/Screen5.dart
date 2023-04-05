import 'package:flutter/material.dart';
import 'package:phishing_game_project/page/perguntas.dart';
import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';
import '../../Resposta/Formulario_de_Resposta.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

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
                      // EmailTitle(label: "Aviso de suspenção de conta Amazon"),
                      SenderCard(label: "Banco do Brasil"),
                      ShippingInformation(
                          sender: "Banco do Brasil",
                          emailSender: "noreply@bb-boF2R3.com ",
                          emailRecipient: "usuarioGP@gamil.com"),
                      SizedBox(height: 14),
            
                      Image.asset('images/banco-brasil.png'),
                      SizedBox(height: 14),
            
                      Text(
                          "Esta atualização vem para correção de alguns modulos adicionais de acesso e se faz obngztúna para todos os dientes pessoa física. Para realiza-la siga as instruções disponíveis no link abaixo:",
                          style: TextStyle(color: Colors.white, fontSize: 16)),
            
                      
                      SizedBox(height: 14),
                       
                           Text(
                            'http:/hwww.bb.com.br/autoatendimento/internet/atualizar',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue[700],
                            ),
                          ),
                  
                         Text(
                            "\n\nCaso suas informações não forem confirmadas suas conta será suspensa.",
                           
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
