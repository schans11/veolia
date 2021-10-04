view: ladungsgewichte {
  sql_table_name: `de-ist-ve-bi.looker_test.04_1_Ladungsgewichte`
    ;;

  dimension: artikel {
    type: string
    sql: ${TABLE}.Artikel ;;
  }

  dimension: avg_artikel {
    type: number
    sql: ${TABLE}.avg_artikel ;;
  }

  dimension: bruttogewicht {
    type: number
    sql: ${TABLE}.Bruttogewicht ;;
  }

  dimension: class_ballen_lose {
    type: string
    sql: ${TABLE}.Class_Ballen_Lose ;;
  }

  dimension: concat_fi_lfschn {
    type: string
    sql: ${TABLE}.Concat_fi_lfschn ;;
  }

  dimension: distance_in_km {
    type: number
    sql: ${TABLE}.Distance_in_km ;;
  }

  dimension: fi_bk_nr {
    type: number
    sql: ${TABLE}.fi_bk_nr ;;
  }

  dimension: fi_name {
    type: string
    sql: ${TABLE}.fi_name ;;
  }

  dimension: fi_nr {
    type: number
    sql: ${TABLE}.fi_nr ;;
  }

  dimension: fi_region {
    type: string
    sql: ${TABLE}.fi_region ;;
  }

  dimension: lf_gp_lf_lief_kond_code {
    type: string
    sql: ${TABLE}.LF_GP_LF_LIEF_KOND_CODE ;;
  }

  dimension: lfl_art_auflade_menge {
    type: number
    sql: ${TABLE}.lfl_art_auflade_menge ;;
  }

  dimension: lfl_art_gruppe_text {
    type: string
    sql: ${TABLE}.LFL_ART_GRUPPE_TEXT ;;
  }

  dimension_group: lfl_ausf {
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
    sql: ${TABLE}.lfl_ausf_date ;;
  }

  dimension: lfl_gp_kd_code {
    type: string
    sql: ${TABLE}.LFL_GP_KD_CODE ;;
  }

  dimension: lfl_gp_lf_lief_kond_code {
    type: string
    sql: ${TABLE}.LFL_GP_LF_LIEF_KOND_CODE ;;
  }

  dimension: lfl_gp_lo_code {
    type: string
    sql: ${TABLE}.LFL_GP_LO_CODE ;;
  }

  dimension: lfl_gp_lo_name {
    type: string
    sql: ${TABLE}.LFL_GP_LO_NAME ;;
  }

  dimension: lfl_ktr_code {
    type: string
    sql: ${TABLE}.LFL_KTR_CODE ;;
  }

  dimension: lfl_nr {
    type: number
    sql: ${TABLE}.lfl_nr ;;
  }

  dimension: niederlassung {
    type: string
    sql: ${TABLE}.Niederlassung ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: von {
    type: string
    sql: ${TABLE}.von ;;
  }

  dimension: von_bis {
    type: string
    sql: ${TABLE}.Von_Bis ;;
  }

  measure: count {
    type: count
    drill_fields: [lfl_gp_lo_name, fi_name]
  }
}
