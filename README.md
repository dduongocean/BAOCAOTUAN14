# BÁO CÁO CHUYÊN ĐỀ DART & FLUTTER
**TRƯỜNG ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC ĐÀ NẴNG**  
**KHOA ĐIỆN TỬ VÀ TRÍ TUỆ NHÂN TẠO**  

- **Chủ đề 08:** Animation và Cử chỉ nâng cao trong Flutter
- **Giảng viên hướng dẫn:** TS. Nguyễn Duy Nhật Viễn
- **Sinh viên thực hiện:**
  1. Phan Vĩnh Sơn
  2. Vũ Duy Dương

---

## 1. Phân công nhiệm vụ nhóm

| Thành viên | Vai trò | Tệp phụ trách trong `lib/` | Nội dung đảm nhiệm |
|:---|:---|:---|:---|
| **Phan Vĩnh Sơn** | Implicit Animation & Gesture Handling | [`lib/demos/implicit_card_demo.dart`](lib/demos/implicit_card_demo.dart) | - Bắt và xử lý sự kiện cử chỉ chạm (`onTap`) qua `GestureDetector`.<br>- Hiện thực Implicit Animation tự động tính toán nội suy kích thước và màu sắc với `AnimatedContainer`.<br>- Phân tích thời điểm sử dụng Animation và tác động tới trải nghiệm người dùng (UX). |
| **Vũ Duy Dương** | Explicit Animation & Resource Lifecycle | [`lib/demos/explicit_controller_demo.dart`](lib/demos/explicit_controller_demo.dart) | - Khởi tạo và điều khiển chuyển động tuyến tính bằng `AnimationController` (`forward`, `reverse`).<br>- Đồng bộ nhịp khung hình phần cứng bằng Ticker (`SingleTickerProviderStateMixin`).<br>- Quản lý tài nguyên, bắt buộc giải phóng bộ nhớ bằng `dispose()` chống rò rỉ RAM (Memory Leak). |
| **Cả 2 Thành viên** | Non-blocking UX & System Integration | [`lib/demos/non_blocking_demo.dart`](lib/demos/non_blocking_demo.dart)<br>[`lib/main.dart`](lib/main.dart) | - Hiện thực kỹ thuật chuyển động không gây cản trở thao tác (Non-blocking UX): cho phép đảo chiều tức thì khi bấm liên tục.<br>- Kết hợp `IgnorePointer` để vô hiệu hóa tương tác khi phần tử đang ẩn/chuyển tiếp.<br>- Xây dựng giao diện Tab điều hướng 3 màn hình tại `main.dart`. |

---

## 2. Cấu trúc mã nguồn

```text
BAOCAOTUAN14/
├── lib/
│   ├── main.dart                         # [Cả hai]: Giao diện chính điều hướng 3 Tab
│   └── demos/
│       ├── implicit_card_demo.dart       # [Phan Vĩnh Sơn]: Demo Implicit Animation & GestureDetector
│       ├── explicit_controller_demo.dart # [Vũ Duy Dương]: Demo Explicit AnimationController & dispose
│       └── non_blocking_demo.dart        # [Cả hai]: Demo xử lý Non-blocking UX (IgnorePointer)
├── pubspec.yaml                          # Cấu hình dự án Flutter
├── README.md                             # Hướng dẫn chạy và thông tin dự án
└── NOI_DUNG_SLIDE.md                     # Đề cương nội dung thuyết trình
```

---

## 3. Hướng dẫn cài đặt và khởi chạy

### Yêu cầu môi trường
- Flutter SDK: phiên bản 3.0 trở lên
- Dart SDK: phiên bản 3.0 trở lên
- Thiết bị: Máy ảo (Android Emulator / iOS Simulator) hoặc thiết bị thật đã bật gỡ lỗi USB.

### Các bước thực hiện
1. Clone mã nguồn về máy:
```bash
git clone https://github.com/dduongocean/BAOCAOTUAN14.git
cd BAOCAOTUAN14
```

2. Cài đặt các thư viện phụ thuộc:
```bash
flutter pub get
```

3. Kiểm tra thiết bị kết nối:
```bash
flutter devices
```

4. Khởi chạy ứng dụng:
```bash
flutter run
```

---

## 4. Mô tả các module chức năng

- **Module 1 (`implicit_card_demo.dart`):** Minh họa cơ chế tự động nội suy của `AnimatedContainer` khi thay đổi trạng thái kích thước và màu sắc qua sự kiện chạm `onTap` của `GestureDetector`.
- **Module 2 (`explicit_controller_demo.dart`):** Điều khiển chuyển động chủ động bằng `AnimationController`, đồng bộ nhịp quét màn hình với `SingleTickerProviderStateMixin` và giải phóng tài nguyên bằng `dispose()`.
- **Module 3 (`non_blocking_demo.dart`):** Giải quyết bài toán chuyển động không cản trở thao tác bằng kỹ thuật tự đảo chiều tức thì khi bấm liên tục và sử dụng `IgnorePointer` để khóa tương tác với các thành phần đang ẩn.
