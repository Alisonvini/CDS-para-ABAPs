@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Item do Pedido'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zr_dlcds_salesorder_it180
  as select from ZI_DLCDS_ORDER_IT_180
  association to parent Zr_DLCDST_salesorder180 as _Header on $projection.SalesOrder = _Header.SalesOrder
{
  key SalesOrder,
  key SalesOrderItem,
      Product,
      ProductQuantity,
      ProductUnity,
      TotalValue,
      Currency,
      CreationDate,
      CreationUser,
      LastChangeBy,
      LastChangedFrom,
      
      _Header
}
