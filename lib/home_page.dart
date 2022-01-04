import 'package:flutter/material.dart';
import 'package:flutter_one/first_screen.dart';
import 'package:flutter_one/test_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/fingerprint.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: FancyButton(
                  title: "GO",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FirstScreen()),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FancyButton(
        title: 'START',
        onPressed: _incrementCounter,
      ),
    );
  }
}
