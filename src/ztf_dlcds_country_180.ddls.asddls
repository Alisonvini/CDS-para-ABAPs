@EndUserText.label: 'Table Function - Countries'
@ClientHandling.type: #CLIENT_DEPENDENT
@ClientHandling.algorithm: #SESSION_VARIABLE
define table function ZTF_DLCDS_COUNTRY_180
  with parameters
    @Environment.systemField: #CLIENT
    p_sapclient : abap.clnt
returns
{
  mandt   : abap.clnt;
  Country : land1_gp;

}
implemented by method
  zcl_tf_country=>get_countries;