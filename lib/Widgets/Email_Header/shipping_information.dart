import 'package:flutter/material.dart';

class ShippingInformation extends StatelessWidget {
  final String sender;
  final String emailSender;
  final String emailRecipient;

  const ShippingInformation(
      {Key? key,
      required this.sender,
      required this.emailSender,
      required this.emailRecipient})
      : super(key: key);
      

  void setSender(String sender) {
    sender = sender;
  }

  void setEmail(String email) {
    email = email;
  }

  void setRecipient(String recipient) {
    recipient = recipient;
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          height: 150,
          width: 390,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: Color.fromARGB(255, 41, 40, 40),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 14),
                  child: Row(
                    children:  [
                      Text("De",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                      SizedBox(width: 10),
                      Text(
                        sender,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 10),
                      Text(emailSender,
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 14),
                  child: Row(
                    children: [
                      Text("Para",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                      SizedBox(width: 10),
                      Text(
                        emailRecipient,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18, bottom: 14),
                  child: Row(
                    children: const [
                      Text("Data",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                      SizedBox(width: 10),
                      Text(
                        "8 de set. de 2022 09:58",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
