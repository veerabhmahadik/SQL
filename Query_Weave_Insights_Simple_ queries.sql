use world;
select * from country;
select code, name from country;
select * from city;
select CountryCode from city;
select distinct CountryCode from city;
select Name, CountryCode, Population/1000 from city;
select ID, Name, Population from city where CountryCode = 'USA';
select ID, Name, Population from city where CountryCode = 'IND' and Population > 1000000;
select ID, Name, Population from city where Population between 1000000 and 10000000;
select Code, Name from country where Continent in ('Asia','Africa');
select Code, Name from country where GovernmentForm like '%Republic%';
select Code, Name from country where IndepYear is null;
select count(*) from country where GovernmentForm = 'Republic';
select count(Region) from country where GovernmentForm = 'Republic';
select count(distinct Region) from country where GovernmentForm = 'Republic';
select sum(GNP) from country where GovernmentForm = 'Republic';
select avg(GNP) from country where GovernmentForm = 'Republic';
select avg(distinct GNP) from country where GovernmentForm = 'Republic';