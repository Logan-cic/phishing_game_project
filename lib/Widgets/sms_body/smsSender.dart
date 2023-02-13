// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmsSender extends StatelessWidget {
  // ignore: prefer_final_fields

  SmsSender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 700, left: 0, right: 2),
      //color:const Color.fromRGBO(8, 95, 87, 0.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.add_circle_outline, color: Colors.grey,size: 28),
          Spacer(flex: 1),
          Icon(Icons.emoji_emotions_outlined, color: Colors.grey, size: 28,),
          Spacer(flex: 1),
          Icon(Icons.photo_camera_back_rounded, color: Colors.grey, size: 28),
          Spacer(flex: 3),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 55, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40.0),
              color: Colors.grey[850],
            ),
            child: Text(
                "Mensagem de Texto",
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
        ],
      ),
    );
  }  
}  

