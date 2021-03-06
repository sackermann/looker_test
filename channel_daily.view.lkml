view: channel_daily {
  sql_table_name: PUBLIC.CHANNEL_DAILY ;;

  dimension: channel_name {
    type: string
    sql: ${TABLE}."CHANNEL_NAME" ;;
  }

  dimension: channelgenre {
    type: string
    sql: ${TABLE}."CHANNELGENRE" ;;
  }

  dimension: channellongname {
    type: string
    sql: ${TABLE}."CHANNELLONGNAME" ;;
  }

  dimension: channelobjid {
    type: number
    value_format_name: id
    sql: ${TABLE}."CHANNELOBJID" ;;
  }

  dimension: channelshortname {
    type: string
    sql: ${TABLE}."CHANNELSHORTNAME" ;;
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
    sql: ${TABLE}."DATE" ;;
  }

  dimension: dma_cd {
    type: string
    sql: ${TABLE}."DMA_CD" ;;
  }

  dimension: finalchannelname {
    type: string
    sql: ${TABLE}."FINALCHANNELNAME" ;;
  }

  dimension: hhcount {
    type: number
    sql: ${TABLE}."HHCOUNT" ;;
  }

  dimension: local_chang_flg {
    type: string
    sql: ${TABLE}."LOCAL_CHANG_FLG" ;;
  }

  dimension: majorchannel {
    type: string
    sql: ${TABLE}."MAJORCHANNEL" ;;
  }

  dimension: minorchannel {
    type: string
    sql: ${TABLE}."MINORCHANNEL" ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}."PLATFORM" ;;
  }

  dimension: playbacktype {
    type: string
    sql: ${TABLE}."PLAYBACKTYPE" ;;
  }

  dimension: premiumsuite {
    type: string
    sql: ${TABLE}."PREMIUMSUITE" ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}."REGION" ;;
  }

  dimension: resolution {
    type: string
    sql: ${TABLE}."RESOLUTION" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [date, month, day_of_week, day_of_week_index, day_of_year, year, raw]
    sql: ${TABLE}."DATE" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [time, date, week, month, raw]
    sql: ${TABLE}."DATE" ;;
  }

  measure: last_updated_date {
    type: date
    sql: MAX(${updated_raw}) ;;
    convert_tz: no
  }

  dimension: until_this_day {
    type: yesno
    sql: ${created_day_of_year} <= DAYOFYEAR(current_date) AND ${created_day_of_year} >= 0 ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_households {
    type: sum
    sql: ${TABLE}."HHCOUNT" ;;
    drill_fields: [created_month, total_households]
  }
}
