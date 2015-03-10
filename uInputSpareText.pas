unit uInputSpareText;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfInputSpareText = class(TForm)
    eSpareText: TEdit;
    lblSpareText: TLabel;
    bOk: TBitBtn;
    bCancel: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fInputSpareText: TfInputSpareText;

implementation

uses
  AiChWrk;

{$R *.dfm}

procedure TfInputSpareText.FormShow(Sender: TObject);
begin
  eSpareText.Text:=SpareText;
end;

procedure TfInputSpareText.bOkClick(Sender: TObject);
begin
  SpareText:=eSpareText.Text;
end;

end.
