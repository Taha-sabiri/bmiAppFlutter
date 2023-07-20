import 'package:bmiapp/view/result_screen.dart';
import 'package:flutter/material.dart';
import 'package:weight_slider/weight_slider.dart';

int weight = 70;
int height = 180;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "بی ام آی سنج",
                style: TextStyle(
                    fontFamily: 'klme',
                    fontWeight: FontWeight.w900,
                    color: Colors.blue,
                    fontSize: 40),
              ),
              Text(
                "شاخص توده بدنی خود را با وارد کردن وزن و قد خود محاسبه کنید",
                style: TextStyle(
                    fontFamily: 'klme',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                    fontSize: 13),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "وزن خود را وارد کنید",
                style: TextStyle(
                    fontFamily: 'klme',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                    fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: WeightSlider(
                  weight: weight,
                  minWeight: 40,
                  maxWeight: 120,
                  onChange: (val) => setState(() => weight = val),
                  unit: 'kg', // optional
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "قد خود را وارد کنید",
                style: TextStyle(
                    fontFamily: 'klme',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade800,
                    fontSize: 13),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: WeightSlider(
                  weight: height,
                  minWeight: 100,
                  maxWeight: 250,
                  onChange: (val2) => setState(() => height = val2),
                  unit: 'cm', // optional
                ),
              ),
              SizedBox(
                height: 50,
              ),
              SizedBox(
                  width: 320,
                  height: 45,
                  child: FilledButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Result(),
                      ));
                    },
                    child: Text("محاسبه",
                        style: TextStyle(
                            fontFamily: 'klme',
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            fontSize: 13)),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

double bmi() {
  double formul = weight / (height * height);
  double bmi = (formul * 10000);
  return bmi;
}
