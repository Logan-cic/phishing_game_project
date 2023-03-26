import 'package:flutter/material.dart';
import '../../Widgets/sms_body/smsBody.dart';
import '../../Widgets/sms_body/smsSender.dart';
import '../../Widgets/sms_header/smsHeader.dart';
import '../../page/perguntas.dart';

class SmsScreen7 extends StatelessWidget {
  const SmsScreen7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: ((context) => Perguntas())));
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Stack(
                    children: [
                      SmsHeader(
                        contato: '(73) 98334-8342',
                      ),
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

class ChatMessege {
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
        padding: EdgeInsets.only(top: 70, bottom: 50),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 5, right: 5, top: 2, bottom: 10),
            child: Align(
              alignment: (messages[index].messageType == "receiver"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (messages[index].messageType == "receiver"
                      ? Colors.grey.shade200
                      : Colors.lightBlue[700]),
                ),
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                child: Text(
                  messages[index].messageContent,
                  style: TextStyle(fontSize: 15),
                ),
              ),
            ),
          );
        },
      ),
    ],
  );
}

List<ChatMessege> messages = [
  ChatMessege(
      messageContent: "Mensagen Urgente Acesse Ja https://cutt.ly/cjEBqG",
      messageType: "receiver"),
];
