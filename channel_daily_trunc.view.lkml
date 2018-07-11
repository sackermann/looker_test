view: channel_daily_trunc {
  sql_table_name: PUBLIC.CHANNEL_DAILY_TRUNC ;;

  dimension: c1 {
    type: string
    sql: ${TABLE}."C1" ;;
  }

  dimension: c10 {
    type: string
    sql: ${TABLE}."C10" ;;
  }

  dimension: c11 {
    type: string
    sql: ${TABLE}."C11" ;;
  }

  dimension: c12 {
    type: string
    sql: ${TABLE}."C12" ;;
  }

  dimension: c13 {
    type: string
    sql: ${TABLE}."C13" ;;
  }

  dimension_group: c14 {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."C14" ;;
  }

  dimension: c15 {
    type: string
    sql: ${TABLE}."C15" ;;
  }

  dimension: c16 {
    type: string
    sql: ${TABLE}."C16" ;;
  }

  dimension: c17 {
    type: number
    sql: ${TABLE}."C17" ;;
  }

  dimension: c2 {
    type: string
    sql: ${TABLE}."C2" ;;
  }

  dimension: c3 {
    type: string
    sql: ${TABLE}."C3" ;;
  }

  dimension: c4 {
    type: string
    sql: ${TABLE}."C4" ;;
  }

  dimension: c5 {
    type: number
    sql: ${TABLE}."C5" ;;
  }

  dimension: c6 {
    type: string
    sql: ${TABLE}."C6" ;;
  }

  dimension: c7 {
    type: string
    sql: ${TABLE}."C7" ;;
  }

  dimension: c8 {
    type: string
    sql: ${TABLE}."C8" ;;
  }

  dimension: c9 {
    type: string
    sql: ${TABLE}."C9" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_households {
    type: sum
    sql: ${c17} ;;
  }
}
