declare @Size int = 3
declare @Type varchar(40) = 'Honey Wheat'
declare @Price decimal = 2.50
declare @WeightInOunces int = 24
declare @id int = 6

--Adding data is done via insert
INSERT into Loaves(Size,[Type],Price,WeightInOunces)
Output inserted.Id --returns data you just inserted
Values (@Size, @Type, @Price, @WeightInOunces) -- order here matters, must match instert params

--updating data
begin transaction -- safety measure, can undo changes inside of a transaction with a rollback, must be rolled back or committed
Update Loaves
   Set WeightInOunces = 16, --column name = value
	   Size = 2,
	   [Type] = 'Monkey Bread'
output inserted.*, deleted.* --inserted contains new values, deleted contains old values
where id = @id --always be specific

rollback  --uncomment to see but not save changes
--commit  --uncomment to save changes made

--deleting data
delete
from Loaves
where id = @id

select * from Loaves

--truncate table loaves --deletes everything forever silently and quickly