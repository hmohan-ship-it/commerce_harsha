# If necessary, uncomment the line below to include explore_source.
# include: "commerce_harsha.model.lkml"

view: Order_count_pdt {
  derived_table: {

    explore_source: orders {
      column: id {}
      column: created_date {}
      column: status {}
      column: user_id {}
      column: count {}
    }
    indexes: ["id","created_date"]
    persist_for: "8 hours"
    datagroup_trigger: commerce_harsha_default_datagroup
  }
  dimension: count {
    description: ""
    type: number

  }
}

view: orders {
  sql_table_name: demo_db.orders ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }}

