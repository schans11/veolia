view: t_kalender_gs {
  sql_table_name: `de-ist-ve-bi.looker_test.t_Kalender_GS`
    ;;

  dimension_group: datum {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DATUM ;;
  }

  dimension: feiertag {
    type: string
    sql: ${TABLE}.FEIERTAG ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: SOLL_AT_MONAT {
    type: count_distinct
    sql: ${datum_date} ;;
  }
}
