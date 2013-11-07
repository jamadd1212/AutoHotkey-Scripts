#NoTrayIcon
toggle := true
^Space::
{
  if toggle{
    WinSet, Transparent, 0 , A

    Loop{
      GetKeyState, state1, Ctrl, P
      GetKeyState, state2, Space, P
      if state1 = U
         break
      if state2 = U
         break
    }

    WinSet, Transparent, OFF, A
  }
  else
  {
    toggle2 := !toggle2
      if toggle2
         WinSet, Transparent, 0 , A
      if !toggle2
         WinSet, Transparent, OFF, A
  }
  return
}

^!Space::
{
  toggle:=!toggle ;toggles up and down states.
  WinSet, Transparent, OFF, A
  return
}
