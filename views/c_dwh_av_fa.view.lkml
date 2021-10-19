include: "/views/**/*.view"

view: c_dwh_av_fa {
  sql_table_name: `de-ist-ve-bi.looker_test.c_dwh_av_fa`
    ;;

  dimension: fa_abr_status {
    type: yesno
    sql: ${TABLE}.FA_ABR_STATUS ;;
  }

  dimension: fa_abr_zahl_art_code {
    type: string
    sql: ${TABLE}.FA_ABR_ZAHL_ART_CODE ;;
  }

  dimension: fa_abr_zyklus {
    type: number
    sql: ${TABLE}.FA_ABR_ZYKLUS ;;
  }

  dimension_group: fa_annm {
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
    sql: ${TABLE}.FA_ANNM_DATE ;;
  }

  dimension: fa_art_code {
    type: string
    sql: ${TABLE}.FA_ART_CODE ;;
  }

  dimension_group: fa_ausf {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year,
      month_num
    ]
    sql: ${TABLE}.FA_AUSF_DATE ;;
  }

  dimension: fa_befoerder {
    type: string
    sql: ${TABLE}.FA_BEFOERDER ;;
  }

  dimension: fa_cl_status {
    type: string
    sql: ${TABLE}.FA_CL_STATUS ;;
  }

  dimension: fa_class_code {
    type: string
    sql: ${TABLE}.FA_CLASS_CODE ;;
  }

  dimension_group: fa_created {
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
    sql: ${TABLE}.FA_CREATED_DATE ;;
  }

  dimension: fa_dbu_status {
    type: yesno
    sql: ${TABLE}.FA_DBU_STATUS ;;
  }

  dimension: fa_dispo {
    type: string
    sql: ${TABLE}.FA_DISPO ;;
  }

  dimension: fa_ext_bestell_nr {
    type: string
    sql: ${TABLE}.FA_EXT_BESTELL_NR ;;
  }

  dimension: fa_fak_status_code {
    type: string
    sql: ${TABLE}.FA_FAK_STATUS_CODE ;;
  }

  dimension: fa_fzg_gp_code {
    type: string
    sql: ${TABLE}.FA_FZG_GP_CODE ;;
  }

  dimension: fa_fzg_klasse {
    type: string
    sql: ${TABLE}.FA_FZG_KLASSE ;;
  }

  dimension: fa_fzg_nr {
    type: number
    sql: ${TABLE}.FA_FZG_NR ;;
  }

  dimension: fa_fzg_pol_kennz {
    type: string
    sql: ${TABLE}.FA_FZG_POL_KENNZ ;;
  }

  dimension: fa_fzg_sap_code {
    type: string
    sql: ${TABLE}.FA_FZG_SAP_CODE ;;
  }

  dimension: fa_gp_bf_code {
    type: string
    sql: ${TABLE}.FA_GP_BF_CODE ;;
  }

  dimension: fa_gp_kd_adress_ort {
    type: string
    sql: ${TABLE}.FA_GP_KD_ADRESS_ORT ;;
  }

  dimension: fa_gp_kd_adress_plz {
    type: string
    sql: ${TABLE}.FA_GP_KD_ADRESS_PLZ ;;
  }

  dimension: fa_gp_kd_adress_str {
    type: string
    sql: ${TABLE}.FA_GP_KD_ADRESS_STR ;;
  }

  dimension: fa_gp_kd_code {
    type: string
    sql: ${TABLE}.FA_GP_KD_CODE ;;
  }

  dimension: fa_gp_kd_entsorger_nr {
    type: string
    sql: ${TABLE}.FA_GP_KD_ENTSORGER_NR ;;
  }

  dimension: fa_gp_kd_erzeuger_nr {
    type: string
    sql: ${TABLE}.FA_GP_KD_ERZEUGER_NR ;;
  }

  dimension: fa_gp_kd_name_1 {
    type: string
    sql: ${TABLE}.FA_GP_KD_NAME_1 ;;
  }

  dimension: fa_gp_lo_adress_ort {
    type: string
    sql: ${TABLE}.FA_GP_LO_ADRESS_ORT ;;
  }

  dimension: fa_gp_lo_adress_plz {
    type: string
    sql: ${TABLE}.FA_GP_LO_ADRESS_PLZ ;;
  }

  dimension: fa_gp_lo_adress_str {
    type: string
    sql: ${TABLE}.FA_GP_LO_ADRESS_STR ;;
  }

  dimension: fa_gp_lo_code {
    type: string
    sql: ${TABLE}.FA_GP_LO_CODE ;;
  }

  dimension: fa_gp_lo_name_1 {
    type: string
    sql: ${TABLE}.FA_GP_LO_NAME_1 ;;
  }

  dimension: fa_gp_su_code {
    type: string
    sql: ${TABLE}.FA_GP_SU_CODE ;;
  }

  dimension: fa_gp_su_name_1 {
    type: string
    sql: ${TABLE}.FA_GP_SU_NAME_1 ;;
  }

  dimension: fa_kunde {
    type: string
    sql: ${TABLE}.FA_KUNDE ;;
  }

  dimension: fa_notizen_text {
    type: string
    sql: ${TABLE}.FA_NOTIZEN_TEXT ;;
  }

  dimension: fa_nr {
    type: number
    sql: ${TABLE}.FA_NR ;;
  }

  dimension: fa_nutzer {
    type: string
    sql: ${TABLE}.FA_NUTZER ;;
  }

  dimension: fa_origin_system {
    type: string
    sql: ${TABLE}.FA_ORIGIN_SYSTEM ;;
  }

  dimension: fa_quelle_code {
    type: string
    sql: ${TABLE}.FA_QUELLE_CODE ;;
  }

  dimension: fa_recid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FA_RECID ;;
  }

  dimension: fa_storno_grund {
    type: string
    sql: ${TABLE}.FA_STORNO_GRUND ;;
  }

  dimension: fa_subunt {
    type: string
    sql: ${TABLE}.FA_SUBUNT ;;
  }

  dimension: fa_subunt_abr {
    type: string
    sql: ${TABLE}.FA_SUBUNT_ABR ;;
  }

  dimension_group: fa_tel_ende {
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
    sql: ${TABLE}.FA_TEL_ENDE_DATE ;;
  }

  dimension: fa_tel_kilometer {
    type: number
    sql: ${TABLE}.FA_TEL_KILOMETER ;;
  }

  dimension_group: fa_tel_start_zeit {
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
    sql: ${TABLE}.FA_TEL_START_ZEIT ;;
  }

  dimension: fa_telematik_aktiv {
    type: yesno
    sql: ${TABLE}.FA_TELEMATIK_AKTIV ;;
  }

  dimension: fa_telematik_status_code {
    type: string
    sql: ${TABLE}.FA_TELEMATIK_STATUS_CODE ;;
  }

  dimension: fa_text {
    type: string
    sql: ${TABLE}.FA_TEXT ;;
  }

  dimension: fa_tour_basis_recid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FA_TOUR_BASIS_RECID ;;
  }

  dimension: fa_tour_pos {
    type: number
    sql: ${TABLE}.FA_TOUR_POS ;;
  }

  dimension: fa_tour_waren_einheit {
    type: string
    sql: ${TABLE}.FA_TOUR_WAREN_EINHEIT ;;
  }

  dimension: fa_tour_waren_menge {
    type: number
    sql: ${TABLE}.FA_TOUR_WAREN_MENGE ;;
  }

  dimension: fa_wa_code {
    type: string
    sql: ${TABLE}.FA_WA_CODE ;;
  }

  dimension: fa_wae_note_text {
    type: string
    sql: ${TABLE}.FA_WAE_NOTE_TEXT ;;
  }

  dimension: fap_abr_netto {
    type: number
    sql: ${TABLE}.FAP_ABR_NETTO ;;
  }

  dimension: fap_abr_rechnung_status {
    type: yesno
    sql: ${TABLE}.FAP_ABR_RECHNUNG_STATUS ;;
  }

  dimension: fap_art_bezeichnung {
    type: string
    sql: ${TABLE}.FAP_ART_BEZEICHNUNG ;;
  }

  dimension: fap_art_dws_cont_system_bezeichnung {
    type: string
    sql: ${TABLE}.FAP_ART_DWS_CONT_SYSTEM_BEZEICHNUNG ;;
  }

  dimension: fap_art_dws_cont_system_code {
    type: string
    sql: ${TABLE}.FAP_ART_DWS_CONT_SYSTEM_CODE ;;
  }

  dimension: fap_art_dws_cont_typ_bez {
    type: string
    sql: ${TABLE}.FAP_ART_DWS_CONT_TYP_BEZ ;;
  }

  dimension: fap_art_dws_cont_typ_code {
    type: string
    sql: ${TABLE}.FAP_ART_DWS_CONT_TYP_CODE ;;
  }

  dimension: fap_art_dws_cont_volumen {
    type: number
    sql: ${TABLE}.FAP_ART_DWS_CONT_VOLUMEN ;;
  }

  dimension: fap_art_dws_gruppe_code {
    type: string
    sql: ${TABLE}.FAP_ART_DWS_GRUPPE_CODE ;;
  }

  dimension: fap_art_dws_gruppe_text {
    type: string
    sql: ${TABLE}.FAP_ART_DWS_GRUPPE_TEXT ;;
  }

  dimension: fap_art_einheit_code {
    type: string
    sql: ${TABLE}.FAP_ART_EINHEIT_CODE ;;
  }

  dimension: fap_art_gruppe_text {
    type: string
    sql: ${TABLE}.FAP_ART_GRUPPE_TEXT ;;
  }

  dimension: fap_art_nr {
    type: string
    sql: ${TABLE}.FAP_ART_NR ;;
  }

  dimension: fap_art_typ_code {
    type: string
    sql: ${TABLE}.FAP_ART_TYP_CODE ;;
  }

  dimension: fap_au_nr {
    type: number
    sql: ${TABLE}.FAP_AU_NR ;;
  }

  dimension: fap_aup_nr {
    type: number
    sql: ${TABLE}.FAP_AUP_NR ;;
  }

  dimension: fap_aup_recid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FAP_AUP_RECID ;;
  }

  dimension: fap_aup_u_nr {
    type: number
    sql: ${TABLE}.FAP_AUP_U_NR ;;
  }

  dimension: fap_avv_nr {
    type: string
    sql: ${TABLE}.FAP_AVV_NR ;;
  }

  dimension_group: fap_changed {
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
    sql: ${TABLE}.FAP_CHANGED_DATE ;;
  }

  dimension: fap_class_code {
    type: string
    sql: ${TABLE}.FAP_CLASS_CODE ;;
  }

  dimension_group: fap_created {
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
    sql: ${TABLE}.FAP_CREATED_DATE ;;
  }

  dimension: fap_fremd_prozent {
    type: number
    sql: ${TABLE}.FAP_FREMD_PROZENT ;;
  }

  dimension: fap_gp_su_code {
    type: string
    sql: ${TABLE}.FAP_GP_SU_CODE ;;
  }

  dimension: fap_kst {
    type: string
    sql: ${TABLE}.FAP_KST ;;
  }

  dimension: fap_ktr {
    type: string
    sql: ${TABLE}.FAP_KTR ;;
  }

  dimension: fap_leistungsnummer {
    type: string
    sql: ${TABLE}.FAP_LEISTUNGSNUMMER ;;
  }

  dimension: fap_menge {
    type: number
    sql: ${TABLE}.FAP_MENGE ;;
  }

  dimension: fap_pos_nr {
    type: number
    sql: ${TABLE}.FAP_POS_NR ;;
  }

  dimension: fap_pr_kz {
    type: string
    sql: ${TABLE}.FAP_PR_KZ ;;
  }

  dimension: fap_pr_rabatt_betrag {
    type: number
    sql: ${TABLE}.FAP_PR_RABATT_BETRAG ;;
  }

  dimension: fap_pr_rabatt_code {
    type: string
    sql: ${TABLE}.FAP_PR_RABATT_CODE ;;
  }

  dimension: fap_pr_rabatt_wert {
    type: number
    sql: ${TABLE}.FAP_PR_RABATT_WERT ;;
  }

  dimension: fap_pr_wert {
    type: number
    sql: ${TABLE}.FAP_PR_WERT ;;
  }

  dimension: fap_recid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FAP_RECID ;;
  }

  dimension: fap_storno_status {
    type: yesno
    sql: ${TABLE}.FAP_STORNO_STATUS ;;
  }

  dimension: fap_subunt {
    type: string
    sql: ${TABLE}.FAP_SUBUNT ;;
  }

  dimension: fap_subunt_status {
    type: string
    sql: ${TABLE}.FAP_SUBUNT_STATUS ;;
  }

  dimension: fap_wa_code {
    type: string
    sql: ${TABLE}.FAP_WA_CODE ;;
  }

  dimension: fap_waehrung_code {
    type: string
    sql: ${TABLE}.FAP_WAEHRUNG_CODE ;;
  }

  dimension: fi_bk_nr {
    type: number
    sql: ${TABLE}.FI_BK_NR ;;
  }

  dimension: fi_name {
    type: string
    sql: ${TABLE}.FI_NAME ;;
  }

  dimension: fi_nr {
    type: number
    sql: ${TABLE}.FI_NR ;;
  }

  dimension: fi_region {
    type: string
    sql: ${TABLE}.FI_REGION ;;
  }

  dimension: fi_werk_code {
    type: string
    sql: ${TABLE}.FI_WERK_CODE ;;
  }

  dimension: Subfahrzeug {
    type: string
    sql:     CASE
                            WHEN ${fi_region} ="Sued" AND (${fa_fzg_sap_code} NOT LIKE "K%" OR ${fa_fzg_sap_code} LIKE "___9999%" OR LENGTH(${fa_fzg_sap_code})=0 OR LENGTH(${fa_fzg_sap_code}) IS NULL) THEN  "Sub Fahrzeug"
                            WHEN ${fi_region} ="Nord" and (${fa_fzg_sap_code} LIKE "X%" or LENGTH(${fa_fzg_sap_code})=0 or LENGTH(${fa_fzg_sap_code}) is null) THEN  "Sub Fahrzeug"
                            WHEN ${fi_region} ="Ost" and (${fa_fzg_sap_code} LIKE "X%" or LENGTH(${fa_fzg_sap_code})=0 or LENGTH(${fa_fzg_sap_code}) is null) THEN  "Sub Fahrzeug"
                            WHEN lower(${fa_fzg_pol_kennz}) like "%umm%" then "Sub Fahrzeug"
                            ELSE "Eigene Fahrzeug"
                          END
                          ;;
  }

  dimension: Anzal_behaelter_dim {
    type: number
    sql: case when ${fap_art_einheit_code} != "Stk" or ${fap_art_dws_cont_system_code} = "SK" then 1 else ${fap_menge} end ;;
  }

  measure: Anzal_behaelter {
    type: max
    sql: ${Anzal_behaelter_dim} ;;
  }


  measure: count {
    type: count
    drill_fields: [fi_name]
  }
}

