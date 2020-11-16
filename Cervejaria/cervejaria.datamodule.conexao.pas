unit cervejaria.datamodule.conexao;

interface

uses
  SysUtils, Classes, DB, IBDatabase;

type
  TdmdConexao = class(TDataModule)
    IBConexao: TIBDatabase;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function GerarId(pSeqName: string): integer;
    { Public declarations }
  end;

var
  dmdConexao: TdmdConexao;

implementation

{$R *.dfm}

procedure TdmdConexao.DataModuleCreate(Sender: TObject);
begin
  //Carregar Parametros De Conexão
  // Carregar arquivo ini!
end;

function TdmdConexao.GerarId(pSeqName: string): integer;
//var
//  lqrySequence: TFDQuery;
begin
{  lqrySequence := TFDQuery.Create(Self);
  try
    lqrySequence.Connection := FBConexao;
    lqrySequence.SQL.Text := 'SELECT GEN_ID('+pSeqName+',1) AS SEQ '+
                             'FROM RDB$DATABASE';
    lqrySequence.Open;
    Result := lqrySequence.FieldByName('SEQ').AsInteger;
    lqrySequence.Close;
  finally
    lqrySequence.Free;
  end; }
end;

end.
