import 'main.dart';
import 'package:flutter/widgets.dart';
import 'create_an_account.dart';
import 'package:flutter/material.dart';
import 'VerficationTextField.dart';
import 'resend_code.dart';
import 'sign_in_check.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF020528),
        child: Center(
          child: Container(
            width: 400,
            height: 570,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.asset('images/logo.png',width: 150,height: 150),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: IconButton(
                        icon: Icon(Icons.arrow_back,color: Colors.white,),
                        iconSize: 40,

                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,

                      width: 200,
                      height: 100,
                      child: Text('Verification',
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 35, color: Colors.white, ),),
                    )
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerificationBox(),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: VerificationBox(),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: VerificationBox(),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 30.0),
                          child: VerificationBox(),
                        )



                      ],
                    ),
                    ResendCode(
                      press: (){

                      },


                    )

                  ],


                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 120),
                      child: Center(
                        child: Container(
                          width: 330,
                          height: 60,

                          child: ElevatedButton(



                            style: ElevatedButton.styleFrom(

                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),



                                primary: Colors.blueAccent,
                                onPrimary: Colors.white),

                            onPressed: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>VendorTransportArea()));

                            }
                            ,

                            child: Text('VERIFY',style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white
                            ),),

                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SignInCheck(
                  press: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },








                )





              ],
            ),
          ),
        ),
      ),
    );
  }
}
