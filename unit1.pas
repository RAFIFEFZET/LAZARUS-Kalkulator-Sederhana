unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    tambah: TButton;
    kurang: TButton;
    bagi: TButton;
    kali: TButton;
    hitung: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    edit_hasil: TEdit;
    procedure bagiClick(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure edit_hasilChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure hitungClick(Sender: TObject);
    procedure kaliClick(Sender: TObject);
    procedure kurangClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
  private

  public
    bilanganPertama, bilanganKedua, hasil: Extended;
    perintahTerakhir: string;


  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button3Click(Sender: TObject);
begin
  //edit_hasil.clear;
  edit_hasil.Text := edit_hasil.Text + TButton(Sender).caption;
end;

procedure TForm1.edit_hasilChange(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.hitungClick(Sender: TObject);
begin
  if perintahTerakhir = 'tambah' then
  begin
    bilanganKedua := StrToFloat(edit_hasil.Text);
    hasil := bilanganPertama + bilanganKedua;
    edit_hasil.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'kurang' then
  begin
    bilanganKedua := StrToFloat(edit_hasil.Text);
    hasil := bilanganPertama - bilanganKedua;
    edit_hasil.Text := FloatToStr(hasil);
  end;
  if perintahTerakhir = 'kali' then
  begin
    bilanganKedua := StrToFloat(edit_hasil.Text);
    hasil := bilanganPertama * bilanganKedua;
    edit_hasil.Text := FloatToStr(hasil);
  end;
   if perintahTerakhir = 'bagi' then
  begin
    bilanganKedua := StrToFloat(edit_hasil.Text);
    hasil := bilanganPertama / bilanganKedua;
    edit_hasil.Text := FloatToStr(hasil);
  end;
end;

procedure TForm1.kaliClick(Sender: TObject);
begin
  bilanganPertama := StrToFloat(edit_hasil.Text);
  edit_hasil.Clear;
  perintahTerakhir := 'kali';
end;

procedure TForm1.kurangClick(Sender: TObject);
begin
  bilanganPertama := StrToFloat(edit_hasil.Text);
  edit_hasil.Clear;
  perintahTerakhir := 'kurang';
end;

procedure TForm1.tambahClick(Sender: TObject);
begin
  bilanganPertama := StrToFloat(edit_hasil.Text);
  edit_hasil.Clear;
  perintahTerakhir := 'tambah';
end;

procedure TForm1.bagiClick(Sender: TObject);
begin
  bilanganPertama := StrToFloat(edit_hasil.Text);
  edit_hasil.Clear;
  perintahTerakhir := 'bagi';
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
   edit_hasil.clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  // If the current text is just a single zero, replace it with the clicked number
  if edit_hasil.Text = '0' then
    edit_hasil.Text := TButton(Sender).Caption
  else
    edit_hasil.Text := edit_hasil.Text + TButton(Sender).Caption;
end;


end.

