unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, sSkinManager, sSkinProvider, sButton, sLabel,
  sPanel, sListBox;

type
  TAutoerForm = class(TForm)
    Open: TTimer;
    ButtonLoad: TsButton;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    GoldList: TsListBox;
    sPanel2: TsPanel;
    MonsterList: TsListBox;
    sLabel2: TsLabel;
    procedure OpenTimer(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GoldListClick(Sender: TObject);
    procedure MonsterListClick(Sender: TObject);
    procedure LoadAutoerClick(Sender: TObject);
    procedure AddPacket(data: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AutoerForm: TAutoerForm;

implementation

uses Unit1, Sentry;

{$R *.dfm}

procedure TAutoerForm.OpenTimer(Sender: TObject);
var
 i: Integer;
begin
 i := AutoerForm.AlphaBlendValue;
 if i < 230 then begin
  i := i + 5;
  AutoerForm.AlphaBlendValue := i;
 end else begin
   Open.Enabled := false;
 end;
end;

procedure TAutoerForm.FormHide(Sender: TObject);
begin
  AutoerForm.AlphaBlendValue := 0;
end;

procedure TAutoerForm.FormShow(Sender: TObject);
begin
  Open.Enabled := true;
end;

procedure TAutoerForm.GoldListClick(Sender: TObject);
begin
  MonsterList.ItemIndex := -1;
end;

procedure TAutoerForm.MonsterListClick(Sender: TObject);
begin
  GoldList.ItemIndex := -1;
end;

procedure TAutoerForm.AddPacket(data: String);
begin
  Main.toSendList.Items.Add(data);
  Unit1.slData.Add(data);
  Unit1.slSock.Add(gameSocket);
end;

procedure TAutoerForm.LoadAutoerClick(Sender: TObject);
var
  selected, data: string;
  number, i: Integer;
begin
  number := 100000 + Random(800000);
  if characterName = '' then begin
    ShowMessage('You must get in the game to start autoing!');
  end else if GoldList.ItemIndex <> -1 then begin
    selected := GoldList.Items.Strings[GoldList.ItemIndex];
    if selected = 'Rats In The Cradle' then begin
      Main.sendPacket('%xt%' + Unit1.zone + '%cmd%1%tfer%' + Unit1.characterName + '%noobshire-' + IntToStr(number) + '%');
      Main.toSendList.Clear;
      Unit1.slData.Clear;
      Unit1.slSock.Clear;
      for i := 1 to 30 do begin
        ButtonLoad.Caption := 'Please Wait... (' + IntToStr((3000) - (i * 100)) + ' milliseconds)';
        Sleep(100);
        Application.ProcessMessages;
      end;
      AddPacket('%xt%' + Unit1.zone + '%hi%1%');
      AddPacket('%xt%' + Unit1.zone + '%afk%1%true%');
      AddPacket('%xt%' + Unit1.zone + '%acceptQuest%' + Unit1.characterID + '%33%');
      for i := 0 to 5 do begin
        AddPacket('%xt%' + Unit1.zone + '%getMapItem%' + Unit1.characterID + '%11%');
      end;
      AddPacket('%xt%' + Unit1.zone + '%tryQuestComplete%' + Unit1.characterID + '%33%');
      AddPacket('%xt%' + Unit1.zone + '%afk%1%false%');
      AddPacket('%xt%' + Unit1.zone + '%hi%1%');
      Main.SpamDelay.Text := '200';
      Main.SpamToggle.Checked := true;
      ButtonLoad.Caption := 'Load Selected Autoer';
      AutoerForm.Hide;
    end;
  end else if MonsterList.ItemIndex <> -1 then begin
    selected := MonsterList.Items.Strings[MonsterList.ItemIndex];
    if selected = 'Sentry - Only Normal Attack' then begin
      Main.sendPacket('%xt%' + Unit1.zone + '%cmd%1%tfer%' + Unit1.characterName + '%dwakel-' + IntToStr(number) + '%');
      Main.toSendList.Clear;
      Unit1.slData.Clear;
      Unit1.slSock.Clear;
      for i := 1 to 3 * 10 do begin
        ButtonLoad.Caption := 'Please Wait... (' + IntToStr((3 * 1000) - (i * 100)) + ' milliseconds)';
        Sleep(100);
        Application.ProcessMessages;
      end;
      AddPacket('%xt%' + Unit1.zone + '%resPlayerTimed%39139%298053%');
      AddPacket('%xt%' + Unit1.zone + '%hi%1%');
      AddPacket('%xt%' + Unit1.zone + '%moveToCell%3763%Boss%Left%');
      for i := 0 to 8 do AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
      for i := 0 to 8 do AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%hi%1%');
      Main.SpamDelay.Text := '1800';
      Main.SpamToggle.Checked := true;
      ButtonLoad.Caption := 'Load Selected Autoer';
      AutoerForm.Hide;
    end else if selected = 'Sentry - Custom' then begin
      AutoerForm.Hide;
      SentryForm.Show;
    end else if selected = 'Sentry - For Dragon Slayers' then begin
      Main.sendPacket('%xt%' + Unit1.zone + '%cmd%1%tfer%' + Unit1.characterName + '%dwakel-' + IntToStr(number) + '%');
      Main.toSendList.Clear;
      Unit1.slData.Clear;
      Unit1.slSock.Clear;
      for i := 1 to 30 do begin
        ButtonLoad.Caption := 'Please Wait... (' + IntToStr((3000) - (i * 100)) + ' milliseconds)';
        Sleep(100);
        Application.ProcessMessages;
      end;
      AddPacket('%xt%' + Unit1.zone + '%moveToCell%3763%Boss%Left%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%a2%3%m%12%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%12%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%a2%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%gar%1%gar%aa%3%m%11%');
      AddPacket('%xt%' + Unit1.zone + '%resPlayerTimed%39139%298053%');
      AddPacket('%xt%' + Unit1.zone + '%hi%1%');
      Main.SpamDelay.Text := '2000';
      Main.SpamToggle.Checked := true;
      ButtonLoad.Caption := 'Load Selected Autoer';
      AutoerForm.Hide;
    end;
  end;
end;

end.
