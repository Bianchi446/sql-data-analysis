SELECT ntile, min(order_amount) as lower_bound, max(order_amount) as upper_bound FROM( SELECT order_amount, ntile(10) over (order by order_amount) as ntile FROM transactions) a GROUP BY 1;

-- Binning a group of data sets, by setting an upper and lower bound.
