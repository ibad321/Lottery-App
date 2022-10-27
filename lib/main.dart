import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random random = Random();
  int a = 4;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lotery App"),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Center(
                child: Text("Lottery Winning Number Is 5"),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: a == 5
                    ? Column(
                        children: [
                          const Icon(Icons.error,
                              size: 30, color: Colors.green),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              "Congragulation You Won You Lucky Number is  $a",
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          const Icon(
                            Icons.error,
                            size: 30,
                            color: Colors.red,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Better Luck For Next Time Your Number is $a \n TRy Again",
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            a = random.nextInt(10);
            print(a.toString());
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
