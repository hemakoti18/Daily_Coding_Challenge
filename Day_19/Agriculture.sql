# Create database Agriculture
create database Agriculture;
# use database
use agriculture ;

# Create Tables
# 1.Farmers
CREATE TABLE farmers ( 
    farmer_id INT PRIMARY KEY, 
    first_name VARCHAR(50), 
    last_name VARCHAR(50), 
    email VARCHAR(100), 
    hire_date DATE 
); 
# 2.Plots 
CREATE TABLE plots ( 
    plot_id INT PRIMARY KEY, 
    plot_name VARCHAR(100), 
    farmer_id INT, 
    crop_type VARCHAR(50), 
    soil_type VARCHAR(50), 
    FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id) 
); 
# 3.Yields
CREATE TABLE yields ( 
    yield_id INT PRIMARY KEY, 
    plot_id INT, 
    harvest_date DATE, 
    yield_kg DECIMAL(10,2), 
    weather_condition VARCHAR(50), 
    FOREIGN KEY (plot_id) REFERENCES plots(plot_id) 
); 
# irrigation logs
CREATE TABLE irrigation_logs ( 
log_id INT PRIMARY KEY, 
plot_id INT, 
irrigation_date DATE, 
water_amount_liters DECIMAL(10,2), 
FOREIGN KEY (plot_id) REFERENCES plots(plot_id) 
); 
# Farmers 
INSERT INTO farmers VALUES 
(1,'Ravi','Kumar','ravi@gmail.com','2022-01-10'), 
(2,'Sita','Reddy','sita@gmail.com','2021-05-12'), 
(3,'Arjun','Naidu','arjun@gmail.com','2020-03-15'), 
(4,'Meena','Iyer','meena@gmail.com','2023-02-20'), 
(5,'Kiran','Patel','kiran@gmail.com','2021-11-01'), 
(6,'Anil','Sharma','anil@gmail.com','2020-09-09'), 
(7,'Lakshmi','Devi','lakshmi@gmail.com','2022-07-17'), 
(8,'Vikram','Singh','vikram@gmail.com','2023-01-01'), 
(9,'Pooja','Gupta','pooja@gmail.com','2021-08-19'), 
(10,'Rahul','Verma','rahul@gmail.com','2022-06-06'), 
(11,'Sneha','Kapoor','sneha@gmail.com','2020-12-12'), 
(12,'Manoj','Das','manoj@gmail.com','2021-03-03'), 
(13,'Divya','Nair','divya@gmail.com','2023-04-14'), 
(14,'Ramesh','Yadav','ramesh@gmail.com','2022-10-10'), 
(15,'Geeta','Joshi','geeta@gmail.com','2021-09-25'), 
(16,'Suresh','Mishra','suresh@gmail.com','2020-02-28'), 
(17,'Nisha','Khan','nisha@gmail.com','2023-06-06'), 
(18,'Amit','Chopra','amit@gmail.com','2022-11-11'), 
(19,'Deepak','Roy','deepak@gmail.com','2021-01-21'), 
(20,'Neha','Bansal','neha@gmail.com','2020-05-05'); 
# Plots 
INSERT INTO plots VALUES 
(1,'West Field',1,'Wheat','Loam'), 
(2,'North Field',2,'Rice','Clay'), 
(3,'East Field',3,'Corn','Sand'), 
(4,'South Field',4,'Wheat','Clay'), 
(5,'Green Land',5,'Soybeans','Loam'), 
(6,'River Side',6,'Rice','Clay'), 
(7,'Hill Top',7,'Corn','Sand'), 
(8,'Sunrise Plot',8,'Wheat','Loam'), 
(9,'Sunset Plot',9,'Rice','Clay'), 
(10,'Valley Plot',10,'Soybeans','Loam'), 
(11,'Lake View',11,'Corn','Sand'), 
(12,'Dry Land',12,'Wheat','Clay'), 
(13,'Rain Field',13,'Rice','Loam'), 
(14,'Cool Plot',14,'Soybeans','Sand'), 
(15,'Hot Plot',15,'Corn','Loam'), 
(16,'Delta Farm',16,'Rice','Clay'), 
(17,'Organic Field',17,'Wheat','Loam'), 
(18,'Fresh Land',18,'Soybeans','Sand'), 
(19,'Golden Field',19,'Corn','Loam'), 
(20,'Silver Field',20,'Rice','Clay'); 
# Yields 
INSERT INTO yields VALUES 
(1,1,'2025-01-10',500,'Sunny'), 
(2,2,'2025-01-12',600,'Rainy'), 
(3,3,'2025-01-15',450,'Mild'), 
(4,4,'2025-02-10',520,'Sunny'), 
(5,5,'2025-02-15',480,'Rainy'), 
(6,6,'2025-02-20',610,'Sunny'), 
(7,7,'2025-03-01',430,'Mild'), 
(8,8,'2025-03-05',550,'Sunny'), 
(9,9,'2025-03-10',620,'Rainy'), 
(10,10,'2025-03-15',470,'Mild'), 
(11,11,'2025-04-01',440,'Sunny'), 
(12,12,'2025-04-05',510,'Rainy'), 
(13,13,'2025-04-10',630,'Sunny'), 
(14,14,'2025-04-15',460,'Mild'), 
(15,15,'2025-05-01',420,'Sunny'), 
(16,16,'2025-05-05',640,'Rainy'), 
(17,17,'2025-05-10',560,'Sunny'), 
(18,18,'2025-05-15',480,'Mild'), 
(19,19,'2025-06-01',450,'Sunny'), 
(20,20,'2025-06-05',650,'Rainy'); 
# Irrigation Logs 
INSERT INTO irrigation_logs VALUES 
(1,1,'2025-01-05',1000), 
(2,2,'2025-01-06',1200), 
(3,3,'2025-01-07',900), 
(4,4,'2025-02-05',1100), 
(5,5,'2025-02-06',950), 
(6,6,'2025-02-07',1300), 
(7,7,'2025-03-02',850), 
(8,8,'2025-03-03',1050), 
(9,9,'2025-03-04',1250), 
(10,10,'2025-03-05',980), 
(11,11,'2025-04-02',870), 
(12,12,'2025-04-03',1020), 
(13,13,'2025-04-04',1350), 
(14,14,'2025-04-05',920), 
(15,15,'2025-05-02',890), 
(16,16,'2025-05-03',1400), 
(17,17,'2025-05-04',1080), 
(18,18,'2025-05-05',960), 
(19,19,'2025-06-02',910), 
(20,20,'2025-06-03',1450); 

