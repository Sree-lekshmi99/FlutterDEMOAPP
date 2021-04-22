import 'package:flutter/material.dart';


class SignInCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const SignInCheck({
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
            login ? "Have an Account ? " : "DONT ",
            style: TextStyle(color: Colors.white, fontSize: 18),

          ),
          GestureDetector(
            onTap: press,
            child: Text(
              login ? "Log In" : "Create",
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