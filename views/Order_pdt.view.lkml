# If necessary, uncomment the line below to include explore_source.
# include: "commerce_harsha.model.lkml"

view: add_a_unique_name_1759913216 {
  derived_table: {
    explore_source: orders {
      column: created_date {}
      column: id {}
      column: status {}
      column: user_id {}
      column: count {}
    }
    datagroup_trigger: order_count_datagroup
    indexes: ["id", "created_date"]

  }
  dimension: created_date {
    description: ""
    type: date
  }
  dimension: id {
    description: ""
    type: number
  }
  dimension: status {
    description: ""
  }
  dimension: user_id {
    description: ""
    type: number
  }
  dimension: count {
    description: ""
    type: number
  }
}
