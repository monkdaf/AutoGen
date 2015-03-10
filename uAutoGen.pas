unit uAutoGen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfAutoGen = class(TForm)
    mmoGenTxt: TMemo;
    Close: TBitBtn;
    bGen: TBitBtn;
    Label1: TLabel;
    lbl1: TLabel;
    eC1_From: TEdit;
    eC1_To: TEdit;
    eC1_Delta: TEdit;
    lbl2: TLabel;
    mmoSorceText: TMemo;
    bvl1: TBevel;
    bvl2: TBevel;
    lbl3: TLabel;
    bvl3: TBevel;
    lbl4: TLabel;
    lbl5: TLabel;
    bvl4: TBevel;
    eFindSrc: TEdit;
    eFindRepl: TEdit;
    bReplace: TButton;
    chkNeedCR: TCheckBox;
    procedure bGenClick(Sender: TObject);
    procedure eC1_FromExit(Sender: TObject);
    procedure eC1_ToExit(Sender: TObject);
    procedure eC1_DeltaExit(Sender: TObject);
    procedure bReplaceClick(Sender: TObject);
    procedure eFindReplDblClick(Sender: TObject);
    procedure chkNeedCRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
// Процедура генерирования текста
  procedure GenText();
// Проверка на ошибки (=True - ошибки есть)
  function CheckErr():Boolean;
// Процедура замены текста в исходном тексте
  procedure ReplSorceText();


var
  fAutoGen: TfAutoGen;
  C1, C1_From, C1_To, C1_Delta:Integer; // Для счётчика С1
  NeedCR: Boolean=True; // Признак нужен ли перевод строки после каждой генерируемой строки
implementation

{$R *.dfm}

procedure TfAutoGen.bGenClick(Sender: TObject);
var
  i:Integer;
begin
  mmoGenTxt.Clear;
  CheckErr;
  GenText;
//  for i:=0 to 39 do    // '+IntToStr(i)+'
//  begin
////    mmoGenTxt.Lines.Add('');
//    mmoGenTxt.Lines.Add('//--Таймер для перехода шага '+IntToStr(i)+' к шагу '+IntToStr(i+1)+'-----------');
//    mmoGenTxt.Lines.Add('      CALL  #tmrSt'+IntToStr(i)+'_'+IntToStr(i+1)+'');
//    mmoGenTxt.Lines.Add('   IN:=#StepBit.St'+IntToStr(i)+'');
//    mmoGenTxt.Lines.Add('   PT:=T#2S');
//    mmoGenTxt.Lines.Add('   Q :=');
//    mmoGenTxt.Lines.Add('   ET:=');
//  end;
  mmoGenTxt.SelectAll;
  mmoGenTxt.CopyToClipboard;
end;

procedure TfAutoGen.eC1_FromExit(Sender: TObject);
begin
  CheckErr;
end;

procedure TfAutoGen.eC1_ToExit(Sender: TObject);
begin
  CheckErr;
end;

procedure TfAutoGen.eC1_DeltaExit(Sender: TObject);
begin
  CheckErr;
end;
//______________________________________________________________________________
// Процедура генерирования текста
procedure GenText();
var
  i:Integer;
  s:string;
begin
  with fAutoGen do
  begin
    C1:=C1_From;
    if C1_Delta>0 then
    while C1<=C1_To do
    begin
      for i:=0 to mmoSorceText.Lines.Count-1 do
        begin
          s:=mmoSorceText.Lines.Strings[i];
          mmoGenTxt.Lines.Add(StringReplace(s,'%Cnt%',IntToStr(C1),[rfreplaceall]));
        end;
      if NeedCR then mmoGenTxt.Lines.Add(' ');
      C1:=C1+C1_Delta;
    end
    else
    while C1>=C1_To do
    begin
      for i:=0 to mmoSorceText.Lines.Count-1 do
        begin
          s:=mmoSorceText.Lines.Strings[i];
          mmoGenTxt.Lines.Add(StringReplace(s,'%Cnt%',IntToStr(C1),[rfreplaceall]));
        end;
      if NeedCR then mmoGenTxt.Lines.Add(' ');
      C1:=C1+C1_Delta;
    end
  end;
end;
//______________________________________________________________________________
// Проверка на ошибки (=True - ошибки есть)
function CheckErr():Boolean;
var
  x:Integer;
begin
  with fAutoGen do
  begin
    if TryStrToInt(eC1_From.Text, x)
    then C1_From:=x
    else begin
      Application.MessageBox('Значение должно быть числом', 'Ошибка', MB_OK + MB_ICONSTOP);
      eC1_From.SetFocus;
      CheckErr:=True;
      Exit;
    end;

    if TryStrToInt(eC1_To.Text, x)
    then C1_To:=x
    else begin
      Application.MessageBox('Значение должно быть числом', 'Ошибка', MB_OK + MB_ICONSTOP);
      eC1_To.SetFocus;
      CheckErr:=True;
      Exit;
    end;

    if TryStrToInt(eC1_Delta.Text, x)
    then C1_Delta:=x
    else begin
      Application.MessageBox('Значение должно быть числом', 'Ошибка', MB_OK + MB_ICONSTOP);
      eC1_Delta.SetFocus;
      CheckErr:=True;
      Exit;
    end;
    CheckErr:=False;
  end;
end;
//______________________________________________________________________________
// Процедура замены текста в исходном тексте
procedure ReplSorceText();
var
  i:Integer;
  s:string;
begin
  with fAutoGen do
  begin
    for i:=0 to mmoSorceText.Lines.Count-1 do
      begin
        s:=mmoSorceText.Lines.Strings[i];
        s:=StringReplace(s,eFindSrc.Text ,eFindRepl.Text,[rfreplaceall]);
        mmoSorceText.Lines.Delete(i);
        mmoSorceText.Lines.Insert(i,s);
      end;
    mmoGenTxt.Lines.Add(' ');
    C1:=C1+C1_Delta;
  end;
end;

procedure TfAutoGen.bReplaceClick(Sender: TObject);
begin
  ReplSorceText;
end;

procedure TfAutoGen.eFindReplDblClick(Sender: TObject);
begin
  eFindRepl.SelectAll;
end;

procedure TfAutoGen.chkNeedCRClick(Sender: TObject);
begin
  NeedCR:=chkNeedCR.Checked;
end;

procedure TfAutoGen.FormCreate(Sender: TObject);
begin
  chkNeedCR.Checked:=NeedCR;
end;

end.
