$path = 'HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Power'
set-itemproperty $path HiberbootEnabled 0 -type dword

cctk --valsetuppwd=pass --wakeonlan=LanOnly --deepsleepctrl=disabled
