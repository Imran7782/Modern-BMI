import 'package:flutter/material.dart';
import 'package:mbi/components/ButtonCalculator.dart';
import 'package:mbi/components/Icondata.dart';
import 'package:mbi/main/Calculatorbrain.dart';
import 'package:mbi/screens/RScreen.dart';
import 'package:mbi/components/contanierCOntent.dart';

 // ignore: non_constant_identifier_names
 int Height = 180;
 // ignore: non_constant_identifier_names
 int WEIGHT = 60;
int age = 50;

enum Gender { male, female }

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.male
                        ? const Color.fromARGB(255, 41, 51, 118)
                        : const Color(0xff1d1f33),
                    child: const IconContent("Male", Icons.male),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: selectedGender == Gender.female
                        ? const Color.fromARGB(255, 41, 51, 118)
                        : const Color(0xff1d1f33),
                    child: const IconContent("Female", Icons.female),
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: const Color(0xff1d1f33),
              child: Column(children: [
                const Text(
                  "HIEGHT",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        Height.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      const Text(
                        "cm",
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      )
                    ]),
                Slider(
                  value: Height.toDouble(),
                  min: 120,
                  max: 220,
                  activeColor: const Color(0xffeb1555),
                  inactiveColor: Colors.grey,
                  onChanged: (value) {
                    setState(() {
                      Height = value.round();
                    });
                  },
                )
              ]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    color: const Color(0xff1d1f33),
                    child: Column(
                      children: [
                        const Text(
                          "WEIGHT",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              WEIGHT.toString(),
                              style: const TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "Kg",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color.fromARGB(255, 58, 62, 91),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {
                                setState(() {
                                  WEIGHT++;
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: const Color.fromARGB(255, 58, 62, 91),
                              onPressed: () {
                                setState(() {
                                  WEIGHT--;
                                });
                              },
                              child: const Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: const Color(0xff1d1f33),
                    child: Column(
                      children: [
                        const Text(
                          "AGE",
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              age.toString(),
                              style: const TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "y",
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FloatingActionButton(
                              backgroundColor: const Color.fromARGB(255, 58, 62, 91),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: const Icon(Icons.add),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            FloatingActionButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              backgroundColor: const Color.fromARGB(255, 58, 62, 91),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: const Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          ButtonCalculate(
           (){
            Calculatorbrain cal=Calculatorbrain(Height.toDouble(),WEIGHT.toDouble());
           Navigator.push(context, MaterialPageRoute(
          builder: (context) =>ResultScreen(cal.BmiResult().toString(),cal.getResult(),cal.getInter())));
      }
              ,"CALCULATE BMI" ),
        ],
      ),
    );
  }
}

