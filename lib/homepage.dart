import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() =>  HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 =  TextEditingController(text: "0");
  final TextEditingController t2 =  TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Calculator",
      
        ),
        backgroundColor: Color.fromARGB(255, 62, 193, 229),
      ),
      body: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Output : $sum",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Number 1"),
                controller: t1,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "Enter Number 2"),
                controller: t2,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed: doAddition,
                    child: Text("+"),
                    color: Colors.greenAccent,
                  ),
                  MaterialButton(
                    onPressed: doSub,
                    child: Text("-"),
                    color: Colors.greenAccent,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MaterialButton(
                    onPressed: doMul,
                    child: Text("*"),
                    color: Colors.greenAccent,
                  ),
                  MaterialButton(
                    onPressed: doDiv,
                    child: Text("/"),
                    color: Colors.greenAccent,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
