-- complain if script is sourced in psql, rather than via CREATE EXTENSION
\echo Use "CREATE EXTENSION hv_date_functions" to load this file. \quit

create or replace function year(timestamp) returns integer as $$ begin return extract(year from $1); end $$ language plpgsql ;
create or replace function month(timestamp) returns integer as $$ begin return extract(month from $1); end $$ language plpgsql ;
