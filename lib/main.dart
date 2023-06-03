import 'package:dicoding_flutter_beginner_assignment/screens/second_screen.dart';
import 'package:flutter/material.dart';

import 'widgets/stateful_widget_example_by_aldi.dart';
import 'widgets/stateless_widget_example_by_aldi.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: const MyHomePage(title: 'Flutter Basic by Aldi'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "1. Buat Layout Sederhana",
                style: TextStyle(fontSize: 32),
              ),
              Text(
                'Aldi Irsan Majid',
                style: TextStyle(fontSize: 32),
              ),
              Image.asset(
                "assets/images/my_photo.jpg",
                width: 150,
              ),
              SizedBox(
                height: 64,
              ),
              Divider(
                thickness: 5,
              ),
              Text(
                "2. Contoh Widget Stateless dan Stateful",
                style: TextStyle(fontSize: 32),
              ),
              StatelessWidgetExampleByAldi(),
              StatefulWidgetExampleByAldi(),
              SizedBox(
                height: 64,
              ),
              Divider(
                thickness: 5,
              ),
              Text(
                "3. Contoh Navigation Sederhana",
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 64,
              ),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (cont) {
                        return SecondScreen();
                      }));
                    });
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text("Go to Second Screen")),
              SizedBox(
                height: 64,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
