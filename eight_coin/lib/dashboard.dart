import 'package:eight_coin/pallate_color.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
      ],
      ),
      ),
    );
  }
}