# Script chuyển đổi tài khoản Git
# Sử dụng: .\switch-git-account.ps1 account1 hoặc .\switch-git-account.ps1 account2

param(
    [Parameter(Mandatory=$true)]
    [ValidateSet("account1", "account2")]
    [string]$Account
)

# Cấu hình cho tài khoản 1
$Account1 = @{
    Name = "HoangTX"
    Email = "chris.vo@playstudios.asia"
}

# Cấu hình cho tài khoản 2 (thay đổi thông tin theo tài khoản của bạn)
$Account2 = @{
    Name = "Tên tài khoản 2"
    Email = "email2@example.com"
}

if ($Account -eq "account1") {
    git config --global user.name $Account1.Name
    git config --global user.email $Account1.Email
    Write-Host "Đã chuyển sang tài khoản 1:" -ForegroundColor Green
    Write-Host "  Name: $($Account1.Name)" -ForegroundColor Yellow
    Write-Host "  Email: $($Account1.Email)" -ForegroundColor Yellow
} else {
    git config --global user.name $Account2.Name
    git config --global user.email $Account2.Email
    Write-Host "Đã chuyển sang tài khoản 2:" -ForegroundColor Green
    Write-Host "  Name: $($Account2.Name)" -ForegroundColor Yellow
    Write-Host "  Email: $($Account2.Email)" -ForegroundColor Yellow
}

Write-Host "`nKiểm tra cấu hình hiện tại:" -ForegroundColor Cyan
git config --global user.name
git config --global user.email
