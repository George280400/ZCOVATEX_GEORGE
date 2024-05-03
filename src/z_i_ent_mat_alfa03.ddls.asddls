@AbapCatalog.sqlViewName: 'ZVB_ROOT_VIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Entrada material'
define root view Z_I_ENT_MAT_ALFA03 
as select from zent_mat_a03 as EntradaMateriales
composition [0..*] of Z_I_DET_ENT_MAT_ALFA03 as _DetallesEntrada
association [0..1] to zprovedores_a03          as _IDProveedor on EntradaMateriales.id_provedor = _IDProveedor.id_provedor
{
    key folio_entrada as FolioEntrada,
     id_provedor as IdProvedor,
    fecha_entrada as FechaEntrada,
    almacenista as Almacenista,
    _DetallesEntrada,
    _IDProveedor
    
}
