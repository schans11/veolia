view: c_dwh_navigator_sapkosten {
  sql_table_name: `de-ist-ve-bi.looker_test.c_dwh_navigator_sapkosten`
    ;;

  dimension: bukr {
    type: number
    sql: ${TABLE}.BUKR ;;
  }

  dimension: bukr_bezeichnung {
    type: string
    sql: ${TABLE}.BUKR_BEZEICHNUNG ;;
  }

  dimension: davonaufbau {
    type: string
    sql: ${TABLE}.DAVONAUFBAU ;;
  }

  dimension: davonfahrgestell {
    type: string
    sql: ${TABLE}.DAVONFAHRGESTELL ;;
  }

  dimension: davonschuettung {
    type: string
    sql: ${TABLE}.DAVONSCHUETTUNG ;;
  }

  dimension: davonunfall {
    type: string
    sql: ${TABLE}.DAVONUNFALL ;;
  }

  dimension: diesel {
    type: string
    sql: ${TABLE}.DIESEL ;;
  }

  dimension: dieselkfzstunden {
    type: string
    sql: ${TABLE}.DIESELKFZSTUNDEN ;;
  }

  dimension: dieselpro100_km {
    type: string
    sql: ${TABLE}.DIESELPRO100KM ;;
  }

  dimension: einsatzstunden {
    type: string
    sql: ${TABLE}.EINSATZSTUNDEN ;;
  }

  dimension: fahrzeugid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FAHRZEUGID ;;
  }

  dimension: gefahrenekilometer {
    type: string
    sql: ${TABLE}.GEFAHRENEKILOMETER ;;
  }

  dimension: innenauftrag {
    type: string
    sql: ${TABLE}.INNENAUFTRAG ;;
  }

  dimension: jahr {
    type: number
    sql: ${TABLE}.JAHR ;;
  }

  dimension: kapazitaet {
    type: string
    sql: ${TABLE}.KAPAZITAET ;;
  }

  dimension: kommentar {
    type: string
    sql: ${TABLE}.KOMMENTAR ;;
  }

  dimension: kostenstelle {
    type: string
    sql: ${TABLE}.KOSTENSTELLE ;;
  }

  dimension: kostenstelle_beschreibung {
    type: string
    sql: ${TABLE}.KOSTENSTELLE_BESCHREIBUNG ;;
  }

  dimension: kostenstelleid {
    type: number
    value_format_name: id
    sql: ${TABLE}.KOSTENSTELLEID ;;
  }

  dimension: monat {
    type: number
    sql: ${TABLE}.MONAT ;;
  }

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.NIEDERLASSUNG ;;
  }

  dimension: profitcenter {
    type: string
    sql: ${TABLE}.PROFITCENTER ;;
  }

  dimension: profitcenter_bezeichnung {
    type: string
    sql: ${TABLE}.PROFITCENTER_BEZEICHNUNG ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.REGION ;;
  }

  dimension: reifen {
    type: string
    sql: ${TABLE}.REIFEN ;;
  }

  dimension: reparaturkostengesamt {
    type: string
    sql: ${TABLE}.REPARATURKOSTENGESAMT ;;
  }

  dimension: reparkoststd {
    type: string
    sql: ${TABLE}.REPARKOSTSTD ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
