UPDATE salesperson SET store='Miami' WHERE staff_ID='00005';

select * from salesperson s ;

update customers 
	set email = (case when name='Pablo Picasso' then 'ppicasso@gmail.com'
					when name='Abraham Lincoln' then 'lincoln@us.gov'
					when name='Napoléon Bonaparte' then 'hello@napoleon.me'
					end);
					
select * from customers c;