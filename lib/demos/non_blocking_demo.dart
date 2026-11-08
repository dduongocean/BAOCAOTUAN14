import 'package:flutter/material.dart';

// BÀI THỰC HÀNH: Kích hoạt hiệu ứng & Không cản trở thao tác (Non-blocking)
class NonBlockingDemo extends StatefulWidget {
  const NonBlockingDemo({super.key});

  @override
  State<NonBlockingDemo> createState() => _NonBlockingDemoState();
}

class _NonBlockingDemoState extends State<NonBlockingDemo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // 1. Thao tác liên tục không bị đơ: Đảo chiều ngay lập tức
  void _toggle() {
    setState(() => _isOpen = !_isOpen);
    _isOpen ? _controller.forward() : _controller.reverse();
  }

  // Hiển thị thông báo tức thì (xóa thông báo cũ để không bị dồn hàng đợi)
  void _showMessage(String message) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          duration: const Duration(seconds: 1),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Thẻ có thể chạm để mở/đóng
          GestureDetector(
            onTap: _toggle,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.blueGrey.shade100,
              child: Column(
                children: [
                  Text(_isOpen ? '▲ Chạm để thu gọn' : '▼ Chạm để mở nội dung'),
                  
                  // 2. IgnorePointer: Khi ẩn (opacity=0) thì KHÔNG cản trở thao tác
                  IgnorePointer(
                    ignoring: !_isOpen, // Khóa bấm khi đang ẩn
                    child: FadeTransition(
                      opacity: _controller,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ElevatedButton(
                          onPressed: () => _showMessage('Đã bấm nút bên trong!'),
                          child: const Text('Nút bên trong'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          // Nút bên ngoài chứng minh ứng dụng không bị block
          OutlinedButton(
            onPressed: () => _showMessage('Đã bấm nút ngoài!'),
            child: const Text('Nút ngoài (luôn bấm được)'),
          ),
        ],
      ),
    );
  }
}
