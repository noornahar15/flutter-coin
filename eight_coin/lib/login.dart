import 'package:eight_coin/dashboard.dart';
import 'package:eight_coin/socia_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:eight_coin/pallate_color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final  emailController = TextEditingController();
  final  passwordController = TextEditingController();


  late SharedPreferences logindata;
  late bool newuser;

  @override
 void initState() {
  super.initState();

   checkAlreadyLoger();

 }

 @override 
void dispose(){

  emailController.dispose();
  passwordController.dispose();
  super.dispose();

}

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

                   const SizedBox(height: 10,),

                  const SocialButton(iconPath: "etherum.png", 
                  label: "Countinu to feacbook",
                   horizontalPadding: 90,),

                   const Text("or", style: TextStyle(
                    fontSize: 16,
                    color: Pallete.gradient3
                   ),
                    ),

                   const SizedBox(height: 10,),
                   // ignore: sized_box_for_whitespace
                   Container(
                    width: 350,
                    child: TextField(
                      controller: emailController,
                      decoration:  InputDecoration(
                        labelText: 'email',
                      suffixIcon: FaIcon(FontAwesomeIcons.envelope,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),),                      ),
                    ),
                   ),
                   const SizedBox(height: 10,),
                   // ignore: sized_box_for_whitespace
                   Container(
                    width: 350,
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration:  InputDecoration(
                      suffixIcon: Icon(FontAwesomeIcons.eyeSlash,
                      size: 17,),
                      labelText: 'password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),),
                      ),
                    ),
                   ),
                   const SizedBox(height: 10,),
                     Text('reset password',
                    style: TextStyle(
                      fontSize: 16,
                      color: Pallete.gradient3,
                    ),),
                    const SizedBox(height: 20,),

                    MaterialButton(
                       child: 
                      Container( 
                          alignment: Alignment.center,
                          width: 350,
                          decoration: BoxDecoration(
                            border: Border.all(color: Pallete.gradient1),
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
                      onPressed: () async {

                      String email = emailController.text;
                      String password = passwordController.text;

                      if (email != "" && password != ""){
                        print("sucessful");
                        logindata.setBool('login', false);

                        logindata.setString('email', email);
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Dashboard(),));
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void checkAlreadyLoger() async {

  logindata = await SharedPreferences.getInstance();
  newuser = (logindata.getBool('login') ?? true);

  print(newuser);
  if (newuser == false) {
    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context) => const Dashboard()));
  }
}
}
