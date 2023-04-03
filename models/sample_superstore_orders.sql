select        details.row_id,
              details.order_id,
              details.product_id,
              details.sales,
              details.quantity,
              details.discount,
              details.profit,
              orders.order_date,
              orders.ship_date,
              orders.ship_mode_id,
              orders.customer_id,
              orders.city_id,
              orders.postal_code
from          {{ source('datalake', 'sample_superstore_details') }}             details
  left join   {{ source('datalake', 'sample_superstore_orders') }}              orders
    on        orders.order_id = details.order_id
