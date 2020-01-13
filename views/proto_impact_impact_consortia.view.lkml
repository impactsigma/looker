view: pi_consortia {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_CONSORTIA ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: consortia {
    type: string
    sql: ${TABLE}."CONSORTIA" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: is_joinable {
    type: number
    sql: ${TABLE}."IS_JOINABLE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
