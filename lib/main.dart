import 'package:flutter/material.dart';
import 'demos/implicit_card_demo.dart';
import 'demos/explicit_controller_demo.dart';
import 'demos/non_blocking_demo.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainDemo(),
  ));
}

class MainDemo extends StatelessWidget {
  const MainDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Demo Chủ đề 8'),
          bottom: const TabBar(
            tabs: [
              Tab(text: '1. Implicit (Phan Vĩnh Sơn)'),
              Tab(text: '2. Explicit (Vũ Duy Dương)'),
              Tab(text: '3. Thực hành (Cả hai)'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ImplicitCardDemo(),
            ExplicitControllerDemo(),
            NonBlockingDemo(),
          ],
        ),
      ),
    );
  }
}
