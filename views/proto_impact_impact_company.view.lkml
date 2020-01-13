view: pi_company {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_COMPANY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: company {
    type: string
    sql: ${TABLE}."COMPANY" ;;
  }

  dimension: exchange {
    type: string
    sql: ${TABLE}."EXCHANGE" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: is_public {
    type: number
    sql: ${TABLE}."IS_PUBLIC" ;;
  }

  dimension: parent_id {
    type: number
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: stock_currency {
    type: string
    sql: ${TABLE}."STOCK_CURRENCY" ;;
  }

  dimension: ticker {
    type: string
    sql: ${TABLE}."TICKER" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
