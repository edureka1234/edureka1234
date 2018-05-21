view: offer_user_groups {
  sql_table_name: `edureka-prod`.offer_user_groups ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: group_value {
    type: string
    sql: ${TABLE}.group_value ;;
  }

  dimension: offer_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.offer_id ;;
  }

  dimension: user_group_type_id {
    type: number
    sql: ${TABLE}.user_group_type_id ;;
  }

  measure: count {
    type: count
    drill_fields: [id, offers.id]
  }
}