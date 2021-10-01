view: fahrzeugauslastung_kpi {
  sql_table_name: `looker_test.00_1_Fahrzeugauslastung_KPI`
    ;;

  dimension: anzahl_behaelter {
    type: number
    sql: ${TABLE}.Anzahl_Behaelter ;;
  }

  dimension_group: erstzulassung {
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
    sql: ${TABLE}.ERSTZULASSUNG ;;
  }

  dimension: fa_fzg_sap_code {
    type: string
    sql: ${TABLE}.FA_FZG_SAP_CODE ;;
  }

  dimension: fahrzeugtyp {
    type: string
    sql: ${TABLE}.Fahrzeugtyp ;;
  }

  dimension: fi_bk_nr {
    type: number
    sql: ${TABLE}.FI_BK_NR ;;
  }

  dimension: fi_region {
    type: string
    sql: ${TABLE}.fi_region ;;
  }

  dimension: ist_at_monat {
    type: number
    sql: ${TABLE}.IST_AT_MONAT ;;
  }

  dimension: min_gefahren_monat {
    type: number
    sql: ${TABLE}.MIN_GEFAHREN_monat ;;
  }

  dimension_group: monaten {
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
    sql: ${TABLE}.Monaten ;;
  }

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.Niederlassung ;;
  }

  dimension: profitcenter {
    type: string
    sql: ${TABLE}.PROFITCENTER ;;
  }

  dimension: profitcenter_bezeichnung {
    type: string
    sql: ${TABLE}.PROFITCENTER_BEZEICHNUNG ;;
  }

  dimension: rel_auslastung {
    type: number
    sql: ${TABLE}.REL_AUSLASTUNG ;;
  }

  dimension: rel_auslastung_2 {
    type: number
    sql: ${TABLE}.REL_AUSLASTUNG_2 ;;
  }

  dimension: reparaturkostengesamt {
    type: number
    sql: ${TABLE}.REPARATURKOSTENGESAMT ;;
  }

  dimension: soll_at_monat {
    type: number
    sql: ${TABLE}.SOLL_AT_MONAT ;;
  }

  dimension: std_gefahren_monat {
    type: number
    sql: ${TABLE}.Std_GEFAHREN_monat ;;
  }

  dimension: zielwert {
    type: number
    sql: ${TABLE}.Zielwert ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