explore: fahrzeugauslastung_day {
  hidden: yes
  from: c_dwh_av_fa
  join: c_dwh_av_fkd {
    relationship: many_to_one
    type: left_outer
    sql_on: ${c_dwh_av_fkd.fkd_fa_recid} = ${fahrzeugauslastung_day.fa_recid}
      and ${c_dwh_av_fkd.fi_nr} = ${fahrzeugauslastung_day.fi_nr};;
  }
  join: t_kalender_gs {
    relationship: many_to_one
    type: left_outer
    sql_on: ${fahrzeugauslastung_day.fa_ausf_date} = ${t_kalender_gs.datum_date} ;;
  }
}

explore: t_kalender_gs {
  hidden: yes
}

view: AT_MONATE {
  derived_table: {
    explore_source: t_kalender_gs {
      column: SOLL_AT_MONAT {}
      column: datum_month {}
    }
  }
  dimension: SOLL_AT_MONAT {
    type: number
  }
  dimension: datum_month {
    type: date_month
  }
}

view: fahrzeugauslastung_day {
  derived_table: {
    explore_source: fahrzeugauslastung_day {
      column: fi_region {}
      column: fi_bk_nr {}
      column: fa_fzg_sap_code {}
      column: fa_ausf_date {}
      column: fa_ausf_month {}
      column: fa_ausf_year {}
      column: fa_ausf_month_num {}
      column: fa_nr {}
      column: fa_fak_status_code {}
      column: fa_art_code {}
      column: fa_class_code {}
      column: feiertag { field: t_kalender_gs.feiertag }
      column: fa_fzg_klasse {}
      column: min_gefahren { field: c_dwh_av_fkd.min_gefahren }
      column: Subfahrzeug {}
      column: Anzal_behaelter {}
      filters: {
        field: fahrzeugauslastung_day.fa_fak_status_code
        value: "-S"
      }
      filters: {
        field: fahrzeugauslastung_day.fa_art_code
        value: "-A"
      }
      filters: {
        field: fahrzeugauslastung_day.fi_region
        value: "Ost,Nord,Sued"
      }
      filters: {
        field: t_kalender_gs.feiertag
        value: "NEIN"
      }
      filters: {
        field: fahrzeugauslastung_day.fa_class_code
        value: "-\"TOUR_KOPF\""
      }
   #   filters: {
   #     field: fahrzeugauslastung_day.fa_ausf_date
   #     value: "2021/06/22"
   #   }
    }
  }
  dimension: fi_region {}
  dimension: fi_bk_nr {
    type: number
  }
  dimension: fa_fzg_sap_code {}
  dimension: fa_ausf_date {
    type: date
  }
  measure: IST_AT_MONAT {
    type: count_distinct
    sql: ${fa_ausf_date} ;;
  }
  dimension: fa_ausf_month {
    type: date_month
  }
  dimension: fa_ausf_month_num {
  }
  dimension: fa_ausf_year {
    type: date_year
  }
  dimension: fa_nr {
    type: number
  }
  dimension: fa_fak_status_code {}
  dimension: fa_art_code {}
  dimension: fa_class_code {}
  dimension: feiertag {}
  dimension: fa_fzg_klasse {}
  dimension: min_gefahren {
    type: number
  }
  measure: min_gefahren_monat {
    type: sum
    sql: ${min_gefahren} ;;
  }
  measure: std_gefahren_monat {
    type: sum
    sql: ${min_gefahren}/60 ;;
  }
  dimension: Subfahrzeug {}
  dimension: Anzal_behaelter {
    type: number
  }
  measure: Anzal_behaelter_sum {
    type: sum
    sql: ${Anzal_behaelter} ;;
  }
}

