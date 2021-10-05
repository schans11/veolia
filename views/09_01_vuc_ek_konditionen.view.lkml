view: vuc_ek_konditionen {
  sql_table_name: `de-ist-ve-bi.looker_test.09_01_VUC_EK_Konditionen`
    ;;

  dimension: abfallgruppe {
    type: string
    sql: ${TABLE}.Abfallgruppe ;;
  }

  dimension: anfallstelle {
    type: string
    sql: ${TABLE}.Anfallstelle ;;
    drill_fields: [auftrag_position,bemerkungszeile,vertragsstatus,abfallgruppe,leistungsart,artikelbezeichnung,vk_containereigner,ek_menge,preis]
  }

  dimension: anfallstelle_bundesland {
    type: string
    sql: ${TABLE}.Anfallstelle_Bundesland ;;
  }

  dimension: artikel {
    type: string
    sql: ${TABLE}.Artikel ;;
  }

  dimension: artikelbezeichnung {
    type: string
    sql: ${TABLE}.Artikelbezeichnung ;;
    drill_fields: [artikel,beleg_bezeichnung]
  }

  measure: Anfallstellen {
    type: count_distinct
    value_format_name: decimal_0
    sql: ${anfallstelle} ;;
    drill_fields: [anfallstelle,Auftragspositionen]
  }
  measure: Auftragspositionen {
    type: count_distinct
    value_format_name: decimal_0
    sql: ${auftrag_position} ;;
    drill_fields: [auftrag_position,bemerkungszeile,vertragsstatus,abfallgruppe,leistungsart,artikelbezeichnung,vk_containereigner,ek_menge,preis]
  }

  dimension: auftrag {
    type: number
    sql: ${TABLE}.Auftrag ;;
  }

  dimension: auftrag_position {
    type: string
    sql: ${TABLE}.Auftrag_Position ;;
  }

  dimension: aup_recid {
    type: number
    value_format_name: id
    sql: ${TABLE}.AUP_RECID ;;
  }

  dimension_group: auslaufdatum {
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
    sql: ${TABLE}.Auslaufdatum ;;
  }

  dimension: avv {
    type: string
    sql: ${TABLE}.AVV ;;
  }

  dimension: beleg_bezeichnung {
    type: string
    sql: ${TABLE}.Beleg_Bezeichnung ;;
  }

  dimension: bemerkungszeile {
    type: string
    sql: ${TABLE}.Bemerkungszeile ;;
  }

  dimension: ek_menge {
    type: number
    sql: ${TABLE}.EK_Menge ;;
  }

  dimension: fi_bk_nr {
    type: string
    sql: ${TABLE}.FI_BK_NR ;;
  }

  dimension: fi_nr {
    type: string
    sql: ${TABLE}.FI_NR ;;
  }

  dimension: kunde {
    type: string
    sql: ${TABLE}.Kunde ;;
  }

  dimension: kundengruppe {
    type: string
    sql: ${TABLE}.Kundengruppe ;;
    drill_fields: [kunde]
  }

  dimension: leistungsart {
    type: string
    sql: ${TABLE}.Leistungsart ;;
  }

  dimension: mengeneinheit {
    type: string
    sql: ${TABLE}.Mengeneinheit ;;
  }

  dimension: preis {
    type: string
    sql: ${TABLE}.Preis ;;
  }

  dimension: subunternehmer {
    type: string
    sql: ${TABLE}.Subunternehmer ;;
    drill_fields: [auftrag_position,bemerkungszeile,vertragsstatus,abfallgruppe,leistungsart,artikelbezeichnung,vk_containereigner,ek_menge,preis]
  }

  dimension: subunternehmer_anschrift {
    type: string
    sql: ${TABLE}.Subunternehmer_Anschrift ;;
  }

  dimension: subunternehmer_kz {
    type: string
    sql: ${TABLE}.Subunternehmer_Kz ;;
  }

  dimension: vertragsstatus {
    type: string
    sql: ${TABLE}.Vertragsstatus ;;
  }

  dimension: vk_containereigner {
    type: string
    sql: ${TABLE}.VK_Containereigner ;;
  }

  dimension_group: zeitstempel {
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
    sql: ${TABLE}.Zeitstempel ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
