@echo off

REM In ra giá trị của các tham số
echo Parameter 1: %1

REM Gán giá trị cho biến file_name
set file_name=%1

REM Sử dụng câu lệnh if-elseif-else
set api=%file_name%Api
set dto=%file_name%Dto
set entity=%file_name%Entity
set repository=%file_name%Repository
set service=%file_name%Service
set web=%file_name%Web

REM Đường dẫn hiện tại
set current_path=%CD%

REM Đường dẫn đầy đủ cho tệp mới
set file_path_api=%current_path%\%file_name%Api.java
set file_path_dto=%current_path%\%file_name%Dto.java
set file_path_entity=%current_path%\%file_name%Entity.java
set file_path_repository=%current_path%\%file_name%Repository.java
set file_path_service=%current_path%\%file_name%Service.java
set file_path_web=%current_path%\%file_name%Web.java

REM Ghi nội dung vào tệp Api.java
echo import java.util.List; > "%file_path_api%"
echo import org.springframework.web.bind.annotation.RestController; >> "%file_path_api%"
echo import org.springframework.web.bind.annotation.RequestMapping; >> "%file_path_api%"
echo. >> "%file_path_api%"
echo ^@RestController >> "%file_path_api%"
echo ^@RequestMapping(value = "/api/%file_name%", produces = "application/json") >> "%file_path_api%"
echo public class %api% { >> "%file_path_api%"
echo } >> "%file_path_api%"

REM Ghi nội dung vào tệp Dto.java
echo import jakarta.persistence.Column; > "%file_path_dto%"
echo import lombok.Data; >> "%file_path_dto%"
echo import lombok.NoArgsConstructor; >> "%file_path_dto%"
echo. >> "%file_path_dto%"
echo ^@Data >> "%file_path_dto%"
echo ^@NoArgsConstructor >> "%file_path_dto%"
echo public class %dto% { >> "%file_path_dto%"
echo } >> "%file_path_dto%"

REM Ghi nội dung vào tệp Entity.java
echo import jakarta.persistence.*; > "%file_path_entity%"
echo import lombok.Data; >> "%file_path_entity%"
echo import lombok.NoArgsConstructor; >> "%file_path_entity%"
echo. >> "%file_path_entity%"
echo ^@Entity >> "%file_path_entity%"
echo ^@Table(name = "%file_name%") >> "%file_path_entity%"
echo ^@Data >> "%file_path_entity%"
echo ^@NoArgsConstructor // Thêm constructor không tham số >> "%file_path_entity%"
echo public class %entity% { >> "%file_path_entity%"
echo } >> "%file_path_entity%"

REM Ghi nội dung vào tệp Repository.java
echo import org.springframework.data.jpa.repository.JpaRepository; > "%file_path_repository%"
echo import org.springframework.stereotype.Repository; >> "%file_path_repository%"
echo. >> "%file_path_repository%"
echo import java.util.List; >> "%file_path_repository%"
echo. >> "%file_path_repository%"
echo ^@Repository >> "%file_path_repository%"
echo public interface %repository% extends JpaRepository<%file_name%, Integer> { >> "%file_path_repository%"
echo } >> "%file_path_repository%"

REM Ghi nội dung vào tệp Service.java
echo import org.springframework.stereotype.Service; > "%file_path_service%"
echo. >> "%file_path_service%"
echo import java.util.List; >> "%file_path_service%"
echo. >> "%file_path_service%"
echo ^@Service >> "%file_path_service%"
echo public interface %service% { >> "%file_path_service%"
echo } >> "%file_path_service%"

REM In ra giá trị của các biến
echo api: %api%
echo dto: %dto%
echo entity: %entity%
echo repository: %repository%
echo service: %service%

REM Kiểm tra xem tệp đã được tạo thành công hay chưa
if exist "%file_path_api%" (
    echo File created successfully at %file_path_api%
) else (
    echo Failed to create file at %file_path_api%
)
if exist "%file_path_dto%" (
    echo File created successfully at %file_path_dto%
) else (
    echo Failed to create file at %file_path_dto%
)
if exist "%file_path_entity%" (
    echo File created successfully at %file_path_entity%
) else (
    echo Failed to create file at %file_path_entity%
)
if exist "%file_path_repository%" (
    echo File created successfully at %file_path_repository%
) else (
    echo Failed to create file at %file_path_repository%
)
if exist "%file_path_service%" (
    echo File created successfully at %file_path_service%
) else (
    echo Failed to create file at %file_path_service%
)