explore: fahrzeugauslastung_month {
  hidden: yes
  from: fahrzeugauslastung_day
  join: AT_MONATE {
    type: left_outer
    relationship: many_to_one
    sql_on: ${AT_MONATE.datum_month} = ${fahrzeugauslastung_month.fa_ausf_month}
    and ${haupttabelle_2.feiertag} = "NEIN";;
  }
  join: c_dwh_navigator_fahrzeuge {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_dwh_navigator_fahrzeuge.innenauftrag} = ${fahrzeugauslastung_month.fa_fzg_sap_code} ;;
  }
  join: c_dwh_navigator_sapkosten {
    type: left_outer
    relationship: one_to_one
    sql_on: ${c_dwh_navigator_sapkosten.innenauftrag} = ${fahrzeugauslastung_month.fa_fzg_sap_code}
    and ${c_dwh_navigator_sapkosten.monat} = ${haupttabelle_2.fa_ausf_month_num}
    and ${c_dwh_navigator_sapkosten.jahr} = ${fahrzeugauslastung_month.fa_ausf_year};;
  }
  join: auslastung_kpi_gs {
    type: left_outer
    relationship: many_to_one
    sql_on: ${c_dwh_navigator_fahrzeuge.niederlassung_adjusted} = ${auslastung_kpi_gs.niederlassung} ;;
  }
}

