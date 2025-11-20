unit mainForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, bmiForm;
type
  TForm1 = class(TForm)
    buttonTampil1: TButton;
    inputNama: TEdit;
    inputKelas: TEdit;
    txtNama: TLabel;
    Label1: TLabel;
    inputAngka1: TEdit;
    inputAngka2: TEdit;
    outputHasil: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    judul: TLabel;
    Label5: TLabel;
    rbTambah: TRadioButton;
    rbKurang: TRadioButton;
    buttonKalkulator: TButton;
    buttonNext: TButton;
    rbKali: TRadioButton;
    rbBagi: TRadioButton;
    procedure buttonTampil1Click(Sender: TObject);
    procedure buttonKalkulatorClick(Sender: TObject);
    procedure buttonNextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  nama, kelas:String;
  hasil:Integer;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TForm1.buttonKalkulatorClick(Sender: TObject);
var
  a, b, hasil: Double;
begin
  a:= StrToFloat(inputAngka1.Text);
  b:= StrToFloat(inputAngka2.Text);

  if rbTambah.IsChecked then
    hasil:= a + b
  else if rbKurang.IsChecked then
    hasil := a - b
  else if rbKali.IsChecked then
    hasil := a * b
  else if rbBagi.IsChecked then
  begin
    if b = 0 then
    begin
      ShowMessage('gbs 0 oon');
    Exit;
    end;
    hasil := a / b
  end;


end;

procedure TForm1.buttonNextClick(Sender: TObject);
begin
  Form2.Show;
  Form1.Hide;
end;

procedure TForm1.buttonTampil1Click(Sender: TObject);
begin
  nama := inputNama.Text;
  kelas := inputKelas.Text;
  if (nama ='') or (kelas ='') then
    ShowMessage('ap cb')
  else
    ShowMessage('Saya ' + nama + ' Dari Kelas ' + kelas) ;
end;

end.
