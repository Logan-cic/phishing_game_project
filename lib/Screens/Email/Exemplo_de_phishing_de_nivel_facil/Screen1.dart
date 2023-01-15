import 'package:flutter/material.dart';

import '../../../Widgets/Email_Header/Sender_Card.dart';
import '../../../Widgets/Email_Header/shipping_information.dart';

class Screen1 extends StatelessWidget {
  late TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      child: MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text(
                "Game Phishing",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            body: SingleChildScrollView(
                child: Column(
              children: [
                //EmailTitle(label: "Cashback todo dia na 99Pay!"),
                SenderCard(label: "voude99"),
                ShippingInformation(
                    sender: "voude99",
                    emailSender: "<voude99@99app.com>",
                    emailRecipient: "logancardoso4@gamil.com"),
                SizedBox(height: 14),
                Image.asset('images/99.jpg'),
                Container(
                  height: 110,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                        "Vem gastar menos e ganhar mais! \n Acesse o link: https://99app.com/99pay/dia-de-cashback/"),
                  ),
                ),
              ],
            ))),
      ),
    );
  }
}
