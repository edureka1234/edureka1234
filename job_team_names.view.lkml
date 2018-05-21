view: job_team_names {
  sql_table_name: `edureka-prod`.job_team_names ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: team_description {
    type: string
    sql: ${TABLE}.team_description ;;
  }

  dimension: team_name {
    type: string
    sql: ${TABLE}.team_name ;;
  }

  measure: count {
    type: count
    drill_fields: [id, team_name, job_openings.count]
  }
}