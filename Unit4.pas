unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, sEdit, sLabel, sListBox;

type
  TAdvancedPacketEditor = class(TForm)
    CodeMemo: TMemo;
    MainMenu1: TMainMenu;
    Prject1: TMenuItem;
    New1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    SaveAs1: TMenuItem;
    Compile1: TMenuItem;
    HELLBinary1: TMenuItem;
    RegularHELL1: TMenuItem;
    OpenHProject: TOpenDialog;
    SaveHProject: TSaveDialog;
    SaveHScript: TSaveDialog;
    TextProjectName: TsEdit;
    sListBox1: TsListBox;
    sLabelFX1: TsLabelFX;
    sLabelFX2: TsLabelFX;
    sLabelFX3: TsLabelFX;
    sLabelFX4: TsLabelFX;
    sListBox2: TsListBox;
    sListBox3: TsListBox;
    procedure WriteProject(fname: string; name: string; data: string);
    procedure ClearCurrentProject;
    procedure OpenProject(fname: string);
    procedure New1Click(Sender: TObject);
    procedure Save1Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure SaveAs1Click(Sender: TObject);
    procedure RegularHELL1Click(Sender: TObject);
    procedure HELLBinary1Click(Sender: TObject);
    //procedure HELLBinary1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdvancedPacketEditor: TAdvancedPacketEditor;
  projectName: String;
  projectFile: String;

implementation

uses Unit1;

{$R *.dfm}

function Compile: string;
var
  line, return: string;
  i, t, max, ln: Integer;
  notRemoving: Boolean;
begin
  i := 0;
  max := AdvancedPacketEditor.CodeMemo.Lines.Count;
  return := '';
  notRemoving := false;
  while i <= max do begin
    line := AdvancedPacketEditor.CodeMemo.Lines.Strings[i];
    t := 1;
    ln := Length(line);
    while t <= ln do begin
      if line[t] = '"' then begin
        if notRemoving = true then begin
          notRemoving := false;
        end else if notRemoving = false then begin
          notRemoving := true;
        end;
      end;
      if notRemoving = true then begin
        if line[t] <> '"' then return := return + line[t];
      end else begin
        if (line[t] <> ' ') and (line[t] <> '"') then return := return + line[t];
      end;
      t := t + 1;
    end;
    i := i + 1;
  end;
  Result := return;
end;

function Encrypt(data, fname: string): boolean;
var
  f: file;
  i, offset, new: integer;
  bytes: array of Byte;
begin
  SetLength(bytes, Length(data) + 5);
  bytes[0] := $FF;
  bytes[1] := $00;
  bytes[2] := $FF;
  bytes[3] := $EE;
  bytes[4] := $AA;
  offset := Random(256);
  bytes[5] := offset;
  i := 1;
  while (i <= Length(data)) do begin
    bytes[i + 5] := Ord(data[i]);
    new := bytes[i + 5] + offset;
    if new > 256 then new := new - 256;
    bytes[i + 5] := new;
    i := i + 1;
  end;
  //Write to file!
  AssignFile(f, fname);
  Rewrite(f, 1);
  BlockWrite(f, bytes, Length(bytes));
  CloseFile(f);
  Result := true;
end;

procedure TAdvancedPacketEditor.WriteProject(fname: string; name: string; data: string);
var
 f: TextFile;
begin
  DeleteFile(fname);
  AssignFile(f, fname);
  Rewrite(f);
  Writeln(f, name);
  Write(f, data);
  CloseFile(f);
end;

procedure TAdvancedPacketEditor.ClearCurrentProject;
begin
  CodeMemo.Text := '';
  projectName := '';
  TextProjectName.Text := '';
end;

procedure TAdvancedPacketEditor.OpenProject(fname: string);
var
  f: TextFile;
  line: string;
begin
  AssignFile(f, fname);
  Reset(f);
  Readln(f, projectName);
  TextProjectName.Text := projectName;
  Readln(f, line);
  CodeMemo.Lines.Add(line);
  while not Eof(f) do begin
    Readln(f, line);
    CodeMemo.Lines.Add(line);
  end;
  CloseFile(f);
  projectFile := fname;
