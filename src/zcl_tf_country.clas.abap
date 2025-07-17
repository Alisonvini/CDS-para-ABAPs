CLASS zcl_tf_country DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_amdp_marker_hdb.

    CLASS-METHODS get_countries FOR TABLE FUNCTION ztf_dlcds_country_180.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_tf_country IMPLEMENTATION.
  METHOD get_countries
  BY DATABASE FUNCTION FOR HDB
  LANGUAGE SQLSCRIPT
  OPTIONS READ-ONLY
  USING i_country.

  return
  SELECT :p_sapclient as mandt,
  country
  from I_Country
  where mandt = :p_sapclient;

  ENDMETHOD.
ENDCLASS.
