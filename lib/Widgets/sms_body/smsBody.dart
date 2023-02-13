import 'package:flutter/material.dart';

class SmsBackGround extends StatelessWidget {
  // ignore: prefer_final_fields

  SmsBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
            padding: const EdgeInsets.all(340),
            child: Container( 
              padding: const EdgeInsets.all(10.2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
    );
  }
}