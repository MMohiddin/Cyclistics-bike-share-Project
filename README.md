  ![image](https://github.com/user-attachments/assets/97378a08-5bc0-4214-aa6c-aa5469745708)


# Cyclistics-bike-share-Project

### **Introduction**

This is the Cyclistic bike-share analysis case study I completed during the last course of the Google Data Analytics Certificate. To answer the business questions  during this case study I will be following the steps of the data analysis process :Ask, Prepare, Process, Analyse, Share and Act. In this case study I will be using SQL to answer the business question: **_How does annual members and casual riders use Cyclistic bike-share differently?_**


###  **Scenario**

I am junior data analyst working on the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. 

### **Background**

Cyclistic is a bike-share program that features more than 5,800 bicycles geolocated and to over 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. 

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as **_casual riders_**. Customers who purchase annual memberships are Cyclistic **_members._**

### **Business Task**

The director of marketing has set the goal of designing marketing strategies aimed at converting **_casual riders_** into **_annual members_**.  To do that the marketing analytics team needs to understand how **_casual riders_** and **_annual members_** use the bike-share program differently. Therefore I am tasked to analyse the past 12 months of bike-share data to find insights and trends that can help the team come up with marketing strategies to convert **_casual riders_** into **_annual members_**. 

### Data Source

The 12 months of bike-share data used in this analysis was provided by Motivation International Inc. under this [license](https://divvybikes.com/data-license-agreement) and downloaded into Google Cloud Storage to be used in BigQuery. However because of  data privacy protection I am prohibited from collecting personal data. Therefore I won't be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### Data Manipulation and Cleaning

First I uploaded all 12 months of data into different tables in BiqQuery and then combined them into one table named bikehsare_combined. 
[Data combining](https://github.com/MMohiddin/Cyclistics-bike-share-Project/blob/main/Data-combining.SQL)

Cleaned the data and added two new coloumns called trip_duration and ride_day. These two coloumns would allow me to see how long each rider used the bike_share and on what day during the week. Rows with trip durations that where less than or more than a day where also removed.

[Data cleaning and manipulation](https://github.com/MMohiddin/Cyclistics-bike-share-Project/blob/main/Data-CleaningandManipulation.SQL)

### Analysis
[SQL- Total ride count](Analysis-ride_count.SQL)

#### Total Ride Count
First I analysised the data to give me total ride count for day, month and rideable types to see how different casual and members use the bike-share services. Tableau was used to visualise results.
![Total Ride Count ](https://github.com/user-attachments/assets/643edc9b-c2bd-4808-8eeb-0dfa75aa19e0)

From this dashboard we notice that annaual members use the bike-share services more frequently than casuals across the year and during the week. This highlights that casual aren't becoming annual members as they use the services less. However, the total ride count of casual increases during weekends whilst the total ride count for members decreases. This could possibly hint that casuals use the bike_share more for leisurely reason and members use the service more for regular commute. We also notice that both casual and members prefer to use the classic bikes more than the electric options. 

![hourly ride count](https://github.com/user-attachments/assets/796b1f76-b6e5-4338-b4e6-e636dc32d670)

With members ride count peaking first at 8am and second at 5pm, this indicates that annual member likely use Cyclistics services to commute to work or school 8pm is when most people would be going to work and returning back at 5pm. Whereas, the total ride count throughout the day for casual riders gradually increases before it reaches peak also at 5pm. This could hint that casual riders are mostly younger people use the bike share services during their free time after school as the average school closing time in Chicago is 3pm.

#### Average Ride Duration
[SQL-Average Ride Duration](Analysis-avg_ride_duration.SQL)

![Avg Dashboard](https://github.com/user-attachments/assets/d2ad1d59-44bd-45c2-9be1-c4a4b9653361)

As this visualisattion show casual riders ride for longer than annual members suggesting that casual riders usually use the Cyclistic bike-share service for longer commutes. The average duration for casual also increasing on the weekends and during lunchtime hours. This also indicates that casual riders could be mainly using the bike-share for leisurely reason which could visting a freind or family who lives outside of normal walking distance or maybe trying a new restuarant they haven't tried before. 

### Suggestions for Maximising members

Overall, casual riders differ to annual members as they ride for longer and use bike-share more on weekends than weekdays. Whereas, annual members use bike-share services more frequently over the year as they often use it for regular commute to work.

Some ways of turning casual riders into annual members are:

* Creating an annual membership plan for weekends only is a great option to get casual riders to buy memberships. To adverise this plan savings the casual riders could make by choosing this option shown to them.
* Working with shops or weekend only events near frequently visited station points to offer discounts to those on the annual plan could bring in more annual members. Also developing a rewards which gives riders who earn it free bike accessories or free token to use in partened shops or weekend events could help to convert casual riders into annual members.
* Creating a trial period where casual riders can try membership is also another great option.

To conclude, catering and designing oppurtunites using the insights gained from this project will help greatly in achieving the business goal of converting casual riders into annual members.
