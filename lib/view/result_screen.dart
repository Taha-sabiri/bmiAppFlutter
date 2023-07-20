import 'package:bmiapp/view/home_page.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.blue,
                  )),
            )
          ]),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "شاخصه توده بدنی شما ",
                style: TextStyle(
                    fontFamily: 'klme',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade700,
                    fontSize: 15),
              ),
              Text(
                bmi().toStringAsFixed(2),
                style: TextStyle(
                    fontFamily: 'klme',
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontSize: 70),
              ),
              if (bmi() < 18.5)
                Text(
                  "کمبود وزن",
                  style: TextStyle(
                      fontFamily: 'klme',
                      fontWeight: FontWeight.w900,
                      color: Colors.blue,
                      fontSize: 40),
                ),
              if (bmi() > 18.5 && bmi() < 24.9)
                Text(
                  "وزن معمولی",
                  style: TextStyle(
                      fontFamily: 'klme',
                      fontWeight: FontWeight.w900,
                      color: Colors.green,
                      fontSize: 40),
                ),
              if (bmi() > 25 && bmi() < 29.9)
                Text(
                  "وزن بالا",
                  style: TextStyle(
                      fontFamily: 'klme',
                      fontWeight: FontWeight.w900,
                      color: Colors.yellow.shade500,
                      fontSize: 40),
                ),
              if (bmi() > 30 && bmi() < 34.9)
                Text(
                  "اضافه وزن",
                  style: TextStyle(
                      fontFamily: 'klme',
                      fontWeight: FontWeight.w900,
                      color: Colors.orange,
                      fontSize: 40),
                ),
              if (bmi() > 35)
                Text(
                  "جاقی",
                  style: TextStyle(
                      fontFamily: 'klme',
                      fontWeight: FontWeight.w900,
                      color: Colors.red,
                      fontSize: 40),
                ),
            ]),
      ),
    );
  }
}
