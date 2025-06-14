# Tự động hóa Windows: Cài đặt và Cập nhật Driver & Phần mềm

Đây là một bộ sưu tập các tập lệnh tự động hóa được thiết kế để đơn giản hóa quá trình cài đặt và cập nhật driver cũng như phần mềm trên hệ thống Windows.

## Các tập lệnh có sẵn

-   [CMD_ActiveWindowsUpdate.bat](CMD_ActiveWindowsUpdate.bat): Tập lệnh Batch để kích hoạt và chạy Windows Update.
-   [PowerShell_ActiveWindows.ps1](PowerShell_ActiveWindows.ps1): Tập lệnh PowerShell để kích hoạt Windows.
-   [PowerShell_ActiveWindowsUpdate.ps1](PowerShell_ActiveWindowsUpdate.ps1): Tập lệnh PowerShell để kích hoạt và quản lý Windows Update.
-   [PowerShell_ChocoInstallSDIO.ps1](PowerShell_ChocoInstallSDIO.ps1): Cài đặt Chocolatey (trình quản lý gói cho Windows) và SDI Origin (Snappy Driver Installer Origin).
-   [PowerShell_InstallChocolatey.ps1](PowerShell_InstallChocolatey.ps1): Cài đặt Chocolatey.
-   [PowerShell_InstallSDIUpdateDrivers.ps1](PowerShell_InstallSDIUpdateDrivers.ps1): Cài đặt Snappy Driver Installer và sử dụng nó để cập nhật driver.
-   [PowerShell_PowerConfig.ps1](PowerShell_PowerConfig.ps1): Cấu hình các tùy chọn nguồn của hệ thống.
-   [PowerShell_WinGetInstallDesignApps.ps1](PowerShell_WinGetInstallDesignApps.ps1): Cài đặt các ứng dụng thiết kế phổ biến bằng WinGet (Trình quản lý gói Windows).
-   [PowerShell_WinGetInstallDevApps.ps1](PowerShell_WinGetInstallDevApps.ps1): Cài đặt các ứng dụng phát triển phổ biến bằng WinGet.
-   [PowerShell_WinGetOptionalApps.ps1](PowerShell_WinGetOptionalApps.ps1): Cài đặt các ứng dụng tùy chọn khác bằng WinGet.
-   [_utils.ps1](_utils.ps1): Chứa các hàm tiện ích được sử dụng bởi các tập lệnh PowerShell khác.
-   [run-all.ps1](run-all.ps1): Tập lệnh chính để chạy tất cả các tập lệnh tự động hóa theo một trình tự nhất định.

## Cách sử dụng

Dùng script terminal (cmd) (Run as Administrator):
```
powershell -ExecutionPolicy Bypass -Command "& ([ScriptBlock]::Create(irm https://%%URL%%/run-all.ps1 | iex)) -DriverPacksDirectory `"D:\DriverPacks`" "
```
- Thay %%URL%% bằng link raw github hoặc webserver hoặc network
- Có thể chạy từng file riêng

1.  **Quyền quản trị**: Hầu hết các tập lệnh này yêu cầu quyền quản trị để chạy. Nhấp chuột phải vào tập lệnh và chọn "Run as administrator" (Chạy với tư cách quản trị viên).
2.  **Chính sách thực thi PowerShell**: Nếu bạn gặp lỗi khi chạy các tập lệnh PowerShell, bạn có thể cần thay đổi chính sách thực thi. Mở PowerShell với quyền quản trị và chạy lệnh sau:
    ```powershell
    Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
    ```
    Hoặc để cho phép tất cả các tập lệnh:
    ```powershell
    Set-ExecutionPolicy Unrestricted -Scope CurrentUser
    ```
    Hãy cẩn thận khi sử dụng `Unrestricted` vì nó có thể làm giảm bảo mật hệ thống của bạn.
3.  **Chạy từng tập lệnh**: Bạn có thể chạy từng tập lệnh riêng lẻ tùy theo nhu cầu của mình.
4.  **Chạy tất cả**: Sử dụng tập lệnh [run-all.ps1](run-all.ps1) để thực thi tất cả các tác vụ tự động hóa theo trình tự đã định.

## Yêu cầu

-   Hệ điều hành Windows.
-   PowerShell 5.1 trở lên (thường có sẵn trên Windows 10/11).
-   Kết nối Internet để tải xuống các gói và driver.