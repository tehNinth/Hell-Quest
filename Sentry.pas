unit Sentry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, sComboBox, sLabel;

type
  TSentryForm = class(TForm)
    sLabel1: TsLabel;
    ComboFirst: TsComboBox;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    ComboRest: TsComboBox;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    ComboSecond: TsComboBox;
    sLabel6: TsLabel;
    ButtonStart: TsBitBtn;
    procedure ButtonStartClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SentryForm: TSentryForm;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TSentryForm.ButtonStartClick(Sender: TObject);
var
 i, first, rest, second, seconds: Integer;
begin
 first := StrToInt(ComboFirst.Text);
 rest := StrToInt(ComboRest.Text);
 second := StrToInt(ComboSecond.Text);
 ButtonStart.Caption := 'Please Wait... (2000 milliseconds)';
 if (first > 0) and (second > 0) then begin
   i := 100000 + Random(800000);
   Main.sendPacket('%xt%' + Unit1.zone + '%cmd%1%tfer%' + characterName + '%dwakel-' + IntToStr(i) + '%');
   seconds := 3;
   for i := 1 to seconds * 10 do begin
    ButtonStart.Caption := 'Please Wait... (' + IntToStr((seconds * 1000) - (i * 100)) + ' milliseconds)';
    Sleep(100);
    Application.ProcessMessages;
   end;
   AutoerForm.AddPacket('%xt%' + Unit1.zone + '%moveToCell%3763%Boss%Left%');
   for i := 1 to first do AutoerForm.AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
   if rest > 0 then begin
    AutoerForm.AddPacket('%xt%' + Unit1.zone + '%emotea%1%rest%');
    for i := 1 to rest do AutoerForm.AddPacket('%xt%' + Unit1.zone + '%restRequest%1%%');
   end;
   for i := 1 to second do AutoerForm.AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
   AutoerForm.AddPacket('%xt%' + Unit1.zone + '%resPlayerTimed%39139%298053%');
   AutoerForm.AddPacket('%xt%' + Unit1.zone + '%hi%1%');
   Main.SpamDelay.Text := '2000';
   Main.SpamToggle.Checked := true;
   ButtonStart.Caption := 'Start!';
   SentryForm.Hide;
 end;
end;

//Now you thought I wouldn't write a comment for this one didn't you :P

end.
