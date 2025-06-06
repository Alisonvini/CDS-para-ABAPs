@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption - Product'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_DLCDS_PRODUCT_180
  as projection on ZI_DLCDS_PRODUCT_180
{
      @EndUserText.label: 'Produto'
      @UI.lineItem: [{ position: 10 }]
      @UI.selectionField: [{ position: 10 }]
  key Product,
      Description,
      ProdductType,
      AuthorizationGroup,
      CreationDateTime,
      Case1,
      Case2
}
