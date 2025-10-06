view: liquid {
dimension: Liquid_Sub {
  type: number
  sql:
    {% assign my_value = '8' | times: 1 %}

              SELECT {{ my_value | minus: 4 }}
              ;;
}}
