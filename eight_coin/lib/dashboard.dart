import 'package:eight_coin/login.dart';
import 'package:eight_coin/pallate_color.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => DashboardState();
}

class DashboardState extends State<Dashboard> {
   late SharedPreferences logindata;
   late String email;

@override
void initState(){
  super.initState();
  initial();
}

void initial() async {
logindata = await SharedPreferences.getInstance();
setState(() {
  email = logindata.getString('email')!;
  });
}
  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text('8-coin'),
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Wellcome in 8-coin', 
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         ),
          ),
           Text('$email',
           style: TextStyle(fontSize: 25),), 
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
                            child:Text('LogIn',
                            style: TextStyle(
                              color: Pallete.borderColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            ),
                         ),
                      ),
                      onPressed: () async {
                        logindata.setBool('login', true);
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen(),));
                    },
                  ),  
      ],
      ),
      ),
    );
  }
}