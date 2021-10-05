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

explore: visibility_limitation {
  from: t_berechtigung
  join: fahrzeugauslastung_kpi {
    relationship: one_to_many
    type: inner
    sql_on: ${fahrzeugauslastung_kpi.fi_bk_nr} = ${visibility_limitation.bkrs}
    and ${visibility_limitation.bereich} = 'Fahrzeugauslastung';;
  }
  sql_always_where: ${user} = "{{ _user_attributes['email'] }}" ;;
}
