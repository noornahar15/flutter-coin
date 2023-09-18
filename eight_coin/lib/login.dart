import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eight_coin/pallate_color.dart';
import 'package:eight_coin/socia;_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:Center(
          child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                Pallete.borderColor,
                Pallete.borderColor,
                Color.fromARGB(255, 1, 253, 106),
                Pallete.gradient2,
              ],),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Wellcome to you !',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                  ), ),
          
                  const Text('login',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ), ),
          
                  const SizedBox(height: 30,),
                  const SocialButton(iconPath: "etherum.png", 
                  label: "Countinu to google",
                   horizontalPadding: 100,),
          
                   const SizedBox(height: 10,),
          
                   const SocialButton(iconPath: "etherum.png", 
                  label: "Countinu to feacbook",
                   horizontalPadding: 90,),
                   const SizedBox(height: 10,),
                   const Text("or", style: TextStyle(
                    fontSize: 16,
                    color: Pallete.gradient3
                   ), ),
                   const SizedBox(height: 10,),
                   Container(
                    width: 350,
                    child:const TextField(
                      decoration: InputDecoration(
                        labelText: 'email',
                      suffixIcon: FaIcon(FontAwesomeIcons.envelope,
                      ),
                      ),
                    ),
                   ),
                   const SizedBox(height: 10,),
                   Container(
                    width: 350,
                    child:const TextField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'password',
                      suffixIcon: Icon(FontAwesomeIcons.eyeSlash,
                      size: 17,),
                      ),
                    ),
                   ),
                   SizedBox(height: 10,),
                    const Text('reset password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Pallete.gradient3,
                    ),),
                    const SizedBox(height: 20,),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Pallete.borderColor,
                              Pallete.gradient1,
                              Pallete.gradient3,
                              Pallete.gradient2,
                            ],
                          ),
                        ),
                        child: const Padding(
                          padding:EdgeInsets.all(12.0),
                          child:Text('Login',
                          style: TextStyle(
                            color: Pallete.borderColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                       ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}