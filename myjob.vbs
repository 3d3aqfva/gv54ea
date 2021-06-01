Dim objShell,objFSO,objFile

Set objShell=CreateObject("WScript.Shell")
Set objFSO=CreateObject("Scripting.FileSystemObject")

'enter the path for your PowerShell Script
 strPath="C:\Windows\Temp\MyScript.ps1"

'verify file exists
 If objFSO.FileExists(strPath) Then
   'return short path name
   set objFile=objFSO.GetFile(strPath)
   strCMD="powershell -nologo -command " & Chr(34) & "&{" &_
    objFile.ShortPath & "}" & Chr(34)
   'Uncomment next line for debugging
   'WScript.Echo strCMD

  'use 0 to hide window
   objShell.Run strCMD,0

Else

   WScript.Quit

End If