# Tasks
# Write SQL queries to answer the following questions. Provide the queries and the resulting  tables. 
# 1. Productivity & Performance 
# • Identify the top 3 most productive plots based on average yield per harvest. Show the plot_name, crop_type, and average_yield_kg.
select p.plot_name,
       p.crop_type, 
       round(avg(yield_kg),0) as avg_field
from plots p
join yields y on y.plot_id = p.plot_id
group by p.plot_name, p.crop_type
order by avg_field desc limit 3 ;

# • Calculate the total water consumption for each plot and rank them from highest to lowest. Show plot_name and total_water_liters.
select 
     row_number() over(order by sum(water_amount_liters) desc) as sl_no,
     plot_name,
     sum(water_amount_liters) as total_water_liters
from plots p
join irrigation_logs i on i.plot_id = p.plot_id 
group by p.plot_name ;
     
# 2. Yield & Environmental Analysis 
# • Determine the average yield for each crop type under different weather conditions. The output should have crop_type, weather_condition, and average_yield_kg. 
select 
    row_number() over(order by crop_type asc) as sl_no,
    crop_type,
    weather_condition,
    round(avg(yield_kg),0) as avg_yield
from plots p
join yields y on y.plot_id = p.plot_id
group by y.weather_condition, crop_type ;

# • Find the highest-yielding plot for each soil type. Show the soil_type, plot_name, and highest_yield_kg.
select 
    p1.soil_type,
    p1.plot_name,
    y1.yield_kg
