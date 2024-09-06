import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:touchgrass/pages/counter_page.dart';
import 'package:touchgrass/pages/skeleton.dart';
import 'package:touchgrass/providers/counter_provider.dart';
import 'package:touchgrass/providers/text_list_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(// MultiProvider is used to provide multiple providers
        providers: [
          // Provider for CounterProvider: Responsible for managing the counter state
          ChangeNotifierProvider(create: (_) => CounterProvider()),
          ChangeNotifierProvider(create: (_) => TextBoxProvider()),
        ],
      child: MaterialApp(
        title: 'Touch Grass',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
        ),
        home: const Skeleton(),
      ),
    );
  }
}

