view: pi_campaign_activity {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_CAMPAIGN_ACTIVITY ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: campaign_id {
    type: number
    sql: ${TABLE}."CAMPAIGN_ID" ;;
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

  dimension: response_count {
    type: number
    sql: ${TABLE}."RESPONSE_COUNT" ;;
  }

  dimension: response_running_total {
    type: number
    sql: ${TABLE}."RESPONSE_RUNNING_TOTAL" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }

  measure: total_responses {
    type: sum
    sql: ${response_count} ;;
  }

}
