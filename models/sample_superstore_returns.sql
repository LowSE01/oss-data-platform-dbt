select        returns.return_id,
              returns.returned,
              returns.order_id
from          {{ source('datalake', 'sample_superstore_returns') }}             returns
