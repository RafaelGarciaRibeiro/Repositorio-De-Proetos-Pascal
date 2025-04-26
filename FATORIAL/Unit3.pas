unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    lb_fatorial: TLabel;
    ed_fatorialnumero: TEdit;
    Memo1: TMemo;
    btn_calcular: TButton;
    procedure btn_calcularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btn_calcularClick(Sender: TObject);
var
  fatorial, numero : integer;
  calculo : string;
begin
  numero := strtoint (ed_fatorialnumero.Text);
  fatorial := 1;

  if strtoint(ed_fatorialnumero.Text) <> 0  then
  begin
    while numero > 1 do
    begin
      //calculo
      calculo := calculo + inttostr (numero) + 'X';
      //ex: aq vai calcular o valor 5x1, que no final o fatorial vai valer 5
      // e o numero vai passar a vale 4, vai se repetir novamente
      fatorial := numero * fatorial;
      numero := numero - 1;
    end
  end
  else
     Showmessage('Instira um Valor Válido!');
  //resultado final
  calculo := calculo +'1 = ';
  Memo1.Lines.Add ((ed_fatorialnumero.Text) + ('!= ') + calculo + inttostr(fatorial));
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
   Memo1.Clear;
end;

end.
