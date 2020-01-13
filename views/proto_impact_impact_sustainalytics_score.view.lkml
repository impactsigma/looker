view: pi_sustainalytics_score {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_SUSTAINALYTICS_SCORE ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  dimension: company_id {
    type: number
    sql: ${TABLE}."COMPANY_ID" ;;
  }

  dimension_group: data {
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
    sql: ${TABLE}."DATA_DATE" ;;
  }

  dimension: environment_percentile {
    type: number
    sql: ${TABLE}."ENVIRONMENT_PERCENTILE" ;;
  }

  dimension: environment_score {
    type: number
    sql: ${TABLE}."ENVIRONMENT_SCORE" ;;
  }

  dimension: esg_performance_display {
    type: string
    sql: ${TABLE}."ESG_PERFORMANCE_DISPLAY" ;;
  }

  dimension: governance_percentile {
    type: number
    sql: ${TABLE}."GOVERNANCE_PERCENTILE" ;;
  }

  dimension: governance_score {
    type: number
    sql: ${TABLE}."GOVERNANCE_SCORE" ;;
  }

  dimension: highest_controversy {
    type: number
    sql: ${TABLE}."HIGHEST_CONTROVERSY" ;;
  }

  dimension: peer_environment_perf_avg {
    type: number
    sql: ${TABLE}."PEER_ENVIRONMENT_PERF_AVG" ;;
  }

  dimension: peer_environment_perf_max {
    type: number
    sql: ${TABLE}."PEER_ENVIRONMENT_PERF_MAX" ;;
  }

  dimension: peer_environment_perf_min {
    type: number
    sql: ${TABLE}."PEER_ENVIRONMENT_PERF_MIN" ;;
  }

  dimension: peer_governance_perf_avg {
    type: number
    sql: ${TABLE}."PEER_GOVERNANCE_PERF_AVG" ;;
  }

  dimension: peer_governance_perf_max {
    type: number
    sql: ${TABLE}."PEER_GOVERNANCE_PERF_MAX" ;;
  }

  dimension: peer_governance_perf_min {
    type: number
    sql: ${TABLE}."PEER_GOVERNANCE_PERF_MIN" ;;
  }

  dimension: peer_highest_controversy_avg {
    type: number
    sql: ${TABLE}."PEER_HIGHEST_CONTROVERSY_AVG" ;;
  }

  dimension: peer_highest_controversy_max {
    type: number
    sql: ${TABLE}."PEER_HIGHEST_CONTROVERSY_MAX" ;;
  }

  dimension: peer_highest_controversy_min {
    type: number
    sql: ${TABLE}."PEER_HIGHEST_CONTROVERSY_MIN" ;;
  }

  dimension: peer_social_perf_avg {
    type: number
    sql: ${TABLE}."PEER_SOCIAL_PERF_AVG" ;;
  }

  dimension: peer_social_perf_max {
    type: number
    sql: ${TABLE}."PEER_SOCIAL_PERF_MAX" ;;
  }

  dimension: peer_social_perf_min {
    type: number
    sql: ${TABLE}."PEER_SOCIAL_PERF_MIN" ;;
  }

  dimension: product_involvement_alcohol {
    type: number
    sql: ${TABLE}."PRODUCT_INVOLVEMENT_ALCOHOL" ;;
  }

  dimension: product_involvement_coal {
    type: number
    sql: ${TABLE}."PRODUCT_INVOLVEMENT_COAL" ;;
  }

  dimension: product_involvement_controversial_weapons {
    type: number
    sql: ${TABLE}."PRODUCT_INVOLVEMENT_CONTROVERSIAL_WEAPONS" ;;
  }

  dimension: product_involvement_gmo {
    type: number
    sql: ${TABLE}."PRODUCT_INVOLVEMENT_GMO" ;;
  }

  dimension: product_involvement_palm_oil {
    type: number
    sql: ${TABLE}."PRODUCT_INVOLVEMENT_PALM_OIL" ;;
  }

  dimension: rating_month {
    type: number
    sql: ${TABLE}."RATING_MONTH" ;;
  }

  dimension: rating_year {
    type: number
    sql: ${TABLE}."RATING_YEAR" ;;
  }

  dimension: social_percentile {
    type: number
    sql: ${TABLE}."SOCIAL_PERCENTILE" ;;
  }

  dimension: social_score {
    type: number
    sql: ${TABLE}."SOCIAL_SCORE" ;;
  }

  dimension: total_esg {
    type: number
    sql: ${TABLE}."TOTAL_ESG" ;;
  }

  dimension: total_percentile {
    type: number
    sql: ${TABLE}."TOTAL_PERCENTILE" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
