unit HellViewer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, SHDocVw, StdCtrls, sLabel, ExtCtrls, sPanel;

type
  THellViewerForm = class(TForm)
    HellBrowser: TWebBrowser;
    PanelLoading: TsPanel;
    LabelLoading: TsLabelFX;
    Timer: TTimer;
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HellViewerForm: THellViewerForm;
  url: string;
  xoff, yoff : integer;

implementation

{$R *.dfm}

procedure THellViewerForm.FormShow(Sender: TObject);
begin
  PanelLoading.Visible := true;
  LabelLoading.Visible := true;
//  HellBrowser.Navigate('http://bstudios.freehostia.com/viewer/?file=' + url + '&xoff=' + IntToStr(xoff) + '&yoff=' + IntToStr(yoff));
  HellBrowser.Navigate(url);
  Timer.Enabled := true;
end;

procedure THellViewerForm.TimerTimer(Sender: TObject);
begin
  PanelLoading.Visible := false;
  LabelLoading.Visible := false;
  Timer.Enabled := false;
end;

//VERY useless.
//not so useless
//okay maybe a bit

end.
