unit cervejaria.datamodule.cadastro.cerveja;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cervejaria.datamodule.cadastro.base, Provider, DBClient, DB,
  IBCustomDataSet, IBQuery;

type
  TdmdCadastroCerveja = class(TdmdCadastroBase)
    cdsPesquisaCVJ_ID: TIntegerField;
    cdsPesquisaCVJ_NOME: TStringField;
    cdsPesquisaMRC_ID: TIntegerField;
    cdsPesquisaCAT_ID: TIntegerField;
    cdsPesquisaMRC_CODIGO: TStringField;
    cdsPesquisaMRC_NOME: TStringField;
    cdsPesquisaCAT_NOME: TStringField;
    cdsCadastroCVJ_ID: TIntegerField;
    cdsCadastroCVJ_NOME: TStringField;
    cdsCadastroMRC_ID: TIntegerField;
    cdsCadastroCAT_ID: TIntegerField;
  private
    { Private declarations }
  public
    function CampoId: String; override;
    function SequenceName: string; override;
    { Public declarations }
  end;

var
  dmdCadastroCerveja: TdmdCadastroCerveja;

implementation

{$R *.dfm}

{ TdmdCadastroCerveja }

function TdmdCadastroCerveja.CampoId: String;
begin
  Result := 'CVJ_ID';
end;

function TdmdCadastroCerveja.SequenceName: string;
begin
  Result := 'SEQ_CVJ'
end;

end.
