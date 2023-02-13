import 'package:flutter/material.dart';
import '../../Widgets/sms_body/smsSender.dart';
import '../../page/perguntas.dart';
import '../../widgets/sms_body/smsBody.dart';
import '../../widgets/sms_header/smsHeader.dart';


class SmsScreen3 extends StatelessWidget {


  const SmsScreen3({Key? key}): super(key: key);


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
        body: Container( 
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Stack(
                children: [
                  SmsHeader(contato: 'SKY Brasil',),
                  chatSms(),
                  SmsBackGround(),
                  SmsSender(),
                ],
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
    ChatMessege(messageContent: "Assine SKY HDTV: Telecine + Series + Futebol + Desenhos APENAS 89,95 C/ 2 Pontos e Inst. Gratis! Solicite Agora no Link do WhatsApp:. wa.me/556198153931", messageType: "receiver"),
];
