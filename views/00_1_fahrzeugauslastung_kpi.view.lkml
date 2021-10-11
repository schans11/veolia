include: "/views/**/*.view"

#step 1.1

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

  measure: zielwert_avg {
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

  measure: Auslastung_link {
    type: average
    value_format_name: percent_0
    sql: ${rel_auslastung} ;;
      link: {
        label: "Details"
        url: "https://veoliagermany.cloud.looker.com/looks/11"
      }
    }

  measure: Auslastung_last_month {
    type: average
    value_format_name: percent_0
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
      date,
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

  dimension: niederlassung_adjusted {
    type: string
    sql: case when ${niederlassung} = "Baden-Württemberg" then "Baden-Württemberg"
          when ${niederlassung} = "Süd-Bayern" then "Süd-Bayern"
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

#step 1.2

view: auslastung_month_niederlassung {
  derived_table: {
    explore_source: fahrzeugauslastung_kpi {
      column: niederlassung {}
      column: Auslastung {}
      column: monaten_month {}
      derived_column: ranking {sql: ROW_NUMBER () OVER (PARTITION BY niederlassung order by monaten_month desc );;}
    }
  }
  dimension: niederlassung {
    type: string
  }
  dimension: ranking {
    type: number
  }
  dimension: Auslastung {
    value_format: "#,##0%"
    type: number
  }
  dimension: monaten_month {
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

#step 1.3

view: auslastung_6month_niederlassung {
  derived_table: {
    explore_source: fahrzeugauslastung_kpi {
      column: niederlassung {}
      column: niederlassung_adjusted {}
      column: Auslastung {}
      column: zielwert_avg {}
    }
  }
  dimension: niederlassung {}
  dimension: niederlassung_adjusted {
    hidden: yes
    type: string
  }
  dimension: Auslastung {
    value_format: "#,##0%"
    type: number
  }
  dimension: zielwert_avg {
    value_format: "#,##0.0%"
    type: number
  }
}

#step 1.4

explore: auslastung_6month_niederlassung {
  hidden: yes
  join: auslastung_last_month_niederlassung {
    type: left_outer
    relationship: many_to_one
    from: auslastung_month_niederlassung
    sql_on: ${auslastung_last_month_niederlassung.ranking} = 1
      and ${auslastung_last_month_niederlassung.niederlassung} = ${auslastung_6month_niederlassung.niederlassung};;
  }
  join: auslastung_2_months_back_niederlassung {
    type: left_outer
    relationship: many_to_one
    from: auslastung_month_niederlassung
    sql_on: ${auslastung_2_months_back_niederlassung.ranking} = 2
      and ${auslastung_2_months_back_niederlassung.niederlassung} = ${auslastung_6month_niederlassung.niederlassung};;
  }
  join: auslastung_month_niederlassung {
    type: left_outer
    relationship: one_to_many
    sql_on: ${auslastung_6month_niederlassung.niederlassung} = ${auslastung_month_niederlassung.niederlassung} ;;
  }
  join: email_recipient {
    type: left_outer
    relationship: one_to_one
    sql_on: ${email_recipient.niederlassung} = ${auslastung_6month_niederlassung.niederlassung_adjusted} ;;
  }
}

#step 1.5

view: report {
  derived_table: {
    explore_source: auslastung_6month_niederlassung {
      column: niederlassung { field: auslastung_last_month_niederlassung.niederlassung }
      column: Auslastung {}
      column: Auslastung_last_month { field: auslastung_last_month_niederlassung.Auslastung }
      column: Auslastung_2_months_back { field: auslastung_2_months_back_niederlassung.Auslastung }
      column: zielwert_avg {}
      column: auslastung_max { field: auslastung_month_niederlassung.auslastung_max }
      column: auslastung_min { field: auslastung_month_niederlassung.auslastung_min }
      column: threshold { field: email_recipient.threshold}
      column: responsible {field: email_recipient.responsible}
    }
  }
  dimension: niederlassung {}
  dimension: threshold {  }
  dimension: responsible {}
  dimension: Auslastung_6_month_average {
    sql: auslastung ;;
    value_format: "#,##0%"
    type: number
  }
  dimension: Auslastung_last_month {
    value_format: "#,##0%"
    type: number
  }
  dimension: Auslastung_2_months_back {
    value_format: "#,##0%"
    type: number
  }
  dimension: zielwert_avg {
    value_format: "#,##0.0%"
    type: number
  }
  dimension: auslastung_max {
    value_format: "#,##0%"
    type: number
    html: <p style="color: #90EE90">{{ rendered_value }}</p> ;;
  }
  dimension: auslastung_min {
    value_format: "#,##0%"
    type: number
    html: <p style="color: #FF7F7F">{{ rendered_value }}</p> ;;
  }
  dimension: auslastung_performance_last_month {
    type: string
    sql: case when ${Auslastung_last_month} > ${Auslastung_2_months_back} then 'improving last month' else 'deteriorating last month' end ;;
    html: {% if value == 'deteriorating last month' %}
    <p style="background-color: #FF7F7F">{{ rendered_value }}</p>
    {% elsif value == 'improving last month' %}
    <p style="background-color: lightgreen">{{ rendered_value }}</p>
    {% endif %} ;;
  }
  dimension: ziel_last_month {
    type: string
    sql: case when ${Auslastung_last_month} > ${zielwert_avg} then 'above target last month' else 'below target last month' end ;;
    html: {% if value == 'below target last month' %}
    <p style="background-color: #FF7F7F">{{ rendered_value }}</p>
    {% elsif value == 'above target last month' %}
    <p style="background-color: lightgreen">{{ rendered_value }}</p>
    {% endif %} ;;
  }
  dimension: high_low {
    type: string
    sql: case when ${auslastung_max} = ${Auslastung_last_month} then 'Last month highest in six months'
    else case when ${auslastung_min} = ${Auslastung_last_month} then 'Last month lowest in six months' else '' end end ;;
    html: {% if value == 'Last month lowest in six months' %}
    <p style="background-color: #FF7F7F">{{ rendered_value }}</p>
    {% elsif value == 'Last month highest in six months' %}
    <p style="background-color: lightgreen">{{ rendered_value }}</p>
    {% endif %} ;;
  }
  dimension: 6months {
    type: string
    sql: case when ${Auslastung_6_month_average} > ${Auslastung_last_month} then 'Last month below 6 month average' else 'Last month above 6 month average' end ;;
    html: {% if value == 'Last month below 6 month average' %}
      <p style="background-color: #FF7F7F">{{ rendered_value }}</p>
    {% elsif value == 'Last month above 6 month average' %}
      <p style="background-color: lightgreen">{{ rendered_value }}</p>
    {% endif %} ;;
  }
  dimension: alert_to_sent{
    type: string
    sql: case when ${threshold} > 0.0001 then
    case when ${threshold} > ${Auslastung_last_month} then 'No alert to be sent' else 'Alert to be sent' end
    else 'No alert set' end;;
    html: {% if value == 'Alert to be sent' %}
    <p style="background-color: #FF7F7F">{{ rendered_value }}</p>
    {% elsif value == 'No alert to be sent' %}
    <p style="background-color: lightgreen">{{ rendered_value }}</p>
        {% elsif value == 'No alert set' %}
    <p style="background-color: #ADD8E6">{{ rendered_value }}</p>
    {% endif %} ;;
  }
}

#step 1.6

explore: report {
  hidden: yes
}
