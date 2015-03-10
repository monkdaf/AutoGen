object fInputSpareText: TfInputSpareText
  Left = 254
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1057#1090#1088#1086#1082#1072' '#1076#1083#1103' '#1088#1072#1089#1087#1086#1079#1085#1072#1085#1080#1103' '#1088#1077#1079#1077#1088#1074#1085#1099#1093' '#1074#1093#1086#1076#1086#1074
  ClientHeight = 95
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblSpareText: TLabel
    Left = 24
    Top = 8
    Width = 268
    Height = 13
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1089#1090#1088#1086#1082#1091' '#1076#1083#1103' '#1088#1072#1089#1087#1086#1079#1085#1072#1085#1080#1103' '#1088#1077#1079#1077#1088#1074#1085#1099#1093' '#1074#1093#1086#1076#1086#1074
  end
  object eSpareText: TEdit
    Left = 80
    Top = 32
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'eSpareText'
  end
  object bOk: TBitBtn
    Left = 8
    Top = 64
    Width = 75
    Height = 25
    TabOrder = 1
    OnClick = bOkClick
    Kind = bkOK
  end
  object bCancel: TBitBtn
    Left = 232
    Top = 64
    Width = 75
    Height = 25
    TabOrder = 2
    Kind = bkCancel
  end
end
