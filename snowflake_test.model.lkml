connection: "snowflake_dev_connection"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: snowflake_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "5 minutes"
}

persist_with: snowflake_test_default_datagroup

explore: channel_daily{}
explore: channel_daily_trunc{}



# ALL OF THE SNOWFLAKE PERFORMANCE VIEWS
explore: columns{}
explore: load_history{}
explore: table_storage_metrics{}
explore: tables{}
