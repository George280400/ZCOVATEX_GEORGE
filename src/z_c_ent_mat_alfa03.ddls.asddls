@EndUserText.label: 'Consumption Entrada de Materiales'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity Z_C_ENT_MAT_ALFA03
  as projection on Z_I_ENT_MAT_ALFA03
{
  key FolioEntrada,
      IdProvedor,
      FechaEntrada,
      Almacenista,
      /* Associations */
      _DetallesEntrada : redirected to composition child Z_C_DET_ENT_MAT_ALFA03,
      _IDProveedor.nombre as Nombre
}
