view: c_dwh_av_fkd {
  sql_table_name: `de-ist-ve-bi.looker_test.c_dwh_av_fkd`
    ;;

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

  dimension: fkd_ah_code {
    type: string
    sql: ${TABLE}.FKD_AH_CODE ;;
  }

  dimension: fkd_ah_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_AH_MIN_GEFAHREN ;;
  }

  dimension: fkd_bf1_code {
    type: string
    sql: ${TABLE}.FKD_BF1_CODE ;;
  }

  dimension: fkd_bf1_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_BF1_MIN_GEFAHREN ;;
  }

  dimension: fkd_bf2_code {
    type: string
    sql: ${TABLE}.FKD_BF2_CODE ;;
  }

  dimension: fkd_bf2_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_BF2_MIN_GEFAHREN ;;
  }

  dimension: fkd_bf3_code {
    type: string
    sql: ${TABLE}.FKD_BF3_CODE ;;
  }

  dimension: fkd_bf3_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_BF3_MIN_GEFAHREN ;;
  }

  dimension: fkd_bf4_code {
    type: string
    sql: ${TABLE}.FKD_BF4_CODE ;;
  }

  dimension: fkd_bf4_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_BF4_MIN_GEFAHREN ;;
  }

  dimension_group: fkd_changed {
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
    sql: ${TABLE}.FKD_CHANGED_DATE ;;
  }

  dimension_group: fkd_created {
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
    sql: ${TABLE}.FKD_CREATED_DATE ;;
  }

  dimension_group: fkd_ende {
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
    sql: ${TABLE}.FKD_ENDE_DATE ;;
  }

  dimension_group: fkd_erfasst {
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
    sql: ${TABLE}.FKD_ERFASST_DATE ;;
  }

  dimension: fkd_fa_abr {
    type: yesno
    sql: ${TABLE}.FKD_FA_ABR ;;
  }

  dimension: fkd_fa_recid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FKD_FA_RECID ;;
  }

  dimension: fkd_fa_telematik {
    type: yesno
    sql: ${TABLE}.FKD_FA_TELEMATIK ;;
  }

  dimension: fkd_fak_status {
    type: string
    sql: ${TABLE}.FKD_FAK_STATUS ;;
  }

  dimension: fkd_fau_nr {
    type: number
    sql: ${TABLE}.FKD_FAU_NR ;;
  }

  dimension: fkd_ff_code {
    type: string
    sql: ${TABLE}.FKD_FF_CODE ;;
  }

  dimension: fkd_ff_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_FF_MIN_GEFAHREN ;;
  }

  dimension: fkd_fzg_eigner_kz {
    type: string
    sql: ${TABLE}.FKD_FZG_EIGNER_KZ ;;
  }

  dimension: fkd_fzg_id_plan {
    type: string
    sql: ${TABLE}.FKD_FZG_ID_PLAN ;;
  }

  dimension: fkd_fzg_nr {
    type: number
    sql: ${TABLE}.FKD_FZG_NR ;;
  }

  dimension: fkd_fzg_pol_kennz {
    type: string
    sql: ${TABLE}.FKD_FZG_POL_KENNZ ;;
  }

  dimension: fkd_fzg_sap_code {
    type: string
    sql: ${TABLE}.FKD_FZG_SAP_CODE ;;
  }

  dimension: fkd_importstatus {
    type: string
    sql: ${TABLE}.FKD_IMPORTSTATUS ;;
  }

  dimension: fkd_km_gefahren {
    type: number
    sql: ${TABLE}.FKD_KM_GEFAHREN ;;
  }

  dimension: fkd_km_pause {
    type: number
    sql: ${TABLE}.FKD_KM_PAUSE ;;
  }

  dimension: fkd_min_gefahren {
    type: number
    sql: ${TABLE}.FKD_MIN_GEFAHREN ;;
  }

  dimension: min_gefahren {
    type: number
    sql: case when ${fkd_min_gefahren} > 700 then 22
    when ${fkd_min_gefahren} < 0 then 0
    else ${fkd_min_gefahren} end;;
  }

  dimension: fkd_min_pausen {
    type: number
    sql: ${TABLE}.FKD_MIN_PAUSEN ;;
  }

  dimension_group: fkd_plan {
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
    sql: ${TABLE}.FKD_PLAN_DATE ;;
  }

  dimension_group: fkd_start {
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
    sql: ${TABLE}.FKD_START_DATE ;;
  }

  dimension: fkd_tour {
    type: number
    sql: ${TABLE}.FKD_TOUR ;;
  }

  measure: count {
    type: count
    drill_fields: [fi_name]
  }
}
