@AbapCatalog.sqlViewName: 'ZVB_DET_ENT_MAT'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Detalle Entrada de material'
define view Z_I_DET_ENT_MAT_ALFA03 
as select from zdet_ent_mat_a03 as DetallesEntrada
association to parent Z_I_ENT_MAT_ALFA03 as _EntradaMateriales on $projection.FolioEntrada = _EntradaMateriales.FolioEntrada
association [0..1] to Z_I_MATERIALES_ALFA03 as _Material on DetallesEntrada.id_material = _Material.IdMaterial
{
    key folio_entrada as FolioEntrada,
    key id_material as IdMaterial,
    _Material.Descripcion,
    rollos as Rollos,
    metros as Metros,
    peso as Peso,
    _EntradaMateriales,
    _Material
    
}
