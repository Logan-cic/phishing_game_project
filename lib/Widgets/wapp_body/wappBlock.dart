// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class WappBlock extends StatelessWidget {
  // ignore: prefer_final_fields

  WappBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container( 
            alignment: AlignmentDirectional.topCenter,
            padding: const EdgeInsets.symmetric( horizontal: 12, vertical: 15),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(10, 10, 10, 0.4),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Spacer(flex: 1),

                Text(
                  "Bloquear",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white70,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Spacer(flex: 1),

                Container(
                  alignment: AlignmentDirectional.bottomEnd,
                  padding: const EdgeInsets.symmetric( horizontal: 1, vertical: 40),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(250, 250, 250, 0.5),
                  )
                ),
                Spacer(flex: 1),

                Text(
                  "Adicionar",
                  style: TextStyle(
                    fontSize: 17.0,
                    color: Colors.white70,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                Spacer(flex: 1),
              ],
            ),
    );
  }
}
