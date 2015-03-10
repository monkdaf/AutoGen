object fAutoGen: TfAutoGen
  Left = 290
  Top = 145
  Width = 1041
  Height = 705
  Caption = #1040#1074#1090#1086#1043#1077#1085' v0.3 (build 140624)'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    1025
    667)
  PixelsPerInch = 96
  TextHeight = 13
  object bvl1: TBevel
    Left = 6
    Top = 8
    Width = 452
    Height = 100
  end
  object bvl4: TBevel
    Left = 241
    Top = 8
    Width = 217
    Height = 100
  end
  object bvl3: TBevel
    Left = 461
    Top = 8
    Width = 560
    Height = 625
    Anchors = [akLeft, akTop, akRight, akBottom]
  end
  object Label1: TLabel
    Left = 13
    Top = 13
    Width = 53
    Height = 13
    Caption = #1057#1095#1105#1090#1095#1080#1082#1080':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lbl1: TLabel
    Left = 10
    Top = 51
    Width = 17
    Height = 13
    Caption = 'Cnt'
  end
  object lbl2: TLabel
    Left = 32
    Top = 32
    Width = 194
    Height = 13
    Caption = #1054#1090'                  '#1044#1086'                '#1055#1088#1080#1088#1072#1097#1077#1085#1080#1077
  end
  object bvl2: TBevel
    Left = 5
    Top = 112
    Width = 455
    Height = 521
    Anchors = [akLeft, akTop, akBottom]
  end
  object lbl3: TLabel
    Left = 13
    Top = 117
    Width = 111
    Height = 13
    Caption = #1056#1072#1079#1084#1085#1086#1078#1072#1077#1084#1099#1081' '#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 469
    Top = 13
    Width = 111
    Height = 13
    Caption = #1056#1072#1079#1084#1085#1086#1078#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsUnderline]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 246
    Top = 11
    Width = 208
    Height = 91
    Caption = 
      #1059#1090#1080#1083#1080#1090#1072' '#1076#1083#1103' "'#1088#1072#1079#1084#1085#1086#1078#1077#1085#1080#1103'" '#1090#1077#1082#1089#1090#1072#13#10#13#10#1055#1086#1103#1089#1085#1077#1085#1080#1077':'#13#10'%'#1057'nt% - '#1074#1084#1077#1089#1090#1086' '#1101 +
      #1090#1086#1075#1086' '#1074#1099#1088#1072#1078#1077#1085#1080#1103' '#1087#1086#1076#1089#1090#1072#1074#1083#1103#1077#1090#1089#1103' '#1089#1095#1105#1090#1095#1080#1082#13#10'PS '#1055#1088#1080#1088#1072#1097#1077#1085#1080#1077' '#1074#1086#1079#1084#1086#1078#1085#1086' '#1082#1072#1082 +
      ' '#1074' '#1089#1090#1086#1088#1086#1085#1091' '#1091#1074#1077#1083#1080#1095#1077#1085#1080#1103' '#1090#1072#1082' '#1080' '#1074' '#1089#1090#1086#1088#1086#1085#1091' '#1091#1084#1077#1085#1100#1096#1077#1085#1080#1103
    WordWrap = True
  end
  object mmoGenTxt: TMemo
    Left = 464
    Top = 32
    Width = 553
    Height = 598
    Anchors = [akLeft, akTop, akRight, akBottom]
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object Close: TBitBtn
    Left = 921
    Top = 637
    Width = 99
    Height = 25
    Anchors = [akRight, akBottom]
    TabOrder = 1
    Kind = bkClose
  end
  object bGen: TBitBtn
    Left = 8
    Top = 637
    Width = 906
    Height = 25
    Anchors = [akLeft, akRight, akBottom]
    Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100' '#1080' '#1089#1082#1086#1087#1080#1088#1086#1074#1072#1090#1100' '#1090#1077#1082#1089#1090' '#1074' '#1073#1091#1092#1077#1088
    TabOrder = 2
    OnClick = bGenClick
    Kind = bkOK
  end
  object eC1_From: TEdit
    Left = 32
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 3
    Text = '1'
    OnExit = eC1_FromExit
  end
  object eC1_To: TEdit
    Left = 96
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 4
    Text = '5'
    OnExit = eC1_ToExit
  end
  object eC1_Delta: TEdit
    Left = 160
    Top = 48
    Width = 57
    Height = 21
    TabOrder = 5
    Text = '1'
    OnExit = eC1_DeltaExit
  end
  object mmoSorceText: TMemo
    Left = 8
    Top = 144
    Width = 449
    Height = 486
    Anchors = [akLeft, akTop, akBottom]
    Lines.Strings = (
      '// '#1053#1072#1089#1086#1089' PU%Cnt%'
      'A #PU%Cnt%On'
      'AN #PU%Cnt%.Err'
      '= #PU%Cnt%.Cm1')
    ScrollBars = ssBoth
    TabOrder = 6
  end
  object eFindSrc: TEdit
    Left = 248
    Top = 118
    Width = 57
    Height = 21
    TabOrder = 7
    Text = '1'
  end
  object eFindRepl: TEdit
    Left = 392
    Top = 118
    Width = 65
    Height = 21
    TabOrder = 8
    Text = '%Cnt%'
    OnDblClick = eFindReplDblClick
  end
  object bReplace: TButton
    Left = 312
    Top = 118
    Width = 73
    Height = 22
    Caption = #1079#1072#1084#1077#1085#1080#1090#1100' '#1085#1072
    TabOrder = 9
    WordWrap = True
    OnClick = bReplaceClick
  end
  object chkNeedCR: TCheckBox
    Left = 910
    Top = 12
    Width = 105
    Height = 17
    Caption = #1087#1077#1088#1077#1074#1086#1076' '#1089#1090#1088#1086#1082#1080
    Checked = True
    State = cbChecked
    TabOrder = 10
    OnClick = chkNeedCRClick
  end
end
