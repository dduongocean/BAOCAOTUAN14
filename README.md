# BÁO CÁO CHUYÊN ĐỀ DART & FLUTTER
**TRƯỜNG ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC ĐÀ NẴNG**  
**KHOA ĐIỆN TỬ VÀ TRÍ TUỆ NHÂN TẠO**  

- **Chủ đề 08:** Animation và Cử chỉ nâng cao trong Flutter
- **Giảng viên hướng dẫn:** TS. Nguyễn Duy Nhật Viễn
- **Sinh viên thực hiện:**
  1. Phan Vĩnh Sơn - Nhóm trưởng
  2. Vũ Duy Dương - Thành viên

---

## 1. Bảng phân công công việc (WBS)

| STT | Nhiệm vụ (WBS) | Vai trò | Người phụ trách | Sản phẩm bàn giao |
| :---: | :--- | :--- | :---: | :--- |
| 1 | UI Design | Thiết kế giao diện Card & Layout Slide | Phan Vĩnh Sơn | Giao diện các demo, Slide báo cáo |
| 2 | Business Logic | Xử lý cử chỉ người dùng (GestureDetector) | Phan Vĩnh Sơn | lib/demos/implicit_card_demo.dart |
| 3 | State Management | Quản lý Controller, Ticker & Vòng đời dispose | Vũ Duy Dương | lib/demos/explicit_controller_demo.dart |
| 4 | Database / Local Data | Quản lý trạng thái bộ nhớ đệm cục bộ | Vũ Duy Dương | State quản lý chuyển đổi giao diện |
| 5 | Báo cáo & Slide | Biên soạn slide kiến trúc, tài liệu | Cả nhóm | Slide thuyết trình, README.md |

---

## 2. Cấu trúc mã nguồn

```text
BAOCAOTUAN14/
├── lib/
│   ├── main.dart                      # Giao diện chính điều hướng 3 Tab
│   └── demos/
│       ├── implicit_card_demo.dart    # Demo Implicit Animation & GestureDetector
│       ├── explicit_controller_demo.dart # Demo Explicit AnimationController & dispose
│       └── non_blocking_demo.dart     # Demo xử lý Non-blocking UX (IgnorePointer)
├── pubspec.yaml                       # Cấu hình dự án Flutter
├── README.md                          # Hướng dẫn chạy và thông tin dự án
└── NOI_DUNG_SLIDE.md                  # Đề cương nội dung thuyết trình
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
