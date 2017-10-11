# stapy29-sample

みんなのPython勉強会 #29のLT向けのソースコードとテスト結果です。

## ソースコード

- ソースコード例
  - googling_stapy.py
    - PythonのUnittestで書いた時のコードです。
  - googling_stapy_en.robot
    - Robot Framework + Selenium Libraryの標準のキーワードを使ってます
  - googling_stapy_ja_fail.robot
    - 日本語っぽく書いて、失敗するテストです
  - googling_stapy_ja_success.robot
    - 日本語っぽく書いて、成功するテストです

## テスト結果
- レポート例
  - report_success.html
    - 成功時に出力されるレポートです
  - report_fail.html
    - 失敗時に出力されるレポートです
    
### 実行方法
robotコマンドを使って実行します。引数に実行するファイルを指定します。

他にもオプションがあるため、 `robot --help` で確認できます。

```
$ robot googling_stapy_ja_success.robot 
```
