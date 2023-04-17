// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmsHeader extends StatelessWidget {
  // ignore: prefer_final_fields
  String contato;
 
  SmsHeader({Key? key, required this.contato}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(15),
            color: Colors.grey[900],
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [ 
                Icon(Icons.arrow_back, color: Colors.white),   
                Spacer(flex: 1),             
                Column (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[  
                    Text(
                      contato,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 8),
                Icon(Icons.search, color: Colors.white),
                Spacer(flex: 1),
                Icon(Icons.more_vert, color: Colors.white,),
              ],
            ),
    );
  }
}


