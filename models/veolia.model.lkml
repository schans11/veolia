connection: "veolia"

# include all the views
include: "/views/**/*.view"

datagroup: veolia_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}
###

persist_with: veolia_default_datagroup

explore: fahrzeugauslastung_kpi {}





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

explore: auslastung_6month_niederlassung {
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
}
