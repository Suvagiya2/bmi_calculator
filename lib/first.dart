import 'package:flutter/material.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {

  double ans=0;
  
  String uw="underweight";
  String no="normal";
  String ow="overweight";

  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();

  String text="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "BMI calculator",
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      )),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 100,
              width: 350,
              padding: EdgeInsets.all(9),
              child: TextField(
                controller: t1,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'height'),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 350,
              padding: EdgeInsets.all(9),
              child: TextField(
                controller: t2,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),

                    hintText: 'Weight'),
              ),
            ),
          ),
          SizedBox(height: 40),
          ElevatedButton(child: Text("calculator",style: TextStyle(fontSize: 20),),
              onPressed: () {
                String a = t1.text;
                String b = t2.text;

                double n1 = double.parse(a);
                double n2 = double.parse(b);

                print(a);
                print(b);

                double m=3.2808;
                double ca=n1/m;
                double ca2=ca*ca;
                double answer=n2/ca2;

                print("$ca");
                print("$ans");

                ans=answer;

                if(ans<=18.5){
                  text=uw;
                }
                else if(ans>=18.5 && ans<=25){
                  text=no;
                }
                else if(ans>=25 && ans<=40){
                  text=ow;
                }

                setState((){});

              },
              ),
          Center(
            child: Container(
              height: 50,
              width: 150,
              color: Colors.lightGreenAccent,
              child: Text("$ans",
                  style: TextStyle(fontSize: 25,)),
              margin: EdgeInsets.all(10),
            ),
          ),
          Center(
            child: Container(
              height: 50,
              width: 150,
              color: Colors.blue,
              child: Text("$text",
              style: TextStyle(fontSize: 25,),),
            ),
          ),
        ],
      ),
    );
  }
}
