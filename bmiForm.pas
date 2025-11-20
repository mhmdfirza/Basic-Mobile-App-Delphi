unit bmiForm;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Objects, FMX.Layouts;
type
  TForm2 = class(TForm)
    btnKembali: TButton;
    Label1: TLabel;
    inputTinggiBadan: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    inputBeratBadan: TEdit;
    outputBMI: TEdit;
    btnKalkulasi: TButton;
    mainLayoutBMI: TLayout;
    Rectangle1: TRectangle;
    procedure btnKembaliClick(Sender: TObject);
    procedure btnKalkulasiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

uses mainForm;

procedure TForm2.btnKalkulasiClick(Sender: TObject);
var
  t, b, bmi:Double;
  kategori: String;
begin

  if (inputTinggiBadan.Text='') or (inputBeratBadan.Text='') then
  begin
    ShowMessage('Tinggi dan Berat Badan harus diisi!');
    Exit;
  end;

  t:= StrToFloat(inputTinggiBadan.Text) / 100;
  b:= StrToFloat(inputBeratBadan.Text);

  if t=0 then
  begin
    ShowMessage('Gaada tingginya nih buset');
    Exit;
  end;

  bmi:=b/(t*t);


  if bmi < 18.5 then
    kategori := 'Terlalu Kurus'
  else if (bmi >= 18.5) and (bmi < 24.9) then
    kategori:= 'Ideal'
  else if (bmi >= 25) and (bmi < 29.9) then
    kategori:= 'Lumayan Gemuk'
  else
    kategori:='Obesitas';

  outputBMI.Text:= FormatFloat('0.# | ',bmi) + kategori;
end;

procedure TForm2.btnKembaliClick(Sender: TObject);
begin
  Form1.Show;
  Close;
end;

end.
