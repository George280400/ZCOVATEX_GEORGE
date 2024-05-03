@EndUserText.label: 'Consumption Detalle Entrada Material'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity Z_C_DET_ENT_MAT_ALFA03
  as projection on Z_I_DET_ENT_MAT_ALFA03
{
  key FolioEntrada,
  key IdMaterial,
  _Material.Descripcion,
      Rollos,
      Metros,
      Peso,
      /* Associations */
      _EntradaMateriales : redirected to parent Z_C_ENT_MAT_ALFA03
            
      
      
}
