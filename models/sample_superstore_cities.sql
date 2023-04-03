select        cities.city_id,
              cities.city,
              states.state,
              regions.region_id,
              regions.region,
              countries.country
from          datalake.sample_superstore_cities                      cities
  left join   datalake.sample_superstore_states                      states
    on        states.state_id = cities.state_id
  left join   datalake.sample_superstore_regions                     regions
    on        regions.region_id = states.region_id
  left join   datalake.sample_superstore_countries                   countries
    on        countries.country_id = regions.country_id
