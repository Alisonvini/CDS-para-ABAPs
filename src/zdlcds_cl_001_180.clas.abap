CLASS zdlcds_cl_001_180 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdlcds_cl_001_180 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    TYPES tt_product TYPE TABLE OF zdlt_product180 WITH DEFAULT KEY.

    DATA(lt_product) = VALUE tt_product(
       (  product = 1 description = 'Caderno' prodduct_type = 1 authorization_group = 2 )
       (  product = 2 description = 'Lapis'   prodduct_type = 1 authorization_group = 2 )
       (  product = 3 description = 'Caneta'  prodduct_type = 1 authorization_group = 2 )
       (  product = 4 description = 'Celular' prodduct_type = 1 authorization_group = 2 )
    ).

    MODIFY zdlt_product180 FROM TABLE @lt_product.

    TYPES tt_order TYPE TABLE OF zdlcdst_order180 WITH DEFAULT KEY.

    DATA(lt_order) = VALUE tt_order(
     (  sales_order = 1 creation_date = sy-datum creation_user = sy-uname )
     (  sales_order = 2 creation_date = sy-datum creation_user = sy-uname )

  ).

    MODIFY zdlcdst_order180 FROM TABLE @lt_order.

    TYPES tt_order_it TYPE TABLE OF zdlt_order_it180 WITH DEFAULT KEY.

    DATA(lt_order_it) = VALUE tt_order_it(
       (  sales_order = 1 sales_order_item = 1 product = 1 product_quantity = 1  product_unity = 'KI' total_value = 10   currency = 'EUR' )
       (  sales_order = 1 sales_order_item = 2 product = 2 product_quantity = 2  product_unity = 'KI' total_value = 20   currency = 'EUR' )
       (  sales_order = 2 sales_order_item = 3 product = 3 product_quantity = 10 product_unity = 'KI' total_value = 30   currency = 'EUR' )
       (  sales_order = 2 sales_order_item = 1 product = 4 product_quantity = 15 product_unity = 'KI' total_value = 1000 currency = 'EUR' )
    ).

    MODIFY zdlt_order_it180 FROM TABLE @lt_order_it.

    out->write( 'Dados Inserirod scom sucesso' ).

  ENDMETHOD.
ENDCLASS.
