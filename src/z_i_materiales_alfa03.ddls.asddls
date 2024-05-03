@AbapCatalog.sqlViewName: 'ZVB_I_MATERIALES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Materiales'
define view Z_I_MATERIALES_ALFA03 as select from zmateriales_a03
{
    key id_material as IdMaterial,
    descripcion as Descripcion,
    color as Color,
    rollos as Rollos
}
