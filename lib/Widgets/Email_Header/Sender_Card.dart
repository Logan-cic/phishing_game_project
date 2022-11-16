import 'package:flutter/material.dart';

class SenderCard extends StatelessWidget {
   final String label;

  const SenderCard({Key? key, required this.label}) : super(key: key);
  
  void setLabel(String label) {
     label = label;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 420,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      child: Card(
        child: ListTile(
          leading: Image.asset("images/user.png", scale: 42),
          title: Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
          subtitle: const Text("para mim",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              )),
          tileColor: Colors.black,
        ),
      ),
    );
  }
}