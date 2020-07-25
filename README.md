# TabFnKey
Tab キーを Fn キーのように振る舞わせる AutoHotkey スクリプトとかえうち設定
※従来の Tab キー動作 (Alt-Tab 等) には影響が無いように調整している

![demo](https://github.com/yuru7/TabFnKey/raw/images/20200725-114349.gif)

## 構成ファイル

* TabFnKey.exe: TabFnKey.ahk をコンパイルし、単体で起動できるようにした実行ファイル (**通常はこちらを実行するだけで OK**)
* TabFnKey.ahk: AutoHotkey 用スクリプトファイル
* US→JIS\(Win系,Tab系ショートカット付\).kaeuchi: [かえうち2](https://kaeuchi.jp/summary/) で同等の操作を利用できる設定ファイル。TabFnKey.ahk と同等の設定を加えている
  * JIS 配列の環境に US 配列キーボードを接続して利用することを想定した設定になっているため、他の環境 (JIS 環境に JIS 配列キーボードを接続している等) の場合には、設定を参考に作成してください。

## ホットキー リスト

* Tab-Space: Space を押している間、以下の動作を括弧内の動作に変更する
* Tab-H: Left (Space 中: Ctrl-Left)
* Tab-J: Down (Space 中: PageDown)
* Tab-K: Up (Space 中: PageUp)
* Tab-L: Right (Space 中: Ctrl-Right)
* Tab-p: Home (Space 中: Ctrl-Home)
* Tab-;: End (Space 中: Ctrl-End)
* Tab-N: Backspace (Space 中: カーソルより前を削除)
* Tab-M: Delete (Space 中: カーソルより後ろを削除)
* Tab-,: Ctrl-C (Space 中: Ctrl-X)
* Tab-.: Ctrl-V (Space 中: 変更なし)
* Tab-Q: Shift Down/Up
* Tab-W: Ctrl Down/Up
* Tab-1: Ctrl-PageUp
* Tab-2: Ctrl-PageDown
* **その他、利便性向上のために以下を追加で設定している**
  * Capslock: 全角/半角
  * Win-C: ウィンドウを閉じる (Alt-F4 の動作)
  * Win-Esc: ウィンドウを最小化 (Win-Down の動作)
  * Win-Space: ウィンドウを最大化 (Win-Up の動作)