from plots p1 
join yields y1 on y1.plot_id = p1.plot_id
where y1.yield_kg = ( select max(y2.yield_kg) from yields y2 
                       join plots p2 on p2.plot_id = y2.plot_id
                       where p2.soil_type = p1.soil_type ) ;

# 3. Farmer & Resource Management 
# • Identify the farmer who manages the plots with the lowest average water consumption. Show the first_name, last_name, and their plots' average_water_liters_per_plot.
select format(avg(water_amount_liters),0) as avg_water from irrigation_logs ;

with sub as
            (select 
                  row_number() over(order by round(avg(i1.water_amount_liters),0)) as sl_no,
                  f1.farmer_id,
                  f1.first_name,
                  f1.last_name,
                  round(avg(i1.water_amount_liters),0) as avg_water
			from farmers f1 
            join plots p1 on p1.farmer_id = f1.farmer_id
            join yields y1 on y1.plot_id = p1.plot_id
			join irrigation_logs i1 on i1.plot_id = p1.plot_id 
			group by f1.farmer_id, f1.first_name, f1.last_name)
select
    s.sl_no,
    s.first_name,
    s.last_name,
    p.plot_name,
    s.avg_water
from sub s
join plots p on p.farmer_id = s.farmer_id 
order by s.avg_water asc limit 1 ;

# Calculate the number of harvests per month for the last 12 months. Show the month and the number of harvests. 
# month with number
SELECT 
	extract(Month from harvest_date) AS month, # month number isthundhi
    COUNT(*) AS harvest_count
FROM yields
WHERE harvest_date >= CURRENT_DATE - INTERVAL 24 MONTH
GROUP BY EXTRACT(Month FROM harvest_date) 
ORDER BY month;

# Another Approach - month with name
SELECT 
    monthname(harvest_date) as Month, # month name isthundhi
    count(*) as harvest_count
from yields
group by month ; 

# Weekdays 
SELECT 
    Weekday(harvest_date) AS weekday_index,  # mon-0, sun-6
    DATE_FORMAT(harvest_date, '%Y-%b-%d(%a)') AS weekday_name, # %w--> sun-0 , mon-1 ---> sat-6
    harvest_date
FROM yields;

# 4. Advanced Analysis (Bonus) 
# • Find plots that have a below-average yield for their specific crop type but an above average water consumption compared to all other plots with the same crop. 
#   List the plot_name, crop_type, yield_kg, and water_amount_liters. 

# main query + subquery with join
select
    p1.plot_name,
    p1.crop_type,
    y1.yield_kg,
    i1.water_amount_liters 
from plots p1
join yields y1 on y1.plot_id = p1.plot_id 
join irrigation_logs i1 on i1.plot_id = p1.plot_id
join (
       select 
		   p2.crop_type,
           avg(y2.yield_kg) as avg_yield,
           avg(i2.water_amount_liters) as avg_water
	    from plots p2
        join yields y2 on y2.plot_id = p2.plot_id
        join irrigation_logs i2 on i2.plot_id = p2.plot_id
        group by p2.crop_type 
	 ) as sub on sub.crop_type = p1.crop_type
where y1.yield_kg < sub.avg_yield 
  and i1.water_amount_liters > sub.Avg_water ;
  
# Another Approach ( with CTE + main query )
with sub as
          (select 
			    p1.crop_type,
                round(avg(y1.yield_kg),0) as avg_yield,
                round(avg(i1.water_amount_liters),0) as avg_waterAmount
from yields y1
join plots p1 on p1.plot_id = y1.plot_id
join irrigation_logs i1 on i1.plot_id = p1.plot_id
group by p1.crop_type )
select 
	p2.plot_name,
    p2.crop_type,
    y2.yield_kg,
    i2.water_amount_liters
from plots p2
join yields y2 on y2.plot_id = p2.plot_id
join irrigation_logs i2 on i2.plot_id = p2.plot_id
join sub s on s.crop_type = p2.crop_type
where y2.yield_kg < s.avg_yield
  and i2.water_amount_liters > s.avg_waterAmount ;

select * from farmers;
select * from plots;
select * from yields;
select * from irrigation_logs ;