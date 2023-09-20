
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
 // email = logindata.getString('email');
});
}
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: Center(child:Column(
        children: [
          Text('Wellcome in 8-coin', 
                         style: TextStyle(
                           fontWeight: FontWeight.bold,
                           fontSize: 30,
                         ),
                ),
                // ignore: unnecessary_string_interpolations
               // Text('$email')  ,   
      ],
      ),
      ),
    );
  }
}