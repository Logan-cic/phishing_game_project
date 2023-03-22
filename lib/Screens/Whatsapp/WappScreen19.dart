import 'package:flutter/material.dart';
import '../../Widgets/wapp_body/wappBlock.dart';
import '../../Widgets/wapp_body/wappBody.dart';
import '../../Widgets/wapp_body/wappSender.dart';
import '../../Widgets/wapp_header/wappHeader.dart';
import '../../page/perguntas.dart';


class WappScreen19 extends StatelessWidget {


  const WappScreen19({Key? key}): super(key: key);

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
                      WappBackGround(),
                      WappBlock(),
                      WappHeader(contato: "+55 84 98806-1780",imageWapp: 'images/nubankIcone.jpg',),
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
  ChatMessege(messageContent: "A Nubank está fazendo aniversário e quem ganha o presente é você!", messageType: "receiver"),
  ChatMessege(messageContent: "São 2.000 convites para um noivo cartão cm até R\$12.000,00 delimite, e o melhor, sem consulta ao SPC/Serasa. Restam poucos convites!", messageType: "receiver"),
  ChatMessege(messageContent: "Para resgatar o seu acesse: https://www.convitenu.online/resgate", messageType: "receiver"),

];
