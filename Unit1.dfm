object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = #1054#1073#1095#1080#1089#1083#1077#1085#1085#1103' '#1074#1080#1088#1072#1079#1091
  ClientHeight = 578
  ClientWidth = 525
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = [fsBold]
  TextHeight = 30
  object GroupBox1: TGroupBox
    Left = 42
    Top = 40
    Width = 287
    Height = 137
    Caption = #1042#1080#1088#1072#1079#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 40
      Width = 24
      Height = 30
      Caption = 'x='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 76
      Width = 43
      Height = 30
      Caption = 'f(x)='
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 96
      Top = 37
      Width = 155
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Edit1'
    end
    object Edit2: TEdit
      Left = 96
      Top = 76
      Width = 155
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Edit2'
    end
  end
  object GroupBox2: TGroupBox
    Left = 42
    Top = 208
    Width = 287
    Height = 137
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1080' '#1086#1073#1095#1080#1089#1083#1077#1085#1085#1103
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 40
      Top = 40
      Width = 24
      Height = 30
      Caption = 'x='
    end
    object Label4: TLabel
      Left = 40
      Top = 88
      Width = 29
      Height = 30
      Caption = 'f(x)'
    end
    object Edit3: TEdit
      Left = 96
      Top = 44
      Width = 155
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = 'Edit3'
    end
    object Edit4: TEdit
      Left = 96
      Top = 83
      Width = 155
      Height = 33
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Edit4'
    end
  end
  object GroupBox3: TGroupBox
    Left = 42
    Top = 376
    Width = 287
    Height = 105
    Caption = #1058#1086#1095#1085#1110#1089#1090#1100
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label5: TLabel
      Left = 80
      Top = 48
      Width = 171
      Height = 30
      Caption = #1076#1077#1089#1103#1090#1082#1086#1074#1080#1093' '#1079#1085#1072#1082#1110#1074
    end
    object ComboBox1: TComboBox
      Left = 21
      Top = 48
      Width = 43
      Height = 38
      TabOrder = 0
      Text = '2'
    end
  end
  object Button1: TButton
    Left = 42
    Top = 504
    Width = 191
    Height = 57
    Caption = #1054#1073#1095#1080#1089#1083#1080#1090#1080
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 504
    Width = 185
    Height = 57
    Caption = #1042#1080#1093#1110#1076
    TabOrder = 4
    OnClick = Button2Click
  end
end
