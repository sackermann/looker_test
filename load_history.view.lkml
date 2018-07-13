view: load_history {
  sql_table_name: INFORMATION_SCHEMA.LOAD_HISTORY ;;

  dimension: error_count {
    type: number
    sql: ${TABLE}."ERROR_COUNT" ;;
  }

  dimension: error_limit {
    type: number
    sql: ${TABLE}."ERROR_LIMIT" ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}."FILE_NAME" ;;
  }

  dimension: first_error_character_position {
    type: number
    sql: ${TABLE}."FIRST_ERROR_CHARACTER_POSITION" ;;
  }

  dimension: first_error_col_name {
    type: string
    sql: ${TABLE}."FIRST_ERROR_COL_NAME" ;;
  }

  dimension: first_error_line_number {
    type: number
    sql: ${TABLE}."FIRST_ERROR_LINE_NUMBER" ;;
  }

  dimension: first_error_message {
    type: string
    sql: ${TABLE}."FIRST_ERROR_MESSAGE" ;;
  }

  dimension_group: last_load {
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
    sql: ${TABLE}."LAST_LOAD_TIME" ;;
  }

  dimension: row_count {
    type: number
    sql: ${TABLE}."ROW_COUNT" ;;
  }

  dimension: row_parsed {
    type: number
    sql: ${TABLE}."ROW_PARSED" ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [schema_name, file_name, table_name, first_error_col_name]
  }
}
