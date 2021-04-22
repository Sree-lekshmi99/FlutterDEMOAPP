import 'package:flutter/material.dart';
import 'main.dart';

class VerificationBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
        Container(
          width: 50,

          child: TextField(
            style: TextStyle(color: Colors.white,fontSize: 20),

            decoration: InputDecoration(
              fillColor: Color(0xFF020528),
              filled: true,



              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),



            ),
          ),

        );

  }
}
