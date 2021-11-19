/* Write a Query that returns the city, state and number of instances of all of the FALSE or NULL timezones. */

SELECT city, state, count(*) FROM zipcodes WHERE timezone = 'FALSE' or timezone is NULL GROUP BY city, state;