# Food Pet Shop – petfood-be

Đồ án ISP392 – Group 3. Spring Boot 4.1.1 + JSP (Java 21, Maven, đóng gói war).

## Yêu cầu

- JDK 21
- IDE: IntelliJ IDEA hoặc NetBeans 20 trở lên (cần hỗ trợ Java 21)
- Không cần cài Maven riêng: project có sẵn Maven Wrapper (`mvnw` / `mvnw.cmd`)

## Cấu trúc thư mục – ai sửa ở đâu

```
src/main/
├── java/com/isp392/petfood/      ← BE (controller, service, repository, entity...)
├── resources/
│   ├── application.properties   ← BE
│   └── static/                  ← FE: css/, js/, images/   (gọi bằng /css/..., /js/...)
└── webapp/WEB-INF/views/        ← FE: toàn bộ file .jsp
```

Controller trả về `"product/list"` → mở file `webapp/WEB-INF/views/product/list.jsp`.

## Chạy project

### NetBeans

1. *File → Open Project* → chọn thư mục `petfood-be` (thư mục chứa `pom.xml`).
2. Chuột phải project → *Properties → Actions* → chọn **Run project** → ô *Execute Goals* gõ:
   ```
   spring-boot:run
   ```
3. Bấm *Run* (F6). **Không** chọn server Tomcat/GlassFish nếu NetBeans hỏi – app tự chạy Tomcat nhúng.

### IntelliJ IDEA

1. Mở thư mục `petfood-be`.
2. *Edit Configurations* → `PetfoodBeApplication` → *Working directory* = `$MODULE_WORKING_DIR$`.
3. Bấm ▶.

### Dòng lệnh

```bash
./mvnw spring-boot:run        # macOS / Linux
mvnw.cmd spring-boot:run      # Windows
```

## Kiểm tra

Đợi console hiện `Tomcat started on port 8080`, rồi mở:

- http://localhost:8080/test → trang mẫu, hiện tiêu đề và danh sách 3 món.

Xem `TestController.java` + `views/test.jsp` để biết cách BE đưa dữ liệu vào `Model` và JSP hiển thị bằng `${...}` và `<c:forEach>`.

## Lưu ý khi viết JSP

- Đầu mỗi file JSP:
  ```jsp
  <%@ page contentType="text/html;charset=UTF-8" language="java" %>
  <%@ taglib prefix="c" uri="jakarta.tags.core" %>
  ```
  Dùng `jakarta.tags.core` (không dùng `http://java.sun.com/jsp/jstl/core` của bản cũ).
- Đặt tên file cẩn thận: không có dấu cách thừa, đúng chữ hoa/thường (Linux phân biệt hoa/thường).
- Sửa file JSP không cần chạy lại app – chỉ cần tải lại trang.
- Tên attribute trong `Model` và `name` của input trong form phải khớp với BE – xem bảng thống nhất giữa BE và FE.
