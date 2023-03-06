import 'dart:ffi';

import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/AppImages/register.jpg'),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(left: 15.0,top: MediaQuery.of(context).size.height*0.1),
                child:Text("Register To\nBitsWits Admin",style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Oxygen',
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1.0, 1.0),
                      blurRadius: 3.0,
                      color: Colors.white54,
                    )
                  ],
                ),)
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(left: 15.0,top: MediaQuery.of(context).size.height*0.6,right: 15.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            hintText: "Enter Email",
                            fillColor: Colors.white,
                            filled: true
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration:  InputDecoration(
                          hintText: "Enter Password",
                          fillColor: Colors.white,
                          filled: true,
                        ),
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration:  InputDecoration(
                          hintText: "Enter Full Name",
                          fillColor: Colors.white,
                          filled: true,
                        ),

                      ),
                    ],
                  )
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 8.0,top: MediaQuery.of(context).size.height*0.85),
              child: Row(
                children: [
                  TextButton(onPressed: (){}, child:
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          color:Colors.deepOrange,
                          padding: EdgeInsets.only(left: 12.0,right: 12.0),
                          child: Row(
                            children: [
                              Text("REGISTER",style:
                              TextStyle(fontSize: 20,fontFamily: 'Oxygen',fontWeight: FontWeight.bold,color: Colors.white),),
                              IconButton(onPressed: (){}, icon: Icon( Icons.arrow_circle_right,color: Colors.white,size: 30, )),
                            ],
                          )
                        ),

                        Container(
                            margin: EdgeInsets.only(left: 12),
                            color:Colors.deepOrangeAccent,
                            padding: EdgeInsets.only(left: 12.0,right: 12.0),
                            child: Row(
                              children: [
                                Text("GO BACK",style:
                                TextStyle(fontSize: 20,fontFamily: 'Oxygen',fontWeight: FontWeight.bold,color: Colors.white),),
                                IconButton(onPressed: (){
                                  Navigator.pushNamed(context, 'login');
                                }, icon: Icon( Icons.arrow_circle_left,color: Colors.white,size: 30, )),
                              ],
                            )
                        ),
                      ],
                    ),

                  )
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

