view: channel_daily_trunc {
  sql_table_name: PUBLIC.CHANNEL_DAILY_TRUNC ;;

  dimension: channel_name {
    type: string
    sql: ${TABLE}."channel_name" ;;
  }

  dimension: channelgenre {
    type: string
    sql: ${TABLE}."channelgenre" ;;
  }

  dimension: channellongname {
    type: string
    sql: ${TABLE}."channellongname" ;;
  }

  dimension: channelobjid {
    type: number
    value_format_name: id
    sql: ${TABLE}."channelobjid" ;;
  }

  dimension: channelshortname {
    type: string
    sql: ${TABLE}."channelshortname" ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}."date" ;;
  }

  dimension: dma_cd {
    type: string
    sql: ${TABLE}."dma_cd" ;;
  }

  dimension: finalchannelname {
    type: string
    sql: ${TABLE}."finalchannelname" ;;
  }

  dimension: hh_count {
    type: number
    sql: ${TABLE}."hhCount" ;;
  }

  dimension: hh_hours {
    type: number
    sql: ${TABLE}."hhHours" ;;
  }

  dimension: local_chang_flg {
    type: string
    sql: ${TABLE}."local_chang_flg" ;;
  }

  dimension: majorchannel {
    type: string
    sql: ${TABLE}."majorchannel" ;;
  }

  dimension: minorchannel {
    type: string
    sql: ${TABLE}."minorchannel" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."platform" ;;
  }

  dimension: playbacktype {
    type: string
    sql: ${TABLE}."playbacktype" ;;
  }

  dimension: premiumsuite {
    type: string
    sql: ${TABLE}."premiumsuite" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."region" ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}."resolution" ;;
  }

  measure: count {
    type: count
    drill_fields: [channelshortname, channellongname, channel_name, finalchannelname]
  }

  measure: households {
    type: number
    sql: ${TABLE}."hhCount" ;;
  }

  measure: hours {
    type: number
    sql: ${TABLE}."hhHours" ;;
    value_format: "0.##"
  }

  measure: total_households {
    type: sum
    sql: ${TABLE}."hhCount" ;;
    drill_fields: [created_month, created_date, created_year, created_day_of_week_index]
  }

  measure: total_hours {
    type: sum
    sql: ${TABLE}."hhHours" ;;
  }

  measure: avg_hour_per_channel {
    type: number
    sql: ${TABLE}."hhHours"/${TABLE}."hhCount" ;;
    value_format: "0.00%"
  }

  measure: avg_hours {
    type: average
    sql: ${TABLE}."hhHours";;
    value_format: "#,##0.00"
  }

  dimension_group: created {
    type: time
    timeframes: [date, month, day_of_week, day_of_week_index, day_of_year, year]
    sql: ${TABLE}."date" ;;
  }

  dimension: until_this_day {
    type: yesno
    sql: ${created_day_of_year} <= DAYOFYEAR(current_date) AND ${created_day_of_year} >= 0 ;;
  }

  measure: lastest_date {
    type: date
    sql: MAX(${TABLE}."date" ;;
  }
}
