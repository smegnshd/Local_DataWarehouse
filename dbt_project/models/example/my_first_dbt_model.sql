
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

-- with source_data as (

    -- select 1 as id
    --union all
    --select null as id

--)

--select *
--from source_data
--*/
with source as (
  select
   * 
 from {{ ref('station_summary') }}
),

stage_station as (
  select
    ID,
    flow_99,
    flow_max,
    flow_median,
    flow_total,
    n_obs,
  from source
)
select 
  *
from stage_station
--/*
    Uncomment the line below to remove records with null `id` values
-- */

-- where id is not null
