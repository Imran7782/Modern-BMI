import 'package:flutter/material.dart';
import 'package:mbi/components/ButtonCalculator.dart';
import '../components/contanierCOntent.dart';
class ResultScreen extends StatelessWidget {
 final String bmiResult;
  
 final String resultText;
  
 final String interpretation;

  
const ResultScreen(
  this.bmiResult,
  this.resultText,
  this.interpretation, {super.key}
);
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xff0a0e21),
        scaffoldBackgroundColor: const Color(0xff0a0e21)
      ),
      home: Scaffold(  
      appBar: AppBar(
      title: const Center(child: Text("BMI Calculator")),
      
         ),
         body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
          
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              child: const Text("YOUR RESULT  ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)))

              ,Expanded(
                flex: 5,
                child: ReusableCard(
                  color: const Color(0xff1d1f33),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(resultText.toUpperCase(),style: const TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold),),
                      Text(bmiResult,style: const TextStyle(fontSize: 100,fontWeight: FontWeight.bold),),
                      Text(interpretation,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold),)
                    ],
                  ) ,),
              )

,
                ButtonCalculate((){
                  Navigator.pop(context);
                }, "RE-Calculate"),
          ]

        
       
        
         ),
      ),
    );
  }
}