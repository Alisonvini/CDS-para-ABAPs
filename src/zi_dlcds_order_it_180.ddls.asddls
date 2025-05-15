@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Order Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DLCDS_ORDER_IT_180
  as select from zdlt_order_it180
{
  key sales_order       as SalesOrder,
  key sales_order_item  as SalesOrderItem,
      product           as Product,
      @Semantics.quantity.unitOfMeasure : 'ProductUnity'
      product_quantity  as ProductQuantity,
      product_unity     as ProductUnity,
      @Semantics.amount.currencyCode : 'Currency'
      total_value       as TotalValue,
      currency          as Currency,
      creation_date     as CreationDate,
      creation_user     as CreationUser,
      last_change_by    as LastChangeBy,
      last_changed_from as LastChangedFrom
}
