import 'package:flutter/material.dart';
import 'Header.dart';

class QRScanner extends StatefulWidget {
  @override
  _QRScannerState createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020528),
      body: Column(
        children: <Widget>[
          HeaderWidget(),
          Container(
            child: Text('Digital Member Card',style: TextStyle(
              fontSize: 20,
              color: Colors.white
            ), textAlign: TextAlign.left,),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Image.asset('images/QR.png',width: 250,height: 250,),
          ),

        ],
      ),
    );
  }
}
