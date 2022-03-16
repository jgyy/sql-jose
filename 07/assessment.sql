SELECT cd.bookings.starttime,
    cd.facilities.name
FROM cd.facilities
    INNER JOIN cd.bookings ON cd.facilities.facid = cd.bookings.facid
WHERE cd.facilities.facid IN (0, 1)
    AND cd.bookings.starttime >= '2012-09-21'
    AND cd.bookings.starttime < '2012-09-22';