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

  dimension: created_year_only {
    hidden: no
    type: date_year
    sql: DATE_PART(year, ${TABLE}."DATE");;
  }

  dimension: created_date_only {
    sql: to_char( ${TABLE}."DATE", 'MM-DD' );;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_households {
    type: sum
    sql: ${hhcount} ;;
  }
}
