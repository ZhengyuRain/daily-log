# 每日自动提交脚本
Set-Location "C:\Users\Administrator\daily-log"

# 写入今天的打卡记录
$date = Get-Date -Format "yyyy-MM-dd"
$time = Get-Date -Format "HH:mm"
$entry = "- $date $time 打卡"

Add-Content -Path "log.md" -Value $entry

# Git 提交并推送
git add log.md
git commit -m "daily update: $date"
git push origin master 2>&1
