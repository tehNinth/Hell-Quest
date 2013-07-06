unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls, sButton, sLabel, sEdit,
  sCheckBox, sListBox;

type
  TFilterForm = class(TForm)
    Open: TTimer;
    FilterList: TsListBox;
    FilterName: TsEdit;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    SaveFilter: TsButton;
    AddFilter: TsButton;
    DeleteFilter: TsButton;
    FilterEnabled: TsCheckBox;
    sLabel4: TsLabel;
    sLabel5: TsLabel;
    FilterOriginal: TsEdit;
    FilterReplacement: TsEdit;
    procedure AddFilterClick(Sender: TObject);
    procedure OpenTimer(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DeleteFilterClick(Sender: TObject);
    procedure SaveFilterClick(Sender: TObject);
    procedure FilterListClick(Sender: TObject);
    procedure loadFLTClick(Sender: TObject);
    procedure saveFLTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FilterForm: TFilterForm;
  iFilterName, iFilterEnabled, iFilterOriginal, iFilterReplacement, iFilterType: TStringList;

implementation

{$R *.dfm}

procedure TFilterForm.AddFilterClick(Sender: TObject);
begin
  FilterList.Items.Add('New Filter');
  iFilterName.Add('New Filter');
  iFilterEnabled.Add('false');
  iFilterOriginal.Add('');
  iFilterReplacement.Add('');
  iFilterType.Add('received');
end;

procedure TFilterForm.OpenTimer(Sender: TObject);
var
 i: Integer;
begin
 i := FilterForm.AlphaBlendValue;
 if i < 230 then begin
  i := i + 5;
  FilterForm.AlphaBlendValue := i;
 end else begin
   Open.Enabled := false;
 end;
end;

procedure TFilterForm.FormHide(Sender: TObject);
begin
  FilterForm.AlphaBlendValue := 0;
end;
procedure TFilterForm.FormShow(Sender: TObject);
begin
  Open.Enabled := true;
end;

procedure TFilterForm.FormCreate(Sender: TObject);
begin
  iFilterName := TStringList.Create();
  iFilterEnabled := TStringList.Create();
  iFilterOriginal := TStringList.Create();
  iFilterReplacement := TStringList.Create();
  iFilterType := TStringList.Create();
end;

procedure TFilterForm.DeleteFilterClick(Sender: TObject);
var
  index: Integer;
begin
  index := FilterList.ItemIndex;
  FilterList.Items.Delete(index);
  iFilterName.Delete(index);
  iFilterEnabled.Delete(index);
  iFilterOriginal.Delete(index);
  iFilterReplacement.Delete(index);
end;

procedure TFilterForm.SaveFilterClick(Sender: TObject);
var
  index: Integer;
begin
  index := FilterList.ItemIndex;
  if(index <> -1) then begin
    iFilterName.Strings[index] := FilterName.Text;
    if FilterEnabled.Checked then iFilterEnabled.Strings[index] := 'true' else iFilterEnabled.Strings[index] := 'true';
    iFilterOriginal.Strings[index] := FilterOriginal.Text;
    iFilterReplacement.Strings[index] := FilterReplacement.Text;
    FilterList.Items.Strings[index] := FilterName.Text;
  end else begin
    ShowMessage('You need to select a filter if you want to edit it!');
  end;
end;

procedure TFilterForm.FilterListClick(Sender: TObject);
var
  index: Integer;
begin
  index := FilterList.ItemIndex;
  FilterName.Text := iFilterName.Strings[index];
  if iFilterEnabled.Strings[index] = 'true' then FilterEnabled.Checked := true else FilterEnabled.Checked := false;
  FilterOriginal.Text := iFilterOriginal.Strings[index];
  FilterReplacement.Text := iFilterReplacement.Strings[index];
end;

procedure TFilterForm.loadFLTClick(Sender: TObject);
begin
  ShowMessage('This list will be completed until the stable version(1.0)!');
end;

procedure TFilterForm.saveFLTClick(Sender: TObject);
begin
  ShowMessage('This list will be completed until the stable version(1.0)!');
end;

end.
