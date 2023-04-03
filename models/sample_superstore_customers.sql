select        customers.customer_id,
              customers.customer_name,
              segments.segment
from          datalake.sample_superstore_customers                   customers
  left join   datalake.sample_superstore_segments                    segments
    on        segments.segment_id = customers.segment_id