view: fahrzeugauslastung_month {
  derived_table: {
    explore_source: fahrzeugauslastung_month {
      column: Subfahrzeug {}
      column: fa_ausf_month {}
      column: fi_bk_nr {}
      column: fi_region {}
      column: fa_fzg_klasse {}
      column: fa_fzg_sap_code {}
      column: IST_AT_MONAT {}
      column: kostenstelle_beschreibung { field: c_dwh_navigator_fahrzeuge.kostenstelle_beschreibung }
      column: min_gefahren_monat {}
      column: std_gefahren_monat {}
      column: profitcenter { field: c_dwh_navigator_fahrzeuge.profitcenter }
      column: profitcenter_bezeichnung { field: c_dwh_navigator_fahrzeuge.profitcenter_bezeichnung }
      column: Anzal_behaelter_sum {}
      column: ask { field: auslastung_kpi_gs.ask }
      column: gab { field: auslastung_kpi_gs.gab }
      column: umleerer { field: auslastung_kpi_gs.umleerer }
      column: sonstiges { field: auslastung_kpi_gs.sonstiges }
      column: niederlassung_adjusted { field: c_dwh_navigator_fahrzeuge.niederlassung_adjusted }
      column: erstzulassung_date { field: c_dwh_navigator_fahrzeuge.erstzulassung_date }
      column: reparaturkostengesamt { field: c_dwh_navigator_sapkosten.reparaturkostengesamt }
      column: SOLL_AT_MONAT { field: AT_MONATE.SOLL_AT_MONAT }
      filters: {
        field: c_dwh_navigator_fahrzeuge.profitcenter
        value: "JA11"
      }
      filters: {
        field: fahrzeugauslastung_month.Subfahrzeug
        value: "Eigene Fahrzeug"
      }
    }
  }
  dimension: Subfahrzeug {}
  dimension: fa_ausf_month {
    type: date_month
  }
  dimension: fi_bk_nr {
    type: number
  }
  dimension: fi_region {}
  dimension: fa_fzg_sap_code {}
  dimension: IST_AT_MONAT {
    type: number
  }
  dimension: min_gefahren_monat {
    type: number
  }
  dimension: std_gefahren_monat {
    type: number
  }
  dimension: profitcenter {}
  dimension: profitcenter_bezeichnung {}
  dimension: Anzal_behaelter_sum {
    type: number
  }
  dimension: niederlassung_adjusted {}
  dimension: fa_fzg_klasse {}
  dimension: kostenstelle_beschreibung {}
  dimension: erstzulassung_date {
    type: date
  }
  dimension: reparaturkostengesamt {}
  dimension: SOLL_AT_MONAT {
    type: number
  }
  dimension: ask {
    type: number
  }
  dimension: gab {
    type: number
  }
  dimension: umleerer {
    type: number
  }
  dimension: sonstiges {
    type: number
  }
  dimension: rel_auslastung {
    sql: ${std_gefahren_monat}/(${SOLL_AT_MONAT}*8) ;;
  }
  dimension: fahrzeugtyp {
    type: string
    sql:  CASE
                            WHEN ${fi_region} = "Sued" AND UPPER(${kostenstelle_beschreibung}) LIKE "%ASK%" THEN "ASK"
                            WHEN ${fi_region} = "Sued" AND UPPER(${kostenstelle_beschreibung}) LIKE "%GAB%" THEN "GAB"
                            WHEN ${fi_region} = "Sued" AND UPPER(${kostenstelle_beschreibung}) LIKE "%SL%"  THEN "Seitenlader"
                            WHEN ${fi_region} = "Sued" AND UPPER(${kostenstelle_beschreibung}) LIKE "%HL%"  THEN "Hecklader"
                            WHEN ${fi_region} = "Sued" AND UPPER(${kostenstelle_beschreibung}) LIKE "%FL%"  THEN "Frontlader"
                            WHEN ${fi_region} = "Sued" THEN "Sonstiges"
                            WHEN UPPER(${fa_fzg_klasse}) LIKE "%KIPPER%" OR UPPER(${fa_fzg_klasse}) LIKE "%SETZ%" THEN "ASK"
                            WHEN UPPER(${fa_fzg_klasse}) LIKE "%ROLL%" OR UPPER(${fa_fzg_klasse}) LIKE "%GLEIT%"  THEN  "GAB"
                            WHEN UPPER(${fa_fzg_klasse}) LIKE "%ENLADER%"  THEN "Seitenlader"
                            WHEN UPPER(${fa_fzg_klasse}) LIKE "%ECKLA%" THEN "Hecklader"
                            WHEN UPPER(${fa_fzg_klasse}) LIKE "%RONTLADER%" THEN "Frontlader"
                            WHEN UPPER(${fa_fzg_klasse}) LIKE "%KOPFLADER%" THEN "Kopflader"
                            ELSE "Sonstiges"
                          END;;
  }
  dimension: zielwert {
    type: number
    sql: CASE
                            WHEN ${fahrzeugtyp}="ASK" THEN ${ask}/100
                            WHEN ${fahrzeugtyp}="GAB" THEN ${gab}/100
                            WHEN ${fahrzeugtyp} IN ("Seitenlader","Hecklader","Frontlader","Kopflader") THEN ${umleerer}/100
                            WHEN ${fahrzeugtyp}="Sonstiges" THEN ${sonstiges}/100
                          END ;;
  }
}

explore: fahrzeugauslastung_kpi_lookml {
  from: fahrzeugauslastung_month
  join: fahrzeugauslastung_day {
    type: left_outer
    relationship: one_to_many
    sql_on: ${fahrzeugauslastung_kpi_lookml.fa_fzg_sap_code} = ${fahrzeugauslastung_day.fa_fzg_sap_code}
    and ${fahrzeugauslastung_kpi_lookml.fa_ausf_month} = ${fahrzeugauslastung_day.fa_ausf_month};;
  }
}