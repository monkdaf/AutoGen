program AutoGen;

uses
  Forms,
  uAutoGen in 'uAutoGen.pas' {fAutoGen};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfAutoGen, fAutoGen);
  Application.Run;
end.
