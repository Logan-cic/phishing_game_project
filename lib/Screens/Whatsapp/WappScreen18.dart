import 'package:flutter/material.dart';
import '../../Widgets/wapp_body/wappBody.dart';
import '../../Widgets/wapp_body/wappSender.dart';
import '../../Widgets/wapp_header/wappHeader.dart';
import '../../page/perguntas.dart';


class WappScreen18 extends StatelessWidget {


  const WappScreen18({Key? key}): super(key: key);


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
                        WappHeader(contato: "Itaú",imageWapp: 'images/itau.png',),
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
              padding: EdgeInsets.only(top: 70,bottom: 60),
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
  ChatMessege(messageContent: "Lembrete de Negociação\n Na próxima quinta-feira (02/03) vencerá a parcela 05de12 do seu acordo de pagamento!", messageType: "receiver"),
  ChatMessege(messageContent: "Efetue o pagamento em dia para garantir seu prêmio de pontualidade! Qualquer dúvida estamos a disposição.", messageType: "receiver"),
];
