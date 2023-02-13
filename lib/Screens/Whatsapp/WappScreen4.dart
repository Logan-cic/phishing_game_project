import 'package:flutter/material.dart';
import '../../Widgets/wapp_body/wappBody.dart';
import '../../page/perguntas.dart';
import '../../widgets/wapp_body/wappBlock.dart';
import '../../widgets/wapp_header/wappHeader.dart';
import '../../widgets/wapp_body/wappSender.dart';

class WappScreen4 extends StatelessWidget {


  const WappScreen4({Key? key}): super(key: key);


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
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Stack(
                children: [           
                  WappBackGround(), 
                  WappHeader(contato: "+55 (53) 97288-2100",imageWapp: 'images/itau.png',),
                  WappBlock(),
                  chatWapp(),
                  WappSender(),     
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
    ChatMessege(messageContent: "Bom dia, sou gerente do banco itaú", messageType: "receiver"),
    ChatMessege(messageContent: "Identificamos um erro na sua conta, será necessário que você envie uma quantia de pelo menos três digitos, a transação será temporária e seu dinheiro estornado em 2 horas.", messageType: "receiver"),
    ChatMessege(messageContent: "Mande a quantia por pix na chave +55 (53) 97288-2100", messageType: "receiver"),
    ChatMessege(messageContent: "Mandei o pix", messageType: "sender"),
    ChatMessege(messageContent: "Agradeço a colaboração! Seu dinheiro será estornado em breve!", messageType: "receiver"),
];
