view: proto_impact_get_all_customers {
  derived_table: {
    sql: SELECT * FROM PROTO_IMPACT_IMPACT_CUSTOMER
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}."CONTACT_EMAIL" ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}."CUSTOMER" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."ID" ;;
  }

  set: detail {
    fields: [contact_email, customer, id]
  }
}
