view: t_berechtigung {
  sql_table_name: `de-ist-ve-bi.looker_test.t_Berechtigung`
    ;;

  dimension: bereich {
    type: string
    sql: ${TABLE}.Bereich ;;
  }

  dimension: betrieb {
    type: number
    sql: ${TABLE}.Betrieb ;;
  }

  dimension: bkrs {
    type: number
    sql: ${TABLE}.BKRS ;;
  }

  dimension: eingerichtet_am {
    type: string
    sql: ${TABLE}.Eingerichtet_am ;;
  }

  dimension: funktion {
    type: string
    sql: ${TABLE}.Funktion ;;
  }

  dimension: genehmigt_von {
    type: string
    sql: ${TABLE}.genehmigt_von ;;
  }

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.Niederlassung ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.Region ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}.User ;;

  }

  measure: count {
    type: count
    drill_fields: []
  }
}
