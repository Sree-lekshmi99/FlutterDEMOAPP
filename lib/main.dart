import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lifepoints3/ProfileScreen.dart';
import 'create_an_account.dart';

import 'sing_up_check.dart';
import 'package:lifepoints3/ProfilePage.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'SplashScreen2.dart';
void main()

{
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LIFE POINTS',
      home: SplashScreen2()
  ));
}



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHiddenPassword = true;

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

              children: <Widget> [



                Image.asset('images/logo.png',width: 150,height: 150),
                Container(
                    width: 340,

                    child:Material(


                      color: Color(0xFF020528),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [

                          Container(
                            alignment: Alignment.centerLeft,

                            width: 150,
                            height: 15,
                            child: Text('Email:',
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 15, color: Colors.white, ),),

                          ),
                          Container(

                            width: 340,

                            child: TextField(
                              style: TextStyle(color: Colors.white,fontSize: 20),

                              decoration: InputDecoration(
                                  fillColor: Color(0xFF020528),
                                  filled: true,



                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  suffixIcon: Icon(Icons.check, color: Colors.white,)


                              ),
                            ),


                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 15.0),
                                child: Container(
                                  alignment: Alignment.centerLeft,

                                  width: 150,
                                  height: 15,
                                  child: Text('Password:',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(fontSize: 15, color: Colors.white, ),),

                                ),
                              ),
                            ],
                          ),
                          Container(

                            width: 340,

                            child: TextField(
                              obscureText: isHiddenPassword,
                              style: TextStyle(color: Colors.white),

                              decoration: InputDecoration(
                                  fillColor: Color(0xFF020528),
                                  filled: true,


                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                  suffixIcon: Icon(Icons.check, color: Colors.white,)


                              ),
                            ),


                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 200,
                                height: 40,
                                alignment: AlignmentDirectional.centerStart,
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    primary: Colors.blueAccent,
                                  ),
                                  onPressed: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>ForgotPassword()));
                                  },
                                  child: Text('Forgot Password?',style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white

                                  ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30),
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
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));

                                  }
                                  ,

                                  child: Text('LOG IN',style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white
                                  ),),

                                ),
                              ),
                            ),
                          ),
                          AlreadyHaveAnAccountCheck(
                            press: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CreateAccount()),
                              );
                            },

                          )

                        ],
                      ),

                    )



                ),
              ],
            ),
          ),
        ),
      ),


    );
  }
}



