@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Cube - Purchase Item View'
@Metadata.ignorePropagatedAnnotations: false
@Analytics.dataCategory: #CUBE
define view entity ZI_DLCDS_OI_PROD_CUB01_180
  as select from zi_dlcds_orderitem_product_180
{
      @EndUserText.label: 'Ordem Venda'
  key SalesOrder,
      @EndUserText.label: 'Item Venda'
  key SalesOrderItem,
      @EndUserText.label: 'ID Produto'
      Product,
      @EndUserText.label: 'Descrição'
      Description,
      @EndUserText.label: 'QTD Produto'
      @Aggregation.default: #SUM
      ProductQuantity,
      @EndUserText.label: 'Unid Med'
      ProductUnity,
      @EndUserText.label: 'Valor Total'
      @Aggregation.default: #SUM
      TotalValue,
      @EndUserText.label: 'Moeda'
      Currency,

      /* Associations */
      _Product
}
