import 'dart:async';

import 'package:eight_coin/dashboard.dart';
import 'package:eight_coin/pallate_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override  
  State<SplashScreen> createState() => _SplasScreeenhState();
}

class _SplasScreeenhState extends State<SplashScreen>  {
 
 @override
 void initState() {
  super.initState();

  Timer(const Duration(seconds: 2), () {
    Navigator.pushReplacement(
      context,
     MaterialPageRoute
     (builder: (context) => const Dashboard(),
     ),);
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
                 const Text('Wellcome in 8-coin', 
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         ),
                ),
            ],
          ),
        ),
    );
  }
}