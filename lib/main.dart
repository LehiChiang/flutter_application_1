import 'package:flutter/material.dart';
import 'router/scaffold.dart';

void main() {
  runApp(const Closet());
}

class Closet extends StatelessWidget {
  const Closet({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TikTok',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const ClosetScaffold(title: '图片浏览'),
    );
  }
}
