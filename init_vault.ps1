# ==================================================
# C++ Learning Vault 初期化スクリプト
# 実行方法:
#   PowerShell で以下を1行実行するだけ:
#   powershell -ExecutionPolicy Bypass -File .\init_vault.ps1
# ==================================================

$root = "C:\Users\ayoyr\repo\Cpp-Learning"

$dirs = @(
    "$root\sessions",
    "$root\mistakes",
    "$root\progress",
    "$root\code\phase0",
    "$root\code\phase1",
    "$root\code\phase2",
    "$root\code\phase3",
    "$root\code\phase4"
)
foreach ($dir in $dirs) {
    if (-not (Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "Created: $dir"
    }
}

$progressFile = "$root\progress\progress.md"
if (-not (Test-Path $progressFile)) {
@"
# C++ Learning Progress

| phase | title | sessions_done | status | last_updated |
|-------|-------|---------------|--------|--------------|
| 0 | C++文法基礎 | 0 | studying | - |
| 1 | ポインタ・クラス・メモリ | 0 | not_started | - |
| 2 | STL・継承・多態性 | 0 | not_started | - |
| 3 | アルゴリズム・データ構造 | 0 | not_started | - |
| 4 | 発展コース | 0 | not_started | - |

## 更新ログ
| date | phase | sessions_done | status | note |
|------|-------|---------------|--------|------|
"@ | Out-File -FilePath $progressFile -Encoding UTF8
    Write-Host "Created: $progressFile"
}

$mistakeFile = "$root\mistakes\mistake_log.md"
if (-not (Test-Path $mistakeFile)) {
@"
# Mistake Log

| date | phase | session | kind | content | cause |
|------|-------|---------|------|---------|-------|
"@ | Out-File -FilePath $mistakeFile -Encoding UTF8
    Write-Host "Created: $mistakeFile"
}

Write-Host ""
Write-Host "=========================================="
Write-Host "Vault initialized: $root"
Write-Host "次: Obsidian でこのフォルダを Vault として開く"
Write-Host "次: Antigravity でこのフォルダを Open する"
Write-Host "=========================================="
