// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WappSender extends StatelessWidget {
  // ignore: prefer_final_fields

  WappSender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 660, left: 7, right: 7),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.symmetric( horizontal: 105, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: const Color.fromRGBO(250, 250, 250, 1.0),
            ),
            child: Text(
                "Mensagem",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,),
          ),
          Spacer(flex: 3),
          Container(
            padding: const EdgeInsets.all(13),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: const Color.fromRGBO(8, 95, 80, 1.0),
            ),
            child: Icon(Icons.mic, color: Colors.white, size: 25),
          ),
        ],
      ),
    );
  }
}