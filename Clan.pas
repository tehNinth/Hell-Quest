unit Clan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sButton, OleCtrls, SHDocVw;

type
  TClanForm = class(TForm)
    WebBrowser1: TWebBrowser;
    ButtonLogin: TsButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClanForm: TClanForm;

implementation

uses Unit1;
{$R *.dfm}

procedure TClanForm.FormCreate(Sender: TObject);
begin
 WebBrowser1.Navigate('about:blank');
end;

procedure TClanForm.ButtonLoginClick(Sender: TObject);
var
 charname: String;
begin
 charname := InputBox('Character Name', 'Please write the name of the character:', 'artix');
 WebBrowser1.Navigate('http://aq.com/aw-character.asp?id=' + charname);
end;

end.


