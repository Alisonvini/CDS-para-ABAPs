@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite - Item and Product'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zi_dlcds_orderitem_product_180
  as select from ZI_DLCDS_ORDER_IT_180
  association [1..1] to ZI_DLCDS_PRODUCT_180 as _Product on $projection.Product = _Product.Product
{
      @EndUserText.label: 'Ordem Venda'
  key SalesOrder,
  key SalesOrderItem,
      Product,
      _Product.Description,
      ProductQuantity,
      ProductUnity,
      TotalValue,
      Currency,
      CreationDate,
      CreationUser,
      LastChangeBy,
      LastChangedFrom,
      _Product
}
