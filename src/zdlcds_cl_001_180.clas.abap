CLASS zdlcds_cl_001_180 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZDLCDS_CL_001_180 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES tt_product TYPE TABLE OF zdlt_product180 WITH DEFAULT KEY.

    DATA(lt_product) = VALUE tt_product(
       (  product = 1 description = 'Caderno' prodduct_type = 1 authorization_group = 2 )
       (  product = 2 description = 'Lapis'   prodduct_type = 1 authorization_group = 2 )
       (  product = 3 description = 'Caneta'  prodduct_type = 1 authorization_group = 2 )
       (  product = 4 description = 'Celular' prodduct_type = 1 authorization_group = 2 )
    ).

    MODIFY zdlt_product180 FROM TABLE @lt_product.

     TYPES tt_order_it TYPE TABLE OF zdlt_order_it180 WITH DEFAULT KEY.

    DATA(lt_order_it) = VALUE tt_order_it(
       (  sales_order = 1 sales_order_item = 1 product = 1 product_quantity = 1 total_value = 10 )
       (  sales_order = 1 sales_order_item = 2 product = 2 product_quantity = 2 total_value = 20 )
       (  sales_order = 2 sales_order_item = 3 product = 3 product_quantity = 10 total_value = 30 )
       (  sales_order = 2 sales_order_item = 1 product = 4 product_quantity = 15 total_value = 1000 )
    ).

    MODIFY zdlt_order_it180 FROM TABLE @lt_order_it.

    out->write( 'Dados Inserirod scom sucesso' ).

  ENDMETHOD.
ENDCLASS.
