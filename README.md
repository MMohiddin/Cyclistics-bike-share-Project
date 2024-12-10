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
