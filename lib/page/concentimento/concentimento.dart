import 'package:flutter/material.dart';

class WhatsAppChatScreen extends StatelessWidget {
  final String contactName;
  final String contactImage;

  const WhatsAppChatScreen({
    Key? key,
    required this.contactName,
    required this.contactImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("images/$contactImage"),
            ),
            SizedBox(width: 10),
            Text(contactName),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                final message = messages[index];
                return Container(
                  margin: EdgeInsets.symmetric(vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 16.0),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(message.avatarUrl),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(message.name),
                          Container(
                            margin: EdgeInsets.only(top: 5.0),
                            padding: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                              color: message.isMe ? Colors.blue[50] : Colors.grey[200],
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomLeft: message.isMe ? Radius.circular(15.0) : Radius.circular(0.0),
                                bottomRight: message.isMe ? Radius.circular(0.0) : Radius.circular(15.0),
                              ),
                            ),
                            child: Text(message.text),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              itemCount: messages.length,
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: 'Digite aqui',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WhatsAppMessage {
  final String avatarUrl;
  final String name;
  final String text;
  final bool isMe;

  WhatsAppMessage({required this.avatarUrl, required this.name, required this.text, required this.isMe});
}

final List<WhatsAppMessage> messages = [
  WhatsAppMessage(
    avatarUrl: "images/mulher.jpg",
    name: 'Contato 1',
    text: 'Olá, tudo bem?',
    isMe: false,
  ),
  WhatsAppMessage(
    avatarUrl: 'https://via.placeholder.com/150',
    name: 'Eu',
    text: 'Sim, e com você?',
    isMe: true,
  ),
  WhatsAppMessage(
    avatarUrl: 'https://via.placeholder.com/150',
    name: 'Contato 1',
    text: 'Estou bem também. O que tem feito?',
    isMe: false,
  ),
  WhatsAppMessage(
    avatarUrl: 'https://via.placeholder.com/150',
    name: 'Eu',
    text: 'Nada de mais, e você?',
    isMe: true
  )
];

// import 'package:flutter/material.dart';

// class WhatsAppChatScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WhatsApp Clone'),
//       ),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: ListView.builder(
//               itemBuilder: (BuildContext context, int index) {
//                 final message = messages[index];
//                 return Container(
//                   margin: EdgeInsets.symmetric(vertical: 10.0),
//                   child: Row(
//                     mainAxisAlignment: message.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.only(right: 16.0),
//                         child: CircleAvatar(
//                           backgroundImage: NetworkImage(message.avatarUrl),
//                         ),
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Text(message.name),
//                           Container(
//                             margin: EdgeInsets.only(top: 5.0),
//                             padding: EdgeInsets.all(10.0),
//                             decoration: BoxDecoration(
//                               color: message.isMe ? Colors.blue[50] : Colors.grey[200],
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(15.0),
//                                 topRight: Radius.circular(15.0),
//                                 bottomLeft: message.isMe ? Radius.circular(15.0) : Radius.circular(0.0),
//                                 bottomRight: message.isMe ? Radius.circular(0.0) : Radius.circular(15.0),
//                               ),
//                             ),
//                             child: Text(message.text),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 );
//               },
//               itemCount: messages.length,
//             ),
//           ),
//           Divider(),
//           Container(
//             padding: EdgeInsets.symmetric(horizontal: 8.0),
//             child: Row(
//               children: <Widget>[
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration.collapsed(
//                       hintText: 'Digite aqui',
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.send),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class WhatsAppMessage {
//   final String avatarUrl;
//   final String name;
//   final String text;
//   final bool isMe;

//   WhatsAppMessage({required this.avatarUrl, required this.name, required this.text, required this.isMe});
// }

// final List<WhatsAppMessage> messages = [
//   WhatsAppMessage(
//     avatarUrl: 'https://via.placeholder.com/150',
//     name: 'Contato 1',
//     text: 'Olá, tudo bem?',
//     isMe: false,
//   ),
//   WhatsAppMessage(
//     avatarUrl: 'https://via.placeholder.com/150',
//     name: 'Eu',
//     text: 'Sim, e com você?',
//     isMe: true,
//   ),
//   WhatsAppMessage(
//     avatarUrl: 'https://via.placeholder.com/150',
//     name: 'Contato 1',
//     text: 'Estou bem também. O que tem feito?',
//     isMe: false,
//   ),
//   WhatsAppMessage(
//     avatarUrl: 'https://via.placeholder.com/150',
//     name: 'Eu',
//     text: 'Nada de mais, e você?',
//     isMe: true,
//   ),
//   WhatsAppMessage(
//     avatarUrl: 'https://via.placeholder.com/150',
//     name: 'Contato 1',
//     text: 'Também nada de mais, só trabalhando e estudando. E você?',
//     isMe: false,
//   ),
// ];