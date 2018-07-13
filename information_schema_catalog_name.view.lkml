view: information_schema_catalog_name {
  sql_table_name: INFORMATION_SCHEMA.INFORMATION_SCHEMA_CATALOG_NAME ;;

  dimension: catalog_name {
    type: string
    sql: ${TABLE}."CATALOG_NAME" ;;
  }

  measure: count {
    type: count
    drill_fields: [catalog_name]
  }
}
