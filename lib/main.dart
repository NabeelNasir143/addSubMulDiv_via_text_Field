import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Testing')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(21.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1Controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2Controller,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var sum = no1 + no2;
                            result = 'The sum of $no1 and $no2 is $sum';
                            setState(() {});
                          },
                          child: Text('Add')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no1Controller.text.toString());
                            var sub = no1 - no2;
                            result = 'the Sub of $no1 and $no2 is $sub';
                            setState(() {});
                          },
                          child: Text('Sub')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no1Controller.text.toString());
                            var mul = no1 * no2;
                            result = 'the Mul of $no1 and $no2 is $mul';
                            setState(() {});
                          },
                          child: Text('Mul')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no1Controller.text.toString());
                            var div = no1 - no2;
                            result = 'the Div of $no1 and $no2 is $div';
                            setState(() {});
                          },
                          child: Text('div')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(result),
                ),
              ],
            ),
          ),
        ));
  }
}
