@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic - Products'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_DLCDS_PRODUCT_180
  as select from zdlt_product180
{
  key product             as Product,
      description         as Description,
      prodduct_type       as ProdductType,
      authorization_group as AuthorizationGroup,
      creation_date_time  as CreationDateTime
}
