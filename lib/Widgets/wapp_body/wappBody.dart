import 'package:flutter/material.dart';
class WappBackGround extends StatelessWidget {
  // ignore: prefer_final_fields

  WappBackGround({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
            alignment: AlignmentDirectional.topCenter,
            padding: const EdgeInsets.symmetric( horizontal: 12, vertical: 360),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/wappFundo.png"),
                fit: BoxFit.cover,
              ),
            ),   
    );
  }
}

