import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var num1 = 0, num2 = 0, result = 0;

  late TextEditingController t1 = TextEditingController(text: "0");
  late TextEditingController t2 = TextEditingController(text: "0");

  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void substract() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void multiply() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void divide() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output: $result",
              style: const TextStyle(
                color: Colors.purple,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            CupertinoTextField(
              keyboardType: TextInputType.number,
              placeholder: "Enter Number 1",
              controller: t1,
              // decoration: InputDecoration(hintText: "Enter Number 1"),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
            ),
            CupertinoTextField(
              keyboardType: TextInputType.number,
              placeholder: "Enter Number 2",
              controller: t2,
              // decoration: InputDecoration(hintText: "Enter Number 2"),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton.filled(
                  child: const Text("+"),
                  onPressed: () => {doAddition()},
                ),
                CupertinoButton.filled(
                  child: const Text("-"),
                  onPressed: () => {substract()},
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton.filled(
                  child: const Text("*"),
                  onPressed: () => {multiply()},
                ),
                CupertinoButton.filled(
                  child: const Text("/"),
                  onPressed: () => {divide()},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
