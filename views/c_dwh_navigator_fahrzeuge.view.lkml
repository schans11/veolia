view: c_dwh_navigator_fahrzeuge {
  sql_table_name: `de-ist-ve-bi.looker_test.c_dwh_navigator_fahrzeuge`
    ;;

  dimension: aktiv {
    type: yesno
    sql: ${TABLE}.AKTIV ;;
  }

  dimension_group: anschaffungsdatum {
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
    sql: ${TABLE}.ANSCHAFFUNGSDATUM ;;
  }

  dimension: bemerkung_sap {
    type: string
    sql: ${TABLE}.BemerkungSAP ;;
  }

  dimension: bukr {
    type: number
    sql: ${TABLE}.BUKR ;;
  }

  dimension: bukr_bezeichnung {
    type: string
    sql: ${TABLE}.BUKR_BEZEICHNUNG ;;
  }

  dimension: eigentumsverhaeltnis {
    type: string
    sql: ${TABLE}.EIGENTUMSVERHAELTNIS ;;
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

  dimension: fahrzeuggruppe {
    type: string
    sql: ${TABLE}.FAHRZEUGGRUPPE ;;
  }

  dimension: fahrzeugid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FAHRZEUGID ;;
  }

  dimension: innenauftrag {
    type: string
    sql: ${TABLE}.INNENAUFTRAG ;;
  }

  dimension: k_gruppe {
    type: string
    sql: ${TABLE}.K_GRUPPE ;;
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

  dimension: mdbid {
    type: number
    value_format_name: id
    sql: ${TABLE}.MDBID ;;
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

  dimension: technischerschluessel {
    type: string
    sql: ${TABLE}.TECHNISCHERSCHLUESSEL ;;
  }

  dimension: typ_schuettung {
    type: string
    sql: ${TABLE}.TYP_SCHUETTUNG ;;
  }

  dimension: typmanuell {
    type: string
    sql: ${TABLE}.TYPMANUELL ;;
  }

  dimension: zul_gesamtgewicht {
    type: number
    sql: ${TABLE}.ZulGesamtgewicht ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  dimension: niederlassung_adjusted {
    type: string
    sql:   CASE
                            WHEN ${niederlassung} ="Niederlassung Schleswig-Holstein" THEN "Schleswig-Holstein"
                            WHEN ${niederlassung}="Niederlassung Niedersachsen-Nord" THEN "Niedersachsen"
                            WHEN ${niederlassung}="Niederlassung Mecklenburg-Vorpommern" THEN "Mecklenburg-Vorpommern"
                            WHEN ${niederlassung}="Niederlassung Hamburg" THEN "Hamburg"
                            WHEN ${niederlassung}="Niederlassung Baden-Württemberg" THEN "Baden-Württemberg"
                            WHEN ${niederlassung}="Niederlassung Franken" THEN "Franken"
                            WHEN ${niederlassung}="Niederlassung Ost-Bayern" THEN "Ostbayern"
                            WHEN ${niederlassung}="Niederlassung Süd-Bayern" THEN "Süd-Bayern"
                            WHEN ${niederlassung}="Niederlassung Berlin/Brandenburg" THEN "Berlin"
                            WHEN ${niederlassung}="Niederlassung Thüringen/Sachsen-Anhalt" THEN "Thüringen"
                            WHEN ${niederlassung}="Niederlassung Sachsen/Lausitz" THEN "Sachsen"
                            WHEN ${niederlassung} IS NULL THEN "Sonstiges"
                            ELSE ${niederlassung}
                          END ;;
  }
}
