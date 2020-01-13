connection: "snowflake_platform"

include: "*.view.lkml"                       # include all views in this project
include: "/views/*.view.lkml"                # include all views in the "views" folder in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
# explore: order_items {
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

explore: pi_consortia {
  label: "PI Consortia"
  }

# model and explore for ImpactSigma app prototype 12/11/2019 1:51 PM
explore: pi_customer_company_data {
  view_name: pi_customer
  label: "PI Customer Data"
  join:  pi_customer_company {
    from: pi_customer_company
    relationship: many_to_one
    sql_on: ${pi_customer.id} = ${pi_customer_company.customer_id} ;;
  }
  join:  pi_company {
    from: pi_company
    relationship: one_to_many
    sql_on: ${pi_company.id} = ${pi_customer_company.company_id} ;;
  }
  join:  pi_consortia_member {
    from:  pi_consortia_member
    relationship: one_to_many
    sql_on: ${pi_consortia_member.company_id} = ${pi_company.id} ;;
  }
  join:  pi_consortia {
    from:  pi_consortia
    relationship: one_to_many
    sql_on: ${pi_consortia.id} = ${pi_consortia_member.consortia_id} ;;
  }
  join:  pi_score_arabesque {
    from:  pi_arabesque_score
    relationship: one_to_many
    sql_on: ${pi_company.id} = ${pi_score_arabesque.company_id} ;;
  }
  join:  pi_score_sustainalytics {
    from:  pi_sustainalytics_score
    relationship: one_to_many
    sql_on: ${pi_company.id} = ${pi_score_sustainalytics.company_id} ;;
  }
  join:  pi_parent_company {
    from: pi_company
    relationship: many_to_one
    sql_on: ${pi_company.parent_id} = ${pi_parent_company.id} ;;
  }
  join:  pi_parent_consortia_member {
    from:  pi_consortia_member
    relationship: one_to_many
    sql_on: ${pi_parent_company.id} = ${pi_parent_consortia_member.company_id} ;;
  }
  join:  pi_parent_consortia {
    from:  pi_consortia
    relationship: one_to_many
    sql_on: ${pi_consortia_member.consortia_id} = ${pi_parent_consortia.id} ;;
  }
  join:  pi_parent_score_arabesque {
    from:  pi_arabesque_score
    relationship: one_to_many
    sql_on: ${pi_parent_company.id} = ${pi_parent_score_arabesque.company_id} ;;
  }
  join:  pi_parent_score_sustainalytics {
    from:  pi_sustainalytics_score
    relationship: one_to_many
    sql_on: ${pi_parent_company.id} = ${pi_parent_score_sustainalytics.company_id} ;;
  }
}

explore: pi_campaign {
  view_name: pi_campaign
  label: "PI Campaigns"

  join:  pi_campaign_activity {
    from:  pi_campaign_activity
    relationship: one_to_many
    sql_on: ${pi_campaign.id} = ${pi_campaign_activity.campaign_id} ;;
  }

}
