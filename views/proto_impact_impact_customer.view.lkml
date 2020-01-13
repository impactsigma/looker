view: pi_customer {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_CUSTOMER ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}."CONTACT_EMAIL" ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}."CUSTOMER" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
