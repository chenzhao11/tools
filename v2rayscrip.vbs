Sub Main
xsh.Screen.Synchronous = true
'安装bbr
xsh.Screen.Send "wget --no-check-certificate https://github.com/teddysun/across/raw/master/bbr.sh"
xsh.Screen.Send VbCr
xsh.Session.Sleep 100

xsh.Screen.Send "chmod +x bbr.sh"
xsh.Screen.Send VbCr
xsh.Session.Sleep 100

xsh.Screen.Send "./bbr.sh"
xsh.Screen.Send VbCr
xsh.Session.Sleep 100
xsh.Screen.WaitForString "Press any key to start...or Press Ctrl+C to cancel"
xsh.Screen.Send "y"
xsh.Screen.Send VbCr
xsh.Session.Sleep 100


'是否安装成功
xsh.Screen.Send "lsmod | grep bbr"
xsh.Screen.Send VbCr
xsh.Session.Sleep 100

'安装v2ray
xsh.Screen.Send "wget -N --no-check-certificate https://raw.githubusercontent.com/KiriKira/v2ray.fun/kiriMod/install.sh && bash install.sh"
xsh.Screen.Send VbCr
xsh.Session.Sleep 100

end Sub
