# ETL-Project

For our project we extracted 2 data sources from OpenTable and the New York Times owned github to create a database comparing how covid impacted the dine-in industry in the US. 

The OpenTable data was a csv released by OpenTable that tracked the YOY daily perecent change in seating bookings from Feb 18, 2019 to Dec 11, 2020 by region. Using pandas we cleansed the data in jupyter notebook. First we filtered down to only US states, and dropped any null values. Next we used a for loop to unpivot the data into a more usable format since the dates were intiially column headers. Next we changed the dates to date time format and exported the cleaned dataframe to a csv without the index. 

The New York Times data was also a csv that tracked the number of covid cases and deaths by state and day from Jan 21, 2020 to Dec 11, 2020. Since this csv was already straightforward we didn't need to do any additional data cleansing before importing it to Posgres.

After manipulating both datasets into a usable format that could easily be joined, we imported both csvs as tables into Posgres. We then joined the tables on the state and day and saved this joined table as a new view that could be easily queried on by a potential analyst. We decided to create a new view so we could easily manipulate the initial data set if needed (add addtional dates etc) and not lose any of the original data. 

To recreate the final database, you would simply run the covid_OpenTable_comparison.sql and import the 2 csvs in the Resources folder: YOY_OpenTable states.csv and covid_us_states.csv. 

Final note: there may not be an equal amount of commits from each team member because we were working on most of the project together with one person sharing their screen