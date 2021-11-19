/* States, Counties */

/* Write a Query that returns all the unique state names. */
SELECT DISTINCT state FROM zipcodes;

/* Write a Query that returns all the Counties by State on separate lines. */
SELECT DISTINCT county, state FROM zipcodes;

/* Write a Query that returns all the Counties by state, as a concatenated string. */
SELECT DISTINCT CONCAT(county, ', ', state) 'County, State' FROM zipcodes;

/* Write a Query that returns number of Counties by state. */
SELECT state, COUNT(county) 'Number of Counties' FROM zipcodes GROUP BY state;

/* Write a Query that returns all of the individual timezones. */
SELECT DISTINCT timezone FROM zipcodes;

/* Notice anything peculiar? */
/* Messy data that would need to be cleaned */

/* Fixing Data */

/* Write a Query that returns the zipcode, city, state, and county of all of the FALSE or NULL timezones. */
SELECT zip, city, state, county FROM zipcodes WHERE timezone = 'FALSE' or timezone = NULL;

