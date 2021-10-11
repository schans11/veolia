view: frachtbeauftragungen_u_kosten {
  sql_table_name: `de-ist-ve-bi.looker_test.Frachtbeauftragungen_u_Kosten`
    ;;

  dimension: fi_nr {
    type: number
    sql: ${TABLE}.FI_NR ;;
  }

  dimension: frachtkosten {
    type: number
    sql: ${TABLE}.Frachtkosten ;;
  }

  dimension: frachtpreis_status {
    type: string
    sql: ${TABLE}.Frachtpreis_Status ;;
  }

  dimension: ladeort_kz {
    type: string
    sql: ${TABLE}.Ladeort_Kz ;;
  }

  dimension: Ladeort_Location {
    type: location
    sql_latitude: ${TABLE}.Ladeort_Lat ;;
    sql_longitude: ${TABLE}.Ladeort_Long ;;
  }


  dimension: ladeort_ort {
    type: string
    sql: ${TABLE}.Ladeort_Ort ;;
  }

  dimension: lfl_nr {
    type: number
    sql: ${TABLE}.LFL_NR ;;
  }

  dimension_group: lieferdatum {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.Lieferdatum ;;
  }

  dimension: lieferort_kz {
    type: string
    sql: ${TABLE}.Lieferort_Kz ;;
  }

  dimension: Lieferort_Location {
    type: location
    sql_latitude: ${TABLE}.Lieferort_Lat ;;
    sql_longitude: ${TABLE}.Lieferort_Long ;;
      }

  dimension: lieferort_ort {
    type: string
    sql: ${TABLE}.Lieferort_Ort ;;
  }

  dimension: route {
    type: string
    sql: ${TABLE}.Route ;;
  }

  dimension: transportunternehmer {
    type: string
    sql: ${TABLE}.Transportunternehmer ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
