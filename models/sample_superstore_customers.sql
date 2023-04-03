select        customers.customer_id,
              customers.customer_name,
              segments.segment
from          {{ source('datalake', 'sample_superstore_customers') }}           customers
  left join   {{ source('datalake', 'sample_superstore_segments') }}            segments
    on        segments.segment_id = customers.segment_id
