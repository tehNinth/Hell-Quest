unit SWFMenu;

//IGNORE THIS FORM!

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, sButton, sEdit, sLabel;

type
  TSWFMenuForm = class(TForm)
    sLabelFX1: TsLabelFX;
    TextSWF: TsEdit;
    ButtonLoadArmor: TsButton;
    ButtonLoadWeapon: TsButton;
    sLabelFX2: TsLabelFX;
    sPanel1: TsPanel;
    sLabelFX3: TsLabelFX;
    TextNewName: TsEdit;
    ButtonChangeName: TsButton;
    sLabelFX4: TsLabelFX;
    sLabelFX5: TsLabelFX;
    TextMessageType: TsEdit;
    ButtonSendMessage: TsButton;
    sLabelFX6: TsLabelFX;
    TextMessage: TsEdit;
    sLabelFX7: TsLabelFX;
    sLabelFX8: TsLabelFX;
    TextOwner: TsEdit;
    TextID: TsEdit;
    sLabelFX9: TsLabelFX;
    TextMessageBox: TsEdit;
    ButtonMessageBox: TsButton;
    ButtonLevelUp: TsButton;
    procedure ButtonLoadWeaponClick(Sender: TObject);
    procedure ButtonLoadArmorClick(Sender: TObject);
    procedure ButtonChangeNameClick(Sender: TObject);
    procedure ButtonSendMessageClick(Sender: TObject);
    procedure ButtonLevelUpClick(Sender: TObject);
    procedure ButtonMessageBoxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SWFMenuForm: TSWFMenuForm;

//I told you to ignore it :P Why are you still reading?

implementation

uses Unit1;

{$R *.dfm}

procedure TSWFMenuForm.ButtonChangeNameClick(Sender: TObject);
begin
  //Main.Game.CallFunction('<invoke name="ChangeName" returntype="void"><arguments><string>' + TextNewName.Text + '</string></arguments></invoke>');
end;

procedure TSWFMenuForm.ButtonLevelUpClick(Sender: TObject);
begin
  //Main.Game.CallFunction('<invoke name="LevelUp" returntype="void"></invoke>');
end;

procedure TSWFMenuForm.ButtonLoadArmorClick(Sender: TObject);
begin
  //Main.Game.CallFunction('<invoke name="ChangeArmor" returntype="void"><arguments><string>' + TextSWF.Text + '</string></arguments></invoke>');
end;

procedure TSWFMenuForm.ButtonLoadWeaponClick(Sender: TObject);
begin
  //Main.Game.CallFunction('<invoke name="ChangeWeapon" returntype="void"><arguments><string>' + TextSWF.Text + '</string></arguments></invoke>');
end;

procedure TSWFMenuForm.ButtonMessageBoxClick(Sender: TObject);
begin
  //Main.Game.CallFunction('<invoke name="MessageBox" returntype="void"><arguments><string>' + TextMessageBox.Text + '</string></arguments></invoke>');
end;

procedure TSWFMenuForm.ButtonSendMessageClick(Sender: TObject);
begin
  //Main.Game.CallFunction('<invoke name="PushMessage" returntype="void"><arguments><string>' + TextMessageType.Text + '</string><string>' + TextMessage.Text + '</string><string>' + TextOwner.Text + '</string><string>' + TextID.Text + '</string></arguments></invoke>');
end;

end.
