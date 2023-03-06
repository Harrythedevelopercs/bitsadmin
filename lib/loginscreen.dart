import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/AppImages/login.jpg'),
            fit: BoxFit.cover
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [

            Container(
              padding: EdgeInsets.only(left: 15.0,top: MediaQuery.of(context).size.height*0.15),
              child:Text("Wellcome To\nBitsWits Admin",style: TextStyle(
                fontSize: 42,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Oxygen',
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(1.0, 1.0),
                    blurRadius: 3.0,
                    color: Colors.deepOrangeAccent,
                  )
                ],
              ),)
            ),
            SingleChildScrollView(
              child: Container(
                  padding: EdgeInsets.only(left: 15.0,top: MediaQuery.of(context).size.height*0.7,right: 15.0),
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

                      decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding:EdgeInsets.only(left: 5.0,right: 5.0,top: 2.0,bottom: 2.0),
                            color: Colors.deepOrange,
                            child: Row(
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.pushNamed(context, 'home');
                                }, child: Text("LOGIN",style: TextStyle(fontSize: 20,fontFamily: 'Oxygen',fontWeight: FontWeight.bold,color: Colors.white),),),
                                IconButton(onPressed: (){
                                  Navigator.pushNamed(context, 'home');
                                }, icon: Icon(
                                  Icons.adb_outlined,
                                  color: Colors.white,
                                )),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(

                            padding:EdgeInsets.only(left: 5.0,right: 5.0,top: 2.0,bottom: 2.0),
                            color: Colors.deepOrange,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(onPressed: (){
                                  Navigator.pushNamed(context, 'register');
                                }, child: Text("REGISTER",style: TextStyle(fontSize: 20,fontFamily: 'Oxygen',fontWeight: FontWeight.bold,color: Colors.white),),),
                                IconButton(onPressed: (){
                                  Navigator.pushNamed(context, 'register');
                                }, icon: Icon(
                                  Icons.arrow_circle_right,
                                  color: Colors.white,
                                )),
                              ],
                            ),
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

