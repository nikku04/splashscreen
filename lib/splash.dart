import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash/Screen.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>screen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(clipBehavior: Clip.none,
          children: [
            Container(
                child : Image.asset('assets/image/weather.gif'),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height*0.5*0.8,
                  right: MediaQuery.of(context).size.width/2.8,
                  child: SizedBox(height: 50,
                child: Text('UPSTORM',style: TextStyle(fontSize: 22,fontWeight: FontWeight.w600))
              )
            )
          ],
        ),
      ),
    );
  }
}
