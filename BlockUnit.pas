unit BlockUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TBlock = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Block: TBlock;

implementation

uses Unit1;

{$R *.dfm}

procedure TBlock.FormCreate(Sender: TObject);
begin
  Block.Top := 0;
  Block.Left := 0;
  Main.Top := 0;
  Main.Left := 0;
  Block.ClientWidth := 1170;
  Block.ClientHeight := 714;
end;

end.
