# Datapack Ma Tu - Tài Liệu Dự Án

Tài liệu này tổng hợp toàn bộ các chức năng, hệ thống và cơ chế cốt lõi của datapack **Ma Tu**. Mục đích là để lưu trữ thông tin, giúp việc quay trở lại và phát triển dự án trong tương lai được dễ dàng hơn.

## 1. Tổng Quan

Datapack **Ma Tu** xây dựng một hệ thống tu luyện hắc ám, cho phép người chơi bước vào con đường của một Ma Tu. Người chơi sẽ tích lũy **Ma Khí**, đột phá các cảnh giới, chế tạo và sử dụng các loại đan dược đặc biệt để gia tăng sức mạnh.

**Luồng chơi chính:**

1.  **Nhập Ma**: Chế tạo và ăn **Ma Huyết Đan** để bắt đầu.
2.  **Tích Lũy Ma Khí**: Tăng điểm `MaTu_MaKhi` thông qua các hoạt động trong game.
3.  **Đột Phá Cảnh Giới**: Khi đạt đến các mốc Ma Khí, người chơi phải dùng đan dược đặc biệt để phá vỡ giới hạn.
4.  **Gia Tăng Sức Mạnh**: Mỗi lần đột phá thành công sẽ mang lại các chỉ số vĩnh viễn (máu, sát thương, giáp).

---

## 2. Hệ Thống Cốt Lõi

### 2.1. Ma Khí (Scoreboard: `MaTu_MaKhi`)

-   **Mục đích**: Là scoreboard trung tâm, theo dõi tiến trình tu luyện của người chơi.
-   **Các mốc quan trọng (Luyện Thể Tầng 2)**:
    -   `99`: Giới hạn đầu tiên. Cần dùng **Tà Huyết Phá Chướng Đan**.
    -   `199`: Giới hạn thứ hai. Cần dùng **Cửu U Hoán Cốt Đan**.
    -   `300`: Mức Ma Khí tối đa của tầng này.

### 2.2. Phản Phệ (Scoreboard: `MaTu_PhanPhe`)

-   **Mục đích**: Mô phỏng sự nguy hiểm của việc tu luyện ma công.
-   **Hoạt động**: Tự động tăng mỗi tick khi `MaTu_MaKhi >= 100`.
-   **File điều khiển**: `matu:luyenthe/2_dichcan/tick.mcfunction`

### 2.3. Đột Phá Cảnh Giới

-   **Mục đích**: Giới hạn cấp độ Ma Khí của người chơi cho đến khi họ sử dụng vật phẩm đột phá.
-   **Hoạt động**: Các lệnh trong `matu:luyenthe/2_dichcan/tick.mcfunction` sẽ liên tục đặt lại điểm `MaTu_MaKhi` về mốc giới hạn (`99` hoặc `199`) nếu người chơi chưa có tag tương ứng (`tahuyetdan_eat`, `hoancotdan_eat`).

### 2.4. Chế Tạo Tùy Chỉnh (Custom Crafting)

-   **Mục đích**: Dùng cho các vật phẩm cao cấp không thể chế tạo bằng bàn chế tạo thông thường.
-   **Cơ chế**:
    1.  Người chơi đạt điều kiện (ví dụ: `MaTu_MaKhi=99`) sẽ nhận một advancement, cấp cho họ một `tag` (ví dụ: `recipe_tahuyetdan`).
    2.  Khi người chơi có `tag` này đứng gần các vật phẩm nguyên liệu bị vứt ra đất, một hàm sẽ được kích hoạt.
    3.  Hàm này sẽ xóa các vật phẩm nguyên liệu và cho người chơi vật phẩm thành phẩm.
-   **File điều khiển**: `matu:luyenthe/2_dichcan/dotphaluyenthetang2/tick.mcfunction`

### 2.5. Reset Tiến Trình

-   **Lệnh**: `/function matu:system/reset/reset_all/active`
-   **Chức năng**: Xóa toàn bộ tags, scoreboards, advancements và attributes liên quan đến datapack, đưa người chơi về trạng thái ban đầu.

---

## 3. Con Đường Tu Luyện: Luyện Thể Tầng 2 - Dịch Cân

Giai đoạn này được kích hoạt khi người chơi có tag `luyenthe2`.

### 3.1. Chỉ Số & Hiệu Ứng

-   **File**: `matu:luyenthe/2_dichcan/tick.mcfunction`
-   **Attribute Modifiers**:
    -   `+80` Máu tối đa (`matu:hp_tang2`)
    -   `+20` Sát thương tay (`matu:dmg_tang2`)
    -   `+15` Giáp (`matu:armor_tang2`)

### 3.2. Các Mốc Đột Phá

-   **Mốc 99 Ma Khí**:
    -   **Điều kiện**: `MaTu_MaKhi = 99`.
    -   **Hành động**: Mở khóa công thức chế tạo **Tà Huyết Phá Chướng Đan**.
    -   **Sử dụng**: Ăn đan dược để nhận tag `tahuyetdan_eat`, cho phép Ma Khí vượt mốc 99.

