SELECT ROUND(sqrt((POWER(max(lat_n) - min(lat_n), 2) + POWER(max(long_w) - min(long_w),2))), 4)
FROM station