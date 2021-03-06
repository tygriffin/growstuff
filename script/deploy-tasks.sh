#!/bin/bash

# tasks to run at deploy time, usually after 'rake db:migrate'

# When adding tasks, do so in chronological order, and note the date
# when it was added.  This will help us know which ones have been run
# and can safely be commented out or removed.

# Default format is:
# echo "YYYY-MM-DD - do something or other"
# rake growstuff:oneoff:something

echo "2013-10-24 - fix zeroed geolocations"
rake growstuff:depopulate_null_island

echo "2013-10-24 - initialize garden locations"
rake growstuff:oneoff:initialize_garden_locations

echo "2013-10-31 - import plant parts"
rake growstuff:oneoff:import_plant_parts
