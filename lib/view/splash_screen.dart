import 'package:bmiapp/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => HomePage()))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "بی ام آی سنج",
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'klme',
                fontSize: 40,
                fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 5,
          ),
          const SpinKitThreeBounce(
            color: Colors.white,
            size: 20.0,
          )
        ]),
      ),
    );
  }
}
