import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';
import 'router/scaffold.dart';

void main() {
  LeanCloud.initialize(
      'RsD7OEwK4mdOW0yps4rBr72X-gzGzoHsz', 'pnUAD77WW647Q2UpBoFYWafa',
      server: 'https://rsd7oewk.lc-cn-n1-npxfk.com',
      queryCache: LCQueryCache());
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
