connection: "veolia"

# include all the views
include: "/views/**/*.view"

datagroup: veolia_new_month {
  sql_trigger: SELECT max(monaten) FROM de-ist-ve-bi.looker_test.00_1_Fahrzeugauslastung_KPI;;
}

explore: fahrzeugauslastung_kpi {}

explore: visibility_limitation_1 {
  hidden: yes
  from: t_berechtigung
  join: fahrzeugauslastung_kpi {
    relationship: one_to_many
    type: inner
    sql_on: ${fahrzeugauslastung_kpi.fi_bk_nr} = ${visibility_limitation_1.bkrs}
    and ${visibility_limitation_1.bereich} = 'Fahrzeugauslastung';;
  }
}

explore: visibility_limitation_2 {
  hidden: yes
  from: email_recipient
  join: fahrzeugauslastung_kpi {
    relationship: one_to_many
    type: left_outer
    sql_on: ${fahrzeugauslastung_kpi.niederlassung_adjusted} = ${visibility_limitation_2.niederlassung} ;;
  }
  sql_always_where: ${responsible} = "{{ _user_attributes['email'] }}"  ;;
}

explore: ladungsgewichte {
  group_label: "2. Philip"
}
explore: vuc_ek_konditionen {
  group_label: "2. Philip"
}
explore: frachtbeauftragungen_u_kosten {
  group_label: "2. Philip"
}
