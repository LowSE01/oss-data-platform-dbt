select        ship_modes.ship_mode_id                       as ship_mode_id,
              ship_modes.ship_mode                          as ship_mode
from          {{ source('datalake', 'sample_superstore_ship_modes') }}          ship_modes
