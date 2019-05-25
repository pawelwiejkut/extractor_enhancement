class zcl_im_0bpartner_attr_bs definition
  public
  final
  create public .

  public section.

    interfaces if_ex_rsu5_sapi_badi .
  protected section.
  private section.
endclass.



class zcl_im_0bpartner_attr_bs implementation.


  method if_ex_rsu5_sapi_badi~data_transform.

    check i_datasource = '0BPARTNER_ATTR'.

    data: lt_tab type standard table of bus000_bw.

    lt_tab = corresponding #( c_t_data ).

    loop at lt_tab reference into data(lr_tab).
      if lr_tab->business_status = 1.
        lr_tab->business_status = 'A'.
      endif.
    endloop.

    c_t_data = lt_tab.

  endmethod.


  method if_ex_rsu5_sapi_badi~hier_transform.
  endmethod.
endclass.
