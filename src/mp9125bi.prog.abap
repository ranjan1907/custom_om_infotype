*&---------------------------------------------------------------------*
*& Report  MP9125BI                                                    *
*&                                                                     *
*&---------------------------------------------------------------------*
*&                                                                     *
*&                                                                     *
*&---------------------------------------------------------------------*

PROGRAM mp9125bi.

TABLES: p9125.

FORM batch_input USING VALUE(bi_fcode)
                       VALUE(bi_wplog).

  FIELD-SYMBOLS: <bi_wplog> TYPE p9125.
  ASSIGN bi_wplog TO <bi_wplog> CASTING.
  p9125 = <bi_wplog>.
  PERFORM fill_field(rhaltd00) USING
  'P9125-LAND1'
  p9125-land1.
  PERFORM fill_field(rhaltd00) USING
  'P9125-PSTLZ'
  p9125-pstlz.
  PERFORM fill_field(rhaltd00) USING
  'P9125-ORT02'
  p9125-ort02.
  PERFORM fill_field(rhaltd00) USING
  'P9125-ORT01'
  p9125-ort01.
  PERFORM fill_field(rhaltd00) USING
  'P9125-STRAS'
  p9125-stras.
  PERFORM fill_field(rhaltd00) USING
  'P9125-NAME2'
  p9125-name2.
**PERFORM FILL_FIELD(RHALTD00) USING 'P9125-DUMMY' P9125-DUMMY.

  PERFORM fill_okcode(rhaltd00) USING 'U'.

ENDFORM.
