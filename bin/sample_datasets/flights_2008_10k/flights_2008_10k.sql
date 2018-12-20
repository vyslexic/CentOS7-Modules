drop table if exists flights_2008_10k;
create table flights_2008_10k (
  flight_year smallint,
  flight_month smallint,
  flight_dayofmonth smallint,
  flight_dayofweek smallint,
  deptime smallint,
  crsdeptime smallint,
  arrtime smallint,
  crsarrtime smallint,
  uniquecarrier text encoding dict,
  flightnum smallint,
  tailnum text encoding dict,
  actualelapsedtime smallint,
  crselapsedtime smallint,
  airtime smallint,
  arrdelay smallint,
  depdelay smallint,
  origin text encoding dict,
  dest text encoding dict,
  distance smallint,
  taxiin smallint,
  taxiout smallint,
  cancelled smallint,
  cancellationcode text encoding dict,
  diverted smallint,
  carrierdelay smallint,
  weatherdelay smallint,
  nasdelay smallint,
  securitydelay smallint,
  lateaircraftdelay smallint,
  dep_timestamp timestamp(0),
  arr_timestamp timestamp(0),
  carrier_name text encoding dict,
  plane_type text encoding dict,
  plane_manufacturer text encoding dict,
  plane_issue_date date,
  plane_model text encoding dict,
  plane_status text encoding dict,
  plane_aircraft_type text encoding dict,
  plane_engine_type text encoding dict,
  plane_year smallint,
  origin_name text encoding dict,
  origin_city text encoding dict,
  origin_state text encoding dict,
  origin_country text encoding dict,
  origin_lat real,
  origin_lon real,
  dest_name text encoding dict,
  dest_city text encoding dict,
  dest_state text encoding dict,
  dest_country text encoding dict,
  dest_lat real,
  dest_lon real,
  origin_merc_x real,
  origin_merc_y real,
  dest_merc_x real,
  dest_merc_y real
) with (fragment_size = 2000000);