import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lifepoints3/sign_in_check.dart';
import 'main.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'sing_up_check.dart';
import 'Verification.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  bool isHiddenPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color(0xFF020528),
        child: Center(
          child: Container(

            child: Container(
              width: 400,
              height: 650,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,

                    width: 150,
                    height: 15,
                    child: Text('PROFILE PICTURE:',
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 15, color: Colors.white, ),),

                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:10),
                    child: Image.asset('images/cameralogo.png',width: 100,height:100 ),
                  ),
                  Container(

                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(left:50),
                      child: Material(
                        color: Color(0xFF020528),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: <Widget> [
                            Container(


                                width: 150,
                                height: 15,
                                child: Text('GENDER',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(fontSize: 15, color: Colors.white, ),),

                              ),

                          ],
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left:80),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/men23.png'),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left:30.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/female.png'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left:30.0),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage('images/other.png'),
                          ),
                        ),
                        //Image.asset('images/men23.png',width:50 ,height:100),
                       // Image.asset('images/female.png',width:50,height:100),
                       // Image.asset('images/other.png',width:50,height:100),
                      ],
                    ),
                  ),
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
                              child: Text('Username:',
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Container(
                                    alignment: Alignment.centerLeft,

                                    width: 150,
                                    height: 15,
                                    child: Text('Confirm Password',
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
                                    suffixIcon: Icon(Icons.cancel_outlined, color: Colors.white,)


                                ),
                              ),


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
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Verification()));

                                    }
                                    ,

                                    child: Text('CREATE ACCOUNT',style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white
                                    ),),

                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),

                      )



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
      ),

    );
  }
}
