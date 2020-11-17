unit cervejaria.datamodule.conexao;

interface

uses
  SysUtils, Classes, DB, IBDatabase, IBQuery;

type
  TdmdConexao = class(TDataModule)
    IBConexao: TIBDatabase;
    IBTransaction1: TIBTransaction;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function GerarId(pSeqName: string): integer;
    procedure Commit;
    { Public declarations }
  end;

var
  dmdConexao: TdmdConexao;

implementation

{$R *.dfm}

procedure TdmdConexao.Commit;
begin
  if IBTransaction1.InTransaction then
    IBTransaction1.CommitRetaining;
end;

procedure TdmdConexao.DataModuleCreate(Sender: TObject);
begin
  //Carregar Parametros De Conexão
  // Carregar arquivo ini!
end;

function TdmdConexao.GerarId(pSeqName: string): integer;
var
  lqrySequence: TIBQuery;
begin
  lqrySequence := TIBQuery.Create(Self);
  try
    lqrySequence.Database := IBConexao;
    lqrySequence.SQL.Text := 'SELECT GEN_ID('+pSeqName+',1) AS SEQ '+
                             'FROM RDB$DATABASE';
    lqrySequence.Open;
    Result := lqrySequence.FieldByName('SEQ').AsInteger;
    lqrySequence.Close;
  finally
    lqrySequence.Free;
  end;
end;

end.
