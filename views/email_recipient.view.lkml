view: email_recipient {
  sql_table_name: `de-ist-ve-bi.looker_test.email_recipient`
    ;;

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.Niederlassung ;;
  }

  dimension: responsible {
    type: string
    sql: ${TABLE}.Responsible ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