end;

procedure TAdvancedPacketEditor.New1Click(Sender: TObject);
var
 answer: Integer;
begin
 if CodeMemo.Text <> '' then begin
   answer := MessageDlg('Do you wish to save your current project?', mtConfirmation, [mbYes, mbNo], 0);
   if answer = mrNo then begin
     CodeMemo.Text := '';
   end else if answer = mrYes then begin
     if projectName = '' then begin
       projectName := InputBox('Define Project Name', 'Appearently your project does not have a name yet. (Project name does not effect the file name)Please write the project name you want:', 'New Project');
       if projectName <> '' then begin
         if SaveHProject.Execute then begin
           projectFile := SaveHProject.FileName;
           WriteProject(projectFile, projectName, CodeMemo.Text);
           TextProjectName.Text := projectName;
           ClearCurrentProject;
         end else begin
           projectName := '';
         end;
       end;
     end else begin
       WriteProject(projectFile, projectName, CodeMemo.Text);
       ClearCurrentProject;
     end;
   end;
 end else if CodeMemo.Text = '' then begin
   ClearCurrentProject;
 end;
end;

procedure TAdvancedPacketEditor.Save1Click(Sender: TObject);
begin
 if CodeMemo.Text <> '' then begin
   if projectName = '' then begin
     projectName := InputBox('Define Project Name', 'Appearently your project does not have a name yet. (Project name does not effect the file name)Please write the project name you want:', 'New Project');
     if projectName <> '' then begin
       if SaveHProject.Execute then begin
         projectFile := SaveHProject.FileName;
         WriteProject(projectFile, projectName, CodeMemo.Text);
         TextProjectName.Text := projectName;
       end else begin
         projectName := '';
       end;
     end;
   end else begin
     WriteProject(projectFile, projectName, CodeMemo.Text);
   end;
 end;
end;

procedure TAdvancedPacketEditor.Open1Click(Sender: TObject);
var
  answer: Integer;
begin
  if CodeMemo.Text <> '' then begin
    answer := MessageDlg('Do you wish to save your current project?', mtConfirmation, [mbYes, mbNo], 0);
    if answer = mrYes then Save1.Click;
  end;
  if OpenHProject.Execute then begin
    ClearCurrentProject;
    OpenProject(OpenHProject.FileName);
  end;
end;

procedure TAdvancedPacketEditor.SaveAs1Click(Sender: TObject);
begin
 if (projectName = '') and (projectFile = '') then begin
   Save1.Click;
 end else begin
   projectName := InputBox('Define Project Name', 'Please write the new name for your project:', 'New Project');
   if projectName <> '' then begin
     if SaveHProject.Execute then begin
       projectFile := SaveHProject.FileName;
       WriteProject(projectFile, projectName, CodeMemo.Text);
       TextProjectName.Text := projectName;
     end;
   end;
 end;
end;

procedure TAdvancedPacketEditor.RegularHELL1Click(Sender: TObject);
var
  data, fname: string;
  f: TextFile;
begin
  if SaveHScript.Execute then begin
    fname := SaveHScript.FileName;
    data := Compile;
    AssignFile(f, fname);
    Rewrite(f);
    Write(f, data);
    CloseFile(f);
    Main.LoadScript(fname);
  end;
end;

{procedure TAdvancedPacketEditor.HELLBinary1Click(Sender: TObject);
var
  data, fname: string;
begin
  if SaveHScript.Execute then begin
    fname := SaveHScript.FileName;
    data := Compile;
    Encrypt(data, fname);
  end;
end; }

procedure TAdvancedPacketEditor.HELLBinary1Click(Sender: TObject);
var
  data, fname: string;
  f: TextFile;
begin
  if SaveHScript.Execute then begin
    fname := SaveHScript.FileName;
    data := Compile;
    AssignFile(f, fname);
    Rewrite(f);
    Write(f, data);
    CloseFile(f);
  end;
end;

end.
