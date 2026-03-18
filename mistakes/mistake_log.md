# Mistake Log

| date | phase | session | kind | content | cause |
|------|-------|---------|------|---------|-------|
| 2026-03-17 | 0 | 1 | 型変換・精度 | `float` 型とCスタイルキャスト `(float)` の使用 | C++のキャスト構文や `double` を優先して使う定石を知らなかったため |
