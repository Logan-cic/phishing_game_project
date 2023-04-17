import 'package:flutter/material.dart';
import '../../Widgets/wapp_body/wappBlock.dart';
import '../../Widgets/wapp_body/wappBody.dart';
import '../../Widgets/wapp_body/wappSender.dart';
import '../../Widgets/wapp_header/wappHeader.dart';
import '../../page/perguntas.dart';


class WappScreen7 extends StatelessWidget {


  const WappScreen7({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
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
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),  
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Stack(
                      children: [           
                        WappBackGround(),
                        WappBlock(), 
                        WappHeader(contato: "+55 79 97994-7832",imageWapp: 'images/homem.jpg',),
                        chatWapp(),
                        WappSender(),     
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

class ChatMessege{
  String messageContent;
  String messageType;
  ChatMessege({required this.messageContent, required this.messageType});
}
  Widget chatWapp () {
    return Stack(
          alignment: Alignment.topRight,
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 120,bottom: 60),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.only(left: 10,right: 10,top: 2,bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.green[100]),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                    child: Text(messages[index].messageContent, style: TextStyle(fontSize: 15),),
                    ),
                  ),  
                );
              },
            ),
          ],  
        );
  }

List<ChatMessege> messages = [
    ChatMessege(messageContent: "Olá", messageType: "receiver"), 
    ChatMessege(messageContent: "Sou o Jorge representante do Ministério público da Saúde contra a COVID-19", messageType: "receiver"),
    ChatMessege(messageContent: "Venho em meio da nossa plataforma online realizar o agendamento da sua vacinação.\nVamos lá, digite OK para começar.", messageType: "receiver"),
    ChatMessege(messageContent: "OK", messageType: "sender"),
    ChatMessege(messageContent: "Por favor, informe o número de protocolo de 6 dígitos enviado via SMS.", messageType: "receiver"),
];
