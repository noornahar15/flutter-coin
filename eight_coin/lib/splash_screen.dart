import 'dart:async';
import 'package:eight_coin/login.dart';
import 'package:eight_coin/pallate_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override  
  State<SplashScreen> createState() => SplasScreeenhState();
}

class SplasScreeenhState extends State<SplashScreen>  {

  static const String keyLogin = "login";

 @override
 void initState() {
  super.initState();

    Timer( Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
     MaterialPageRoute(builder: (context) =>  const LoginScreen(),));
   });
    }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Pallete.borderColor,
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("etherum.png" , height: 150, width: 150,),
                  const SizedBox(height: 10,),
                  const Text('Wellcome in 8-coin', 
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                           color: Color.fromARGB(255, 4, 248, 37)
                         ),
                ),
            ],
          ),
        ),
    );
  }
}
