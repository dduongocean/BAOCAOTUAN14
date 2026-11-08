import 'package:flutter/material.dart';

// PHẦN PHAN VĨNH SƠN: Cử chỉ (GestureDetector) + Implicit Animation (AnimatedContainer)
class ImplicitCardDemo extends StatefulWidget {
  const ImplicitCardDemo({super.key});

  @override
  State<ImplicitCardDemo> createState() => _ImplicitCardDemoState();
}

class _ImplicitCardDemoState extends State<ImplicitCardDemo> {
  bool _isBig = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        // 1. Nhận diện cử chỉ chạm
        onTap: () {
          setState(() {
            _isBig = !_isBig; // Đổi trạng thái
          });
        },
        // 2. Flutter tự động tính toán hiệu ứng chuyển đổi
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          width: _isBig ? 200 : 100,
          height: _isBig ? 200 : 100,
          color: _isBig ? Colors.green : Colors.blue,
          alignment: Alignment.center,
          child: Text(
            _isBig ? '200x200\n(Chạm để thu nhỏ)' : '100x100\n(Chạm để phóng to)',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
