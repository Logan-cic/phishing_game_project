import 'package:flutter/material.dart';
import 'package:phishing_game_project/Widgets/sms_body/smsBody.dart';
import 'package:phishing_game_project/Widgets/sms_header/smsHeader.dart';
import '../../Widgets/sms_body/smsSender.dart';
import '../../page/perguntas.dart';


class SmsScreen9 extends StatelessWidget {


  const SmsScreen9({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),  
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Stack(
                    children: [ 
              SmsHeader(contato: '(96) 98430-1085',),
              chatSms(),
              SmsBackGround(),
              SmsSender(),
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
  Widget chatSms() {
    return Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 70,bottom: 50),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return Container(
                  padding: EdgeInsets.only(left: 5,right: 5,top: 2,bottom: 10),
                  child: Align(
                    alignment: (messages[index].messageType == "receiver"?Alignment.topLeft:Alignment.topRight),
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: (messages[index].messageType  == "receiver"?Colors.grey.shade200:Colors.lightBlue[700]),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
    ChatMessege(messageContent: "Aprovado Cartao de Credito Mastercard com limite de R\$10.900 Mil ja no primeiro mes. Somente hoje acesse: https://contstart.com.br/solicitacao", messageType: "receiver"),
];
