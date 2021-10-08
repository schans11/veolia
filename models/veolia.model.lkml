connection: "veolia"

# include all the views
include: "/views/**/*.view"

datagroup: veolia_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
###

persist_with: veolia_default_datagroup

explore: fahrzeugauslastung_kpi {
  join: auslastung_month_niederlassung {
    type: inner
    relationship: many_to_one
    sql_on: ${fahrzeugauslastung_kpi.niederlassung} = ${auslastung_month_niederlassung.niederlassung} ;;
  }
}

explore: ladungsgewichte {}
explore: vuc_ek_konditionen {}

explore: visibility_limitation {
  from: t_berechtigung
  join: fahrzeugauslastung_kpi {
    relationship: one_to_many
    type: inner
    sql_on: ${fahrzeugauslastung_kpi.fi_bk_nr} = ${visibility_limitation.bkrs}
    and ${visibility_limitation.bereich} = 'Fahrzeugauslastung';;
  }
  ##sql_always_where: ${user} = "{{ _user_attributes['email'] }}" ;;
}

explore: visibility_limitation_2 {
  from: email_recipient
  join: fahrzeugauslastung_kpi {
    relationship: one_to_many
    type: left_outer
    sql_on: ${fahrzeugauslastung_kpi.niederlasting_adjusted} = ${visibility_limitation_2.niederlassung} ;;
  }
  sql_always_where: ${responsible} = "{{ _user_attributes['email'] }}"  ;;
}
