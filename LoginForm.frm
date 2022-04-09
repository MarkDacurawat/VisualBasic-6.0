VERSION 5.00
Begin VB.Form LoginForm 
   BackColor       =   &H00008000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7395
   ClientLeft      =   45
   ClientTop       =   390
   ClientWidth     =   5370
   BeginProperty Font 
      Name            =   "Poppins Light"
      Size            =   9.75
      Charset         =   0
      Weight          =   300
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   7395
   ScaleWidth      =   5370
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cancelButton 
      BackColor       =   &H00808080&
      Caption         =   "CANCEL"
      BeginProperty Font 
         Name            =   "Poppins Light"
         Size            =   8.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4080
      TabIndex        =   7
      Top             =   6720
      Width           =   1095
   End
   Begin VB.TextBox passwordField 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Poppins Light"
         Size            =   11.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      IMEMode         =   3  'DISABLE
      Left            =   1080
      PasswordChar    =   "•"
      TabIndex        =   6
      Top             =   4080
      Width           =   3135
   End
   Begin VB.TextBox usernameField 
      Alignment       =   2  'Center
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "Poppins Light"
         Size            =   11.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   390
      Left            =   1080
      TabIndex        =   5
      Top             =   3000
      Width           =   3135
   End
   Begin VB.CommandButton loginButton 
      BackColor       =   &H00FFFFFF&
      Caption         =   "LOGIN"
      Height          =   615
      Left            =   1800
      MaskColor       =   &H00FFFFFF&
      TabIndex        =   4
      Top             =   4800
      Width           =   1575
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "The Empire Clan Login System"
      BeginProperty Font 
         Name            =   "Poppins Light"
         Size            =   8.25
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   1320
      TabIndex        =   3
      Top             =   1440
      Width           =   2655
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "PASSWORD"
      BeginProperty Font 
         Name            =   "Poppins Light"
         Size            =   9
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   1
      Left            =   2040
      TabIndex        =   2
      Top             =   3720
      Width           =   1095
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "USERNAME"
      BeginProperty Font 
         Name            =   "Poppins Light"
         Size            =   9
         Charset         =   0
         Weight          =   300
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Index           =   0
      Left            =   2040
      TabIndex        =   1
      Top             =   2640
      Width           =   1095
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "EMPIRE"
      BeginProperty Font 
         Name            =   "Bernard MT Condensed"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   615
      Left            =   1920
      TabIndex        =   0
      Top             =   840
      Width           =   1335
   End
End
Attribute VB_Name = "LoginForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub cancelButton_Click()

    If MsgBox("Are you want to close this form?", vbYesNo) = vbYes Then
        Unload Me
    End If

End Sub

Private Sub loginButton_Click()

    Dim username, password As String
    
    username = "LifeTrader"
    password = "empire"
    
    If usernameField.Text = "" Or passwordField.Text = "" Then
    
        MsgBox "Username or Password is empty", vbOKOnly
    
    Else
    
        If usernameField.Text = username And passwordField.Text = password Then
        
            MsgBox "Login Successfully!!", vbExclamation
            
            LoginForm.Hide
            WelcomeForm.Show
        
        Else
        
            MsgBox "No user found!!", vbExclamation
            
            usernameField.Text = ""
            passwordField.Text = ""
            
            usernameField.SetFocus
        
        End If
    
    End If


End Sub