-   **Mốc 199 Ma Khí**:
    -   **Điều kiện**: `MaTu_MaKhi = 199`.
    -   **Hành động**: Mở khóa công thức chế tạo **Cửu U Hoán Cốt Đan**.
    -   **Sử dụng**: Ăn đan dược để nhận tag `hoancotdan_eat`, cho phép Ma Khí vượt mốc 199.

---

## 4. Vật Phẩm Chính (Đan Dược)

### 4.1. Ma Huyết Đan

-   **Công dụng**: Vật phẩm khởi đầu, ăn vào để "Nhập Ma".
-   **Cách chế tạo**: Chế tạo thường (shapeless) từ `Thịt Thối`, `Xương`, `Mắt Nhện Lên Men`.
-   **File**: `matu:recipe/dan_duoc/mahuyetdan.json`

### 4.2. Tà Huyết Phá Chướng Đan

-   **Công dụng**: Đột phá giới hạn 99 Ma Khí.
-   **Cách chế tạo**: Chế tạo tùy chỉnh (vứt vật phẩm ra đất).
-   **File**: `matu:item/base/dan_duoc/tahuyetdan.mcfunction`

### 4.3. Cửu U Hoán Cốt Đan

-   **Công dụng**: Đột phá giới hạn 199 Ma Khí.
-   **Cách chế tạo**: Chế tạo tùy chỉnh (vứt vật phẩm ra đất).
-   **File**: `matu:item/base/dan_duoc/hoancotdan.mcfunction`

---

## 5. Ghi Chú Kỹ Thuật & Các Thành Phần

-   **Scoreboards**:
    -   `MaTu_MaKhi`: Theo dõi điểm Ma Khí.
    -   `MaTu_PhanPhe`: Theo dõi điểm Phản Phệ.
    -   `MaTu_RightClick`: Phát hiện hành động chuột phải.

-   **Tags chính**:
    -   `MaTu`: Đánh dấu người chơi đã nhập ma.
    -   `luyenthe2`: Đánh dấu người chơi ở Luyện Thể Tầng 2.
    -   `recipe_tahuyetdan`, `recipe_hoancotdan`: Đánh dấu người chơi đã "biết" công thức.
    -   `tahuyetdan_eat`, `hoancotdan_eat`: Đánh dấu người chơi đã dùng đan dược đột phá.

-   **Attributes**:
    -   `matu:hp_tang2`, `matu:dmg_tang2`, `matu:armor_tang2`: Các modifier tăng chỉ số.

---

## 6. Các Vấn Đề Cần Lưu Ý Khi Khởi Động Lại Dự Án

Dự án hiện tại có một vài lỗi logic nghiêm trọng cần được sửa chữa để hoạt động đúng như mong muốn.

### 6.1. Lỗi Logic trong việc Mở Khóa và Chế Tạo

**File**: `matu:luyenthe/2_dichcan/dotphaluyenthetang2/tick.mcfunction`

Các dòng lệnh để mở khóa công thức và kiểm tra chế tạo đang bị **tráo đổi cho nhau**.

-   **Mở khóa công thức**:
    -   Tại mốc `MaTu_MaKhi=99`, code đang mở khóa `matu:recipe/tahuyetdan` (đúng), nhưng comment lại ghi là "hoán cốt đan".
    -   Tại mốc `MaTu_MaKhi=199`, code đang mở khóa `matu:recipe/hoancotdan` (đúng), nhưng comment lại ghi là "tà huyết đan".

-   **Kiểm tra chế tạo**:
    -   Code đang kiểm tra `tag=recipe_hoancotdan` để chạy hàm chế tạo của `tahuyetdan`.
    -   Code đang kiểm tra `tag=recipe_tahuyetdan` để chạy hàm chế tạo của `hoancotdan`.

**=> Cần phải sửa lại các dòng `execute` này để chúng gọi đúng hàm tương ứng với đúng tag.**

### 6.2. Lỗi Logic trong việc Giới Hạn Ma Khí

**File**: `matu:luyenthe/2_dichcan/tick.mcfunction`

Các dòng lệnh giới hạn Ma Khí cũng đang bị **tráo đổi tag điều kiện**.

-   `scoreboard players set @s[scores={MaTu_MaKhi=99..},tag=!hoancotdan_eat] MaTu_MaKhi 99`
    -   Lệnh này đang kiểm tra tag `!hoancotdan_eat` để giới hạn Ma Khí ở mốc 99. **Đáng lẽ phải là `!tahuyetdan_eat`**.
-   `scoreboard players set @s[scores={MaTu_MaKhi=199..},tag=!tahuyetdan_eat] MaTu_MaKhi 199`
    -   Lệnh này đang kiểm tra tag `!tahuyetdan_eat` để giới hạn Ma Khí ở mốc 199. **Đáng lẽ phải là `!hoancotdan_eat`**.

**=> Cần phải đổi lại các tag điều kiện trong hai lệnh này cho chính xác.**