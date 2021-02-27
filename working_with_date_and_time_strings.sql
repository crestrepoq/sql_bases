/*Working with Date Variables

As long as your data contains only the date protion, your queries will work as expectes.
However, if a time portion is involved, it gets more complicated.

The most difficult part when working with dates is to be sure that the format of the date you are trying to insert, mathes the format of the dat ecolumn in the database

Dates are stored as datetypes

Each DBMS uses it's own variety of datatypes
*/

/*Date Formats

DATE
Format YYYY-MM-DD

DATETIME
Format: YYYY-MM-DD HH:MI:SS

TIMESTAMP
Format: YYYY-MM-DD HH:MI:SS
*/

/*Some functions SQLite
5 date and time functions

DATE(timestring, modifier, modifier, ...)
TIME(timestring, modifier, modifier, ...)
DATETIME(timestring, modifier, modifier, ...)
JULIANDAY(timestring, modifier, modifier, ...)
STRTIME(format, timestring, modifier, modifier, ...)
*/

/*Timestrings

A time string can be in any of the following formats

YYYY-MM-DD
YYYY-MM-DD HH:MM
YYYY-MM-DD HH:MM:SS
YYYY-MM-DD HH:MM:SS.SSS
YYYY-MM-DDTHH:MM
YYYY-MM-DDTHH:MM:SS
YYYY-MM-DDTHH:MM:SS.SSS
HH:MM
HH:MM:SS
HH:MM:SS.SSS
*/

/*Modifiers

NNN days
NNN hours
NNN minutes
NNN.NNNN seconds
NNN months
NNN years
start of month
start of year
start of day
weekday N
unixepoch
localtime
utc
*/
