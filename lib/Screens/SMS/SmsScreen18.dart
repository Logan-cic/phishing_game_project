import 'package:flutter/material.dart';
import 'package:phishing_game_project/Widgets/sms_body/smsBody.dart';
import '../../Widgets/sms_body/smsSender.dart';
import '../../Widgets/sms_header/smsHeader.dart';
import '../../page/perguntas.dart';



class SmsScreen18 extends StatelessWidget {


  const SmsScreen18({Key? key}): super(key: key);


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
                SmsHeader(contato: '(65) 97506-5587',),
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
    ChatMessege(messageContent: "Caixa: O Serviço de Mensagem em Sua COnta Precisa Ser Confirmado, caixa.dispositivosapp.com Caso Nao Seja Sera Descontado Taxa de R\$19,99 Mensal.", messageType: "receiver"),
];
