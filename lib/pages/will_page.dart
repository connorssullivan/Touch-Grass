import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WillPage extends StatefulWidget {
  const WillPage({super.key});

  @override
  State<WillPage> createState() => _WillPageState();
}

class _WillPageState extends State<WillPage> {
  final List<String> items = List<String>.generate(101, (i) => "${i+1}. ");

  final lastNames = [
    "Smith", "Johnson", "Brown", "Taylor", "Anderson", "Thomas", "Jackson", "White", "Harris", "Martin",
    "Garcia", "Martinez", "Robinson", "Clark", "Lewis", "Lee", "Walker", "Hall", "Allen", "Young",
    "King", "Wright", "Scott", "Green", "Baker", "Adams", "Nelson", "Carter", "Mitchell", "Perez"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('${items[index]}  ${lastNames[index]}'),
          );
        },
      ),
    );
  }
}
