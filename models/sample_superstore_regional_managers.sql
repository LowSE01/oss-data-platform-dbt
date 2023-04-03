select        regional_managers.regional_manager_id,
              regional_managers.regional_manager,
              regional_managers.region_id
from          {{ source('datalake', 'sample_superstore_regional_managers') }}   regional_managers
