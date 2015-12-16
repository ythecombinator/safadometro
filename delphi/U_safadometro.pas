unit U_safadometro;
// David Sim�es
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TpaginaInicial = class(TForm)
    txtNome: TEdit;
    lblNome: TLabel;
    lblDataNascimento: TLabel;
    txtDiaNascimento: TEdit;
    bntCalcular: TButton;
    txtMesNascimento: TEdit;
    txtAnoNascimento: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    lblSafado: TLabel;
    lblAnjo: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lblNomeResultado: TLabel;
    Image1: TImage;
    procedure bntCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  paginaInicial: TpaginaInicial;

implementation

{$R *.dfm}

procedure TpaginaInicial.bntCalcularClick(Sender: TObject);
var
  //n�o toque magico
  somatorio, ano, dia,mes: Integer;
  anjo, safado: double;
  i, n: Integer;
  nome: String;
begin
  if (txtDiaNascimento.Text = '') or (txtMesNascimento.Text = '') or (txtAnoNascimento.Text = '') then
  begin
    ShowMessage('Digite os dados pedidos!');
  end;

  Image1.Hide;
  nome := (txtNome.Text);
  dia := strtoint(txtDiaNascimento.Text);
  mes := strtoint(txtMesNascimento.Text);
  ano:= strtoint(txtAnoNascimento.Text);
  n := (mes);
  somatorio := 0;
  for i := n downto 0 do
  begin
    somatorio := somatorio + n;
  end;


  safado := (somatorio + (ano/100)+(50-dia));
  anjo   := 100-safado;


  lblAnjo.Caption := floattostr(anjo)+ '%';
  lblSafado.Caption := floattostr (safado)+ '%';
  lblNomeResultado.Caption := (txtNome.Text);


end;

end.
