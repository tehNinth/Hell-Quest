unit DataManager;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, sPanel, sEdit, sButton,
  sCheckBox, sListBox;

type
  TDataManagerForm = class(TForm)
    LabelSWF: TsLabelFX;
    LabelPlayerCatcher: TsLabelFX;
    ButtonDisplayPlayerInfo: TsButton;
    LabelPlayerName: TsLabelFX;
    TextPlayerName: TsEdit;
    ButtonViewSWF: TsButton;
    SWFList: TsListBox;
    PlayerList: TsListBox;
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    LabelBaseURL: TsLabelFX;
    TextBaseURL: TsEdit;
    LabelViewClass: TsLabelFX;
    CheckMale: TsCheckBox;
    CheckFemale: TsCheckBox;
    procedure AddSWF(buffer: string; position: integer);
    procedure FormCreate(Sender: TObject);
    procedure ButtonViewSWFClick(Sender: TObject);
    procedure CheckMaleClick(Sender: TObject);
    procedure CheckFemaleClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataManagerForm: TDataManagerForm;
  sSWFList: TStringList;
  sPlayerList: TStringList;

implementation

uses Unit1, HellViewer;

{$R *.dfm}

function ReverseString(str: string): string;
var
 return: string;
 i, len: integer;
begin
 len := Length(str);
 SetLength(return, len);
 for i := 1 to len do begin
  return[i] := str[len - i + 1];
 end;
 Result := return;
end;

procedure TDataManagerForm.AddSWF(buffer: string; position: integer);
var
  i, pos: integer;
  text: string;
begin
  pos := position - 1;
  i := 1;
  while (buffer[pos - i + 1] <> '"') and (position > 0) do begin
   position := pos - i + 1;
   text := text + buffer[position];
   i := i + 1;
   Application.ProcessMessages;
  end;
  text := ReverseString(text);
  if (text <> '') and (text[1] <> '>') then begin
    text := text + '.swf';
    if (SWFList.Items.IndexOf(text) = -1) then SWFList.Items.Add(text);
  end;
end;

procedure TDataManagerForm.ButtonViewSWFClick(Sender: TObject);
var
 url: string;
begin
  if SWFList.ItemIndex <> -1 then begin
    url := TextBaseURL.Text;
    if AnsiPos('skin', SWFList.Items[SWFList.ItemIndex]) <> 0 then begin
      url := url + 'classes/';
      if CheckMale.Checked then url := url + 'M/'
      else url := url + 'F/';
    end;
    url := url + SWFList.Items[SWFList.ItemIndex];
    HellViewerForm.Hide;
    HellViewer.url := url;
    HellViewerForm.Show;
  end;
end;

procedure TDataManagerForm.CheckFemaleClick(Sender: TObject);
begin
  if (CheckFemale.Checked = true) then
    CheckMale.Checked := false
  else begin
    CheckMale.Checked := true;
  end;
end;

procedure TDataManagerForm.CheckMaleClick(Sender: TObject);
begin
  if (CheckMale.Checked = true) then
    CheckFemale.Checked := false
  else begin
    CheckFemale.Checked := true;
  end;
end;

procedure TDataManagerForm.FormCreate(Sender: TObject);
begin
  sSWFList := TStringList.Create;
  sPlayerList := TStringList.Create;
end;

end.
