import 'package:flutter/material.dart';
import 'package:mensage_screen/widgets/sms_body/smsSender.dart';
import '../../widgets/sms_body/smsBody.dart';
import '../../widgets/sms_header/smsHeader.dart';


class SmsScreen5 extends StatelessWidget {


  const SmsScreen5({Key? key}): super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container( 
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Stack(
            children: [
              SmsHeader(contato: '(67) 99837-7630',),
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
    ChatMessege(messageContent: "O ENAE e o maior pre-Enem do Brasil. Vc se prepara e ainda pode garantir bolsas de ate 100% nas melhores faculdades! Inscricao gratuita: https://bit.ly/2I1Bjn", messageType: "receiver"),
];
