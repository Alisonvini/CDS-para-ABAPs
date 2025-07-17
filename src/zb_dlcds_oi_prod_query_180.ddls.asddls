@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Query - Visão Itens Pedido'
@Metadata.ignorePropagatedAnnotations: false
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Analytics.query: true
//Transação /nRSRT 2Czb_dlcds_oi_prod_Query_180
define view entity zb_dlcds_oi_prod_Query_180
  as select from ZI_DLCDS_OI_PROD_CUB01_180
{
      @EndUserText.label: 'Ordem Venda'
      @AnalyticsDetails.query.sortDirection: #ASC
  key SalesOrder,
      @EndUserText.label: 'Item Venda'
  key SalesOrderItem,
      @EndUserText.label: 'ID Produto'
      @AnalyticsDetails.query.axis: #ROWS
      @AnalyticsDetails.query.totals: #SHOW
      @AnalyticsDetails.query.display: #KEY_TEXT
      Product,
      @EndUserText.label: 'Produto'
      @AnalyticsDetails.query.axis: #COLUMNS
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
