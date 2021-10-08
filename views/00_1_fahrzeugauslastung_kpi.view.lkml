view: fahrzeugauslastung_kpi {
  sql_table_name: `looker_test.00_1_Fahrzeugauslastung_KPI`
    ;;

  dimension: fahrzeugtyp_2 {
    type: string
    sql: case when ${fahrzeugtyp} = "ASK" THEN "ASK"
          when ${fahrzeugtyp} = "GAB" THEN "GAB"
          WHEN ${fahrzeugtyp} = "Sonstiges" THEN "Sonstiges"
          ELSE "Umleerer" END;;
    label: "Fzg. typ"
    description: "Put your description here"
  }

  dimension: fi_region {
    type: string
    sql: ${TABLE}.fi_region ;;
    label: "Region"
  }

  measure: zielwert_2 {
    type: average
    value_format_name: percent_1
    sql: ${zielwert} ;;
  }

  measure: Auslastung {
    type: average
    value_format_name: percent_0
    sql: ${rel_auslastung} ;;
    drill_fields: [fi_region, niederlassung, Auslastung]
  }

  measure: Auslastung_last_month {
    type: average
    value_format_name: percent_0
    filters: [monaten_month: "2 months ago for 2 months"]
    sql: ${rel_auslastung} ;;
    drill_fields: [fi_region, niederlassung, Auslastung]
  }

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
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: datetime
    sql: ${TABLE}.Monaten ;;
  }

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.Niederlassung ;;
  }

  dimension: niederlasting_adjusted {
    type: string
    sql: case when ${niederlassung} = "Berlin" then "Berlin"
          when ${niederlassung} = "Sachsen" then "Sachsen"
          when ${niederlassung} = "Franken" then "Franken"
          else "Others" end;;
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
    hidden: yes
    type: number
    sql: ${TABLE}.REL_AUSLASTUNG ;;
  }

  measure: zielx {
    value_format_name: percent_0
    sql: ${Auslastung}-${zielwert_2};;


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

}

view: auslastung_month_niederlassung {
  derived_table: {
    explore_source: fahrzeugauslastung_kpi {
      column: Auslastung {}
      column: niederlassung {}
      column: monaten_month {}
      filters: {
        field: fahrzeugauslastung_kpi.fahrzeugtyp_2
        value: "-Sonstiges"
      }
    }
  }
  dimension: Auslastung {
    hidden: yes
    value_format: "#,##0%"
    type: number
  }
  dimension: niederlassung {
    hidden: yes
  }
  dimension: monaten_month {
    hidden: yes
    type: date_month
  }
  measure: auslastung_min {
    type: min
    sql: ${Auslastung};;
    value_format_name: percent_0
  }
  measure: auslastung_max {
    type: max
    sql: ${Auslastung};;
    value_format_name: percent_0
  }
}
