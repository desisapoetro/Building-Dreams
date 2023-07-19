Private Sub Form_Load()
'Setting up the variables
Dim strMessage As String
Dim intChar As Integer

'Creating the output
strMessage = "Building Dreams"
For intChar = 1 To Len(strMessage)
    Print Mid(strMessage, intChar, 1);
    For intCount = 1 To intChar
        Print Chr(8);
    Next
Next
End Sub