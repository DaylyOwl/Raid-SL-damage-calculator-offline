Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
currentFolder = fso.GetParentFolderName(WScript.ScriptFullName)
htmlPath = currentFolder & "\index.html"
fileUrl = "file:///" & Replace(htmlPath, "\", "/")
chrome = ""
edge = ""

If fso.FileExists(shell.ExpandEnvironmentStrings("%ProgramFiles%") & "\Google\Chrome\Application\chrome.exe") Then
  chrome = shell.ExpandEnvironmentStrings("%ProgramFiles%") & "\Google\Chrome\Application\chrome.exe"
ElseIf fso.FileExists(shell.ExpandEnvironmentStrings("%ProgramFiles(x86)%") & "\Google\Chrome\Application\chrome.exe") Then
  chrome = shell.ExpandEnvironmentStrings("%ProgramFiles(x86)%") & "\Google\Chrome\Application\chrome.exe"
End If

If fso.FileExists(shell.ExpandEnvironmentStrings("%ProgramFiles(x86)%") & "\Microsoft\Edge\Application\msedge.exe") Then
  edge = shell.ExpandEnvironmentStrings("%ProgramFiles(x86)%") & "\Microsoft\Edge\Application\msedge.exe"
ElseIf fso.FileExists(shell.ExpandEnvironmentStrings("%ProgramFiles%") & "\Microsoft\Edge\Application\msedge.exe") Then
  edge = shell.ExpandEnvironmentStrings("%ProgramFiles%") & "\Microsoft\Edge\Application\msedge.exe"
End If

If chrome <> "" Then
  shell.Run Chr(34) & chrome & Chr(34) & " --app=" & Chr(34) & fileUrl & Chr(34), 1, False
ElseIf edge <> "" Then
  shell.Run Chr(34) & edge & Chr(34) & " --app=" & Chr(34) & fileUrl & Chr(34), 1, False
Else
  shell.Run Chr(34) & htmlPath & Chr(34), 1, False
End If
