import 'package:flutter/material.dart';

// PHẦN VŨ DUY DƯƠNG: Explicit Animation (AnimationController + Vòng đời dispose)
class ExplicitControllerDemo extends StatefulWidget {
  const ExplicitControllerDemo({super.key});

  @override
  State<ExplicitControllerDemo> createState() => _ExplicitControllerDemoState();
}

class _ExplicitControllerDemoState extends State<ExplicitControllerDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // 1. Khởi tạo Controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
  }

  @override
  void dispose() {
    // 2. Bắt buộc giải phóng tài nguyên
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 3. Widget nhận AnimationController trực tiếp
          ScaleTransition(
            scale: _controller,
            child: Container(
              width: 120,
              height: 120,
              color: Colors.orange,
              alignment: Alignment.center,
              child: const Text('Explicit', style: TextStyle(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () => _controller.forward(),
                child: const Text('Hiện (Forward)'),
              ),
              const SizedBox(width: 10),
              ElevatedButton(
                onPressed: () => _controller.reverse(),
                child: const Text('Ẩn (Reverse)'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
