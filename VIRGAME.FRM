VERSION 5.00
Begin VB.Form VirGame 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   3600
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   4800
   LinkTopic       =   "Form1"
   Picture         =   "VirGame.frx":0000
   ScaleHeight     =   3600
   ScaleWidth      =   4800
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Left            =   2040
      Top             =   1440
   End
End
Attribute VB_Name = "VirGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private savex, savey

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
 'Open ash For Output As 1
 Dim a As POINTAPI
 Dim r As RECT
 GetCursorPos a
 
 If Point(a.X * 15 - Left + 45, a.Y * 15 - Top) = RGB(0, 0, 255) Then
  r.Top = 0
  r.Left = 0
  r.Right = Screen.Width / 15
  r.Bottom = Screen.Height / 15
  ClipCursor r
  End
 End If
 If Point(a.X * 15 - Left, a.Y * 15 - Top) = RGB(0, 0, 0) Then
  r.Left = a.X - 2
  r.Right = a.X + 2
  r.Top = a.Y - 2
  r.Bottom = a.Y + 2
  ClipCursor r
 End If
End Sub

Private Sub Form_Paint()
 Dim r As RECT
 r.Top = 0
 r.Left = 0
 r.Right = Screen.Width / 15
 r.Bottom = Screen.Height / 15
 ClipCursor r
 SetCursorPos Left / 15 + 54, Top / 15 + 230
 savex = Left / 15 + 54
 savey = Top / 15 + 240
 Dim a As POINTAPI
 GetCursorPos a
 r.Left = a.X - 2
 r.Right = a.X + 2
 r.Top = a.Y - 2
 r.Bottom = a.Y + 2
 ClipCursor r
End Sub

