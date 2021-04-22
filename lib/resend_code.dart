import 'package:flutter/material.dart';


class ResendCode extends StatelessWidget {
  final bool login;
  final Function press;
  const ResendCode({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            login ? "Didn't get a code ? " : "DONT ",
            style: TextStyle(color: Colors.white, fontSize: 18),

          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Tap to Resend" : "Create",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,

              ),
            ),
          )
        ],
      ),
    );
  }
}