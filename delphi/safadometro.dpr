program safadometro;

uses
  Vcl.Forms,
  U_safadometro in 'U_safadometro.pas' {paginaInicial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TpaginaInicial, paginaInicial);
  Application.Run;
end.
