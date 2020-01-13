view: pi_campaign {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_CAMPAIGN ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}."CAMPAIGN" ;;
  }

  dimension_group: due {
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
    sql: ${TABLE}."DUE_DATE" ;;
  }

  dimension: number_sent {
    type: number
    sql: ${TABLE}."NUMBER_SENT" ;;
  }

  dimension: response_count {
    type: number
    sql: ${TABLE}."RESPONSE_COUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
