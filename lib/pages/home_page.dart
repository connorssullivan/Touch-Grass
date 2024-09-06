import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';
import '../providers/text_list_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Move the addTextBox logic here so it runs once dependencies are resolved and outside of the build process
    final counterValue = context.watch<CounterProvider>().counter;
    final textBoxProvider = context.read<TextBoxProvider>();
    textBoxProvider.addTextBox(counterValue);
  }

  @override
  Widget build(BuildContext context) {
    final counterValue = context.watch<CounterProvider>().counter;
    final textBoxProvider = context.read<TextBoxProvider>();

    return Scaffold(
      body: counterValue > 0
          ? ListView.builder(
        itemCount: counterValue,
        itemBuilder: (context, index) {
          // Ensure we don't access a non-existent index in the textBoxValues list
          if (index >= textBoxProvider.controllers.length) {
            return const SizedBox.shrink(); // Prevent invalid index access
          }
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textBoxProvider.controllers[index], // Use controller from the provider
              decoration: InputDecoration(
                labelText: 'To Do ${index + 1}',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Update value in the TextBoxProvider
                textBoxProvider.updateTextBox(index, value);
              },
            ),
          );
        },
      )
          : Center(
        child: Text(
          'No text boxes. Increment the counter to add text boxes!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

