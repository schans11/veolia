view: auslastung_kpi_gs {
  sql_table_name: `de-ist-ve-bi.looker_test.00_Auslastung_KPI_GS`
    ;;

  dimension: ask {
    type: number
    sql: ${TABLE}.ASK ;;
  }

  dimension: gab {
    type: number
    sql: ${TABLE}.GAB ;;
  }

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.Niederlassung ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: sonstiges {
    type: number
    sql: ${TABLE}.Sonstiges ;;
  }

  dimension: umleerer {
    type: number
    sql: ${TABLE}.Umleerer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
