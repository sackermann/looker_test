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
explore: applicable_roles{hidden: yes}
explore: columns{hidden: yes}
explore: databases{hidden: yes}
explore: enabled_roles{hidden: yes}
explore: file_formats{hidden: yes}
explore: functions{hidden: yes}
explore: information_schema_catalog_name{hidden: yes}
explore: load_history{hidden: yes}
explore: object_privileges{hidden: yes}
explore: pipes{hidden: yes}
explore: referential_constraints{hidden: yes}
explore: schemata{hidden: yes}
explore: sequences{hidden: yes}
explore: stages{hidden: yes}
explore: table_constraints{hidden: yes}
explore: table_privileges{hidden: yes}
explore: table_storage_metrics{hidden: yes}
explore: tables{hidden: yes}
explore: usage_privileges{hidden: yes}
explore: views{hidden: yes}
