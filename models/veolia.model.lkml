connection: "veolia"

# include all the views
include: "/views/**/*.view"

datagroup: veolia_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: veolia_default_datagroup

explore: fahrzeugauslastung_kpi {}
