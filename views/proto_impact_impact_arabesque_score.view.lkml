view: pi_arabesque_score {
  sql_table_name: PUBLIC.PROTO_IMPACT_IMPACT_ARABESQUE_SCORE ;;
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

  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: esg_country_rank {
    type: number
    sql: ${TABLE}."ESG_COUNTRY_RANK" ;;
  }

  dimension: esg_sector_rank {
    type: number
    sql: ${TABLE}."ESG_SECTOR_RANK" ;;
  }

  dimension: gc_country_rank {
    type: number
    sql: ${TABLE}."GC_COUNTRY_RANK" ;;
  }

  dimension: gc_sector_rank {
    type: number
    sql: ${TABLE}."GC_SECTOR_RANK" ;;
  }

  dimension: score_esg {
    type: number
    sql: ${TABLE}."SCORE_ESG" ;;
  }

  dimension: score_gc {
    type: number
    sql: ${TABLE}."SCORE_GC" ;;
  }

  dimension: sector {
    type: string
    sql: ${TABLE}."SECTOR" ;;
  }

  dimension: temperature_long_term {
    type: string
    sql: ${TABLE}."TEMPERATURE_LONG_TERM" ;;
  }

  dimension: temperature_near_term {
    type: string
    sql: ${TABLE}."TEMPERATURE_NEAR_TERM" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, company_name]
  }
}
