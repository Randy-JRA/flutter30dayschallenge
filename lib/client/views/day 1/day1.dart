import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Day1View extends StatefulWidget {
  const Day1View({super.key});

  @override
  State<Day1View> createState() => _Day1ViewState();
}

class _Day1ViewState extends State<Day1View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Day 1 Task',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Task 1"),
              SizedBox(
                height: 2.h,
              ),
              const Text(
                "Make a button, when pressed it should display your name in a Text widget, Input Widgets, TextField, Checkedbox, Radios, Switches, Slider, Date Picker and to explore Button widgets of Raised Button, Raised Button with Parameters, Flat Button, Icon Button",
              ),
              SizedBox(
                height: 2.h,
              ),
              const Text("Output"),
              const Text("Buttons"),
              SizedBox(
                height: 2.h,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Elevated Button'),
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                onPressed: () {},
                child: const Text('Elevated Button with parameters'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Text Button'),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send),
              ),
              const Text("Buttons"),
            ],
          ),
        ),
      ),
    );
  }
}
