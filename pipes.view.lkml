view: pipes {
  sql_table_name: INFORMATION_SCHEMA.PIPES ;;

  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."CREATED" ;;
  }

  dimension: definition {
    type: string
    sql: ${TABLE}."DEFINITION" ;;
  }

  dimension: is_autoingest_enabled {
    type: string
    sql: ${TABLE}."IS_AUTOINGEST_ENABLED" ;;
  }

  dimension_group: last_altered {
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
    sql: ${TABLE}."LAST_ALTERED" ;;
  }

  dimension: notification_channel_name {
    type: string
    sql: ${TABLE}."NOTIFICATION_CHANNEL_NAME" ;;
  }

  dimension: pipe_catalog {
    type: string
    sql: ${TABLE}."PIPE_CATALOG" ;;
  }

  dimension: pipe_name {
    type: string
    sql: ${TABLE}."PIPE_NAME" ;;
  }

  dimension: pipe_owner {
    type: string
    sql: ${TABLE}."PIPE_OWNER" ;;
  }

  dimension: pipe_schema {
    type: string
    sql: ${TABLE}."PIPE_SCHEMA" ;;
  }

  measure: count {
    type: count
    drill_fields: [pipe_name, notification_channel_name]
  }
}
