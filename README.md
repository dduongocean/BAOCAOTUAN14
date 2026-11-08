# BÁO CÁO CHUYÊN ĐỀ DART & FLUTTER - CHỦ ĐỀ 08
**TRƯỜNG ĐẠI HỌC BÁCH KHOA - ĐẠI HỌC ĐÀ NẴNG**  
**KHOA ĐIỆN TỬ VÀ TRÍ TUỆ NHÂN TẠO**  
**Giảng viên hướng dẫn:** TS. Nguyễn Duy Nhật Viễn  

---

## 📌 THÔNG TIN ĐỀ TÀI & NHÓM THỰC HIỆN
- **Đề tài:** Animation và Cử chỉ nâng cao trong Flutter (Chủ đề 08)
- **Quy mô:** Nhóm 02 sinh viên
- **Thành viên nhóm:**
  1. **Phan Vĩnh Sơn** (MSSV: ....................) - Nhóm trưởng
  2. **Vũ Duy Dương** (MSSV: ....................) - Thành viên

---

## 📋 BẢNG PHÂN CÔNG CÔNG VIỆC (WORK BREAKDOWN STRUCTURE - WBS)
*(Đáp ứng đầy đủ 5 tiêu chuẩn phân công theo quy định của TS. Nguyễn Duy Nhật Viễn)*

| STT | Hạng mục công việc (WBS) | Vai trò phân công | Người phụ trách | Tỷ lệ đóng góp | Sản phẩm bàn giao |
| :---: | :--- | :--- | :---: | :---: | :--- |
| **1** | **UI Design** | Thiết kế giao diện người dùng, Layout Slide | **Phan Vĩnh Sơn** | 50% | Giao diện các Card tương tác, Slide báo cáo |
| **2** | **Business Logic** | Xử lý cử chỉ (`GestureDetector`, `InkWell`) | **Phan Vĩnh Sơn** | 50% | Module bắt sự kiện Tap, Pan, Drag |
| **3** | **State Management** | Quản lý vòng đời `AnimationController`, State | **Vũ Duy Dương** | 50% | Module Explicit, TickerProvider, dispose |
| **4** | **Database / Local Data** | Quản lý trạng thái bộ nhớ tạm, dữ liệu cục bộ | **Vũ Duy Dương** | 50% | Cơ chế lưu cache trạng thái hiển thị |
| **5** | **Báo cáo & Slide** | Biên soạn Slide kiến trúc, tổng hợp tài liệu | **Phan Vĩnh Sơn & Vũ Duy Dương** | 50% - 50% | Slide PowerPoint/PDF, Kịch bản thuyết trình |

---

## 🏗️ CẤU TRÚC THƯ MỤC NGUỒN (CLEAN CODE)
Dự án được phân chia module rõ ràng, tuân thủ chuẩn Dart Style Guide:
```text
baocaotuan14/
├── lib/
│   ├── main.dart                      # Entry point, TabBar điều hướng 3 màn hình
│   └── demos/
│       ├── implicit_card_demo.dart    # [Phan Vĩnh Sơn] Demo Implicit Animation & GestureDetector
│       ├── explicit_controller_demo.dart # [Vũ Duy Dương] Demo Explicit AnimationController & dispose
│       └── non_blocking_demo.dart     # [Cả hai] Demo thực hành: Kỹ thuật Non-blocking UX
├── pubspec.yaml                       # Khai báo thư viện & cấu hình Flutter
├── NOI_DUNG_SLIDE.md                  # Kịch bản 15 slide chuẩn 20 phút báo cáo
└── README.md                          # Hướng dẫn cài đặt & bàn giao mã nguồn
```

---

## 🚀 HƯỚNG DẪN CÀI ĐẶT VÀ CHẠY ỨNG DỤNG (DEMO)

### 1. Yêu cầu môi trường
- Flutter SDK: `>= 3.0.0`
- Dart SDK: `>= 3.0.0 < 4.0.0`
- Thiết bị chạy: Máy thật Android/iOS (bật USB Debugging) hoặc Máy ảo (Android Emulator / iOS Simulator).

### 2. Các bước khởi chạy
1. Mở terminal tại thư mục gốc của dự án:
   ```bash
   cd "BAOCAOTUAN14"
   ```
2. Cài đặt các gói phụ thuộc:
   ```bash
   flutter pub get
   ```
3. Kiểm tra thiết bị kết nối:
   ```bash
   flutter devices
   ```
4. Biên dịch và chạy ứng dụng:
   ```bash
   flutter run
   ```

---

## 💡 NỘI DUNG VÀ BẢN CHẤT CÔNG NGHỆ DEMO
Ứng dụng gồm 3 Tab demo trực tiếp giải quyết trọn vẹn yêu cầu chuyên đề:
1. **Tab 1 - Implicit Animation (`implicit_card_demo.dart`):**  
   - Bắt sự kiện chạm qua `GestureDetector`.
   - `AnimatedContainer` tự động nội suy chuyển đổi kích thước ($100 \times 100 \to 200 \times 200$) và màu sắc trong 300ms với `Curves.easeInOut`.
2. **Tab 2 - Explicit Animation (`explicit_controller_demo.dart`):**  
   - Làm chủ `AnimationController` điều khiển tiến trình tuyến tính $0.0 \to 1.0$.
   - Đồng bộ nhịp phần cứng bằng `SingleTickerProviderStateMixin` (vsync).
   - Giải phóng bộ nhớ tuyệt đối bằng hàm `dispose()` chống rò rỉ RAM (Memory Leak).
3. **Tab 3 - Bài thực hành Non-blocking UX (`non_blocking_demo.dart`):**  
   - **Chống đơ khi bấm liên tục:** Cho phép đảo chiều chuyển động tức thì (`forward` $\leftrightarrow$ `reverse`).
   - **Chống click nhầm:** Kết hợp `IgnorePointer(ignoring: !_isOpen)` để vô hiệu hóa nút bấm bên trong khi thẻ đang đóng/mờ.

---

## 🌿 LỊCH SỬ PHÂN CHIA COMMIT (GIT WORKFLOW GỢI Ý)
Để đạt điểm tối đa tiêu chí mã nguồn (30%) của thầy Viễn, nhóm push code lên GitHub với lịch sử commit phân chia rõ ràng:
- `commit 1 (Sơn)`: `feat: add UI layout and GestureDetector for ImplicitCardDemo`
- `commit 2 (Dương)`: `feat: setup AnimationController, vsync and dispose in ExplicitDemo`
- `commit 3 (Dương)`: `feat: implement Non-blocking interaction with IgnorePointer`
- `commit 4 (Sơn)`: `docs: complete README and slide documentation`
