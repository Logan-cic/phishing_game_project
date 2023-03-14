import 'package:flutter/material.dart';

class WappHeader extends StatelessWidget {
  
  String contato;
  String imageWapp;
 
  WappHeader({Key? key, required this.contato, required this.imageWapp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            padding: const EdgeInsets.all(8),
            color:const Color.fromRGBO(8, 95, 87, 1.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [ 
                Icon(Icons.arrow_back, color: Colors.white),
                CircleAvatar(
                backgroundImage: AssetImage(imageWapp),
                radius: 20,
                ),
                Spacer(flex: 1),
                Column (
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[  
                    Text(
                      contato,
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Online",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        height: 1.5,
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Spacer(flex: 4),
                Icon(Icons.videocam, color: Colors.white,),
                Spacer(flex: 3),
                Icon(Icons.call, color: Colors.white),
                Spacer(flex: 2),
                Icon(Icons.more_vert, color: Colors.white,),
              ],
            ),
    );
  }
}


