view: instructor_master {
  sql_table_name: youtube_report.Instructor Master ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: activity_status {
    type: number
    sql: ${TABLE}.`Activity Status` ;;
  }

  dimension: added_time {
    type: string
    sql: ${TABLE}.`Added Time` ;;
  }

  dimension: added_user {
    type: string
    sql: ${TABLE}.`Added User` ;;
  }

  dimension: course {
    type: string
    sql: ${TABLE}.Course ;;
  }

  dimension: creation_time {
    type: string
    sql: ${TABLE}.`Creation Time` ;;
  }

  dimension: edureka_email {
    type: string
    sql: ${TABLE}.`edureka Email` ;;
  }

  dimension: edureka_rating {
    type: number
    sql: ${TABLE}.`edureka Rating` ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_batch_date {
    type: string
    sql: ${TABLE}.`First Batch Date` ;;
  }

  dimension: first_batch_start_date {
    type: string
    sql: ${TABLE}.`First Batch Start Date` ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.Fname ;;
  }

  dimension: is_new_instructor {
    type: string
    sql: ${TABLE}.`Is New Instructor` ;;
  }

  dimension: last_batch_date {
    type: string
    sql: ${TABLE}.`Last Batch Date` ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.`Last Name` ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  dimension: year_month {
    type: string
    sql: ${TABLE}.`Year Month` ;;
  }

  measure: count {
    type: count
    drill_fields: [id, fname, last_name]
  }
}
