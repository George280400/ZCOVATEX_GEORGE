@AbapCatalog.sqlViewName: 'ZVB_I_PROVEDORES'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Provedores'
define view Z_I_PROVEDORES_ALFA03 as select from zprovedores_a03 as Provedores
{
    key id_provedor as IdProvedor,
    nombre as Nombre,
    tipo_persona as TipoPersona,
    rfc as Rfc,
    correo as Correo,
    telefono as Telefono,
    direccion as Direccion
}
