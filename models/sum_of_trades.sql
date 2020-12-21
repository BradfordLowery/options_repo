select sum(ifnull(amount,0)) as total, date from finance.transactions
where description not like '%ELECTRONIC%' 
and description not like '%FEE%' 
and description not like '%TRANSFER%'
group by date
having sum(ifnull(amount,0)) <> 0
order by date