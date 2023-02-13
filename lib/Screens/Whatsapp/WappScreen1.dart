import 'package:flutter/material.dart';
import '../../Widgets/wapp_body/wappBlock.dart';
import '../../Widgets/wapp_body/wappBody.dart';
import '../../Widgets/wapp_body/wappSender.dart';
import '../../Widgets/wapp_header/wappHeader.dart';
import '../../page/perguntas.dart';

class WappScreen1 extends StatelessWidget {
  const WappScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: ((context) => Perguntas())));
        },
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Stack(
          children: [
            WappBackGround(),
            WappHeader(
              contato: "+55 91 98800-8892",
              imageWapp: 'images/homem.jpg',
            ),
            WappBlock(),
            chatWapp(),
            WappSender(),
          ],
        ),
      ),
    ));
  }
}

class ChatMessege {
  String messageContent;
  String messageType;
  ChatMessege({required this.messageContent, required this.messageType});
}

Widget chatWapp() {
  return Stack(
    alignment: Alignment.topRight,
    children: <Widget>[
      ListView.builder(
        itemCount: messages.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(top: 70, bottom: 60),
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 10),
            child: Align(
              alignment: (messages[index].messageType == "receiver"
                  ? Alignment.topLeft
                  : Alignment.topRight),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: (messages[index].messageType == "receiver"
                      ? Colors.grey.shade200
                      : Colors.green[100]),
                ),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
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
  ChatMessege(messageContent: "Bom dia, filho", messageType: "receiver"),
  ChatMessege(
      messageContent: "Preciso de um dinheiro urgente!",
      messageType: "receiver"),
  ChatMessege(
      messageContent: "Está tudo bem? Vou te ligar", messageType: "sender"),
  ChatMessege(
      messageContent: "Estou bem, mas não posso atender agora",
      messageType: "receiver"),
  ChatMessege(
      messageContent: "Preciso de 400 reais, manda no pix pra mim",
      messageType: "receiver"),
  ChatMessege(messageContent: "Mande seu pix", messageType: "sender"),
  ChatMessege(messageContent: "+55 91 98800-8892", messageType: "receiver"),
];
