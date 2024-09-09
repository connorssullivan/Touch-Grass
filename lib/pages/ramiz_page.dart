import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RamizPage extends StatefulWidget {
  const RamizPage({super.key});

  @override
  State<RamizPage> createState() => _RamizPageState();
}

class _RamizPageState extends State<RamizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Text('Coming Soon!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  height: 300,

                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  decoration: BoxDecoration(
                    color: Colors.lightGreen, // Background color of the box
                    borderRadius: BorderRadius.circular(8.0), // Rounded corners
                    border: Border.all(
                      color: Colors.black, // Border color
                      width: 3.0, // Border width
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12, // Shadow color
                        blurRadius: 5.0, // Shadow blur radius
                        offset: Offset(0, 2), // Shadow offset
                      ),
                    ],
                  ),
                  child: ListTile(
                    title: Text('Item'),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
