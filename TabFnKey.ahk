#SingleInstance force
#InstallKeybdHook
#UseHook

inputTabFlag := true
fnFlag := false

; 全角/半角
sc03A::Send, {vkF4}

; アクティブウィンドウを閉じる
#c::Send, !{F4}

; アクティブウィンドウを最小化
#Esc::Send, {Blind}{Down}

; アクティブウィンドウを最大化
#Space::Send, {Blind}{Up}

; Tab + ○ 
Tab & Space:: ; Space -> ファンクション機能を有効化
  fnFlag := true
  KeyWait, Space
  fnFlag := false
  Return
Tab & H::fnSend("{Blind}{Left}", "{Blind}^{Left}") ; H -> Left (fn: Ctrl-Left)
Tab & J::fnSend("{Blind}{Down}", "{Blind}{PgDn}") ; J -> Down (fn: PageDown)
Tab & K::fnSend("{Blind}{Up}", "{Blind}{PgUp}") ; K -> Up (fn: PageUp)
Tab & L::fnSend("{Blind}{Right}", "{Blind}^{Right}") ; L -> Right (fn: Ctrl-Right)
Tab & sc033::fnSend("^{c}", "^{x}") ; , -> Ctrl-C (fn: Ctrl-X)
Tab & sc034::Send, ^{v} ; . -> Ctrl-V
Tab & sc035::Send, ^{z} ; / -> Ctrl-Z (fn: 同じ)
Tab & P::fnSend("{Blind}{Home}", "{Blind}^{Home}") ; p -> Home (fn: Ctrl-Home)
Tab & sc027::fnSend("{Blind}{End}", "{Blind}^{End}") ; ; -> End (fn: Ctrl-End)
Tab & N::fnSend("{Backspace}", "+{Home}{Backspace}") ; N -> Backspace (fn: カーソルより前を削除)
Tab & M::fnSend("{Delete}","+{End}{Backspace}") ; M -> Delete (fn: カーソルより後ろを削除)
Tab & 1::Send, ^{PgUp} ; 1 -> Ctrl-PageUp
Tab & 2::Send, ^{PgDn} ; 1 -> Ctrl-PageDown
Tab & Q:: ; Q -> Shift Down/Up
  Send, {Shift Down}
  KeyWait, Q
  Send, {Shift Up}
  Return
Tab & W:: ; W -> Ctrl Down/Up
  Send, {Ctrl Down}
  KeyWait, W
  Send, {Ctrl Up}
  Return

fnSend(before, after)
{
  global fnFlag
  If (!fnFlag)
    Send, %before%
  Else
    Send, %after%
  Return 
}

; 本来の Tab キー動作を再現
*Tab::
  inputTabFlag := false
  Send, {Blind}{Tab}
  Return
Tab Up::
  If (inputTabFlag)
  {
    Send, {Tab}
  }
  inputTabFlag := true
  Return
