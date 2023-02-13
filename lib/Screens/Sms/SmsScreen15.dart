import 'package:flutter/material.dart';
import 'package:mensage_screen/widgets/sms_body/smsSender.dart';
import '../../widgets/sms_body/smsBody.dart';
import '../../widgets/sms_header/smsHeader.dart';


class SmsScreen12 extends StatelessWidget {


  const SmsScreen12({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Stack(
            children: [
              SmsHeader(contato: '28568',),
              chatSms(),
              SmsBackGround(),
              SmsSender(),
            ],
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
    ChatMessege(messageContent: "DROGASIL: Novidade para o seu cabelo chegou! Produtos de Salao com desconto de ate 60% de desconto! Aproveite ja: https://bit.ly/3JtsD61 ", messageType: "receiver"),
];
