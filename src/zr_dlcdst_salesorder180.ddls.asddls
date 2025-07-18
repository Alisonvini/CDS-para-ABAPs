@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Pedido'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define root view entity Zr_DLCDST_salesorder180
  as select from zi_dlcdst_order180
  composition [0..*] of zr_dlcds_salesorder_it180 as _Item
{
  key SalesOrder,
      CreationDate,
      CreationUser,
      
      _Item
}
