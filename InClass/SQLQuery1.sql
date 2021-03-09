--this is a single line comment
declare @favoriteNumber int = 16
declare @favoriteBigNumber bigint
declare @favoriteSmallNumber smallint
declare @favoriteTinyNumber tinyint

declare @moneyInMyBankAccount money
declare @decimalsThing decimal(18,2)
declare @floatThing float

declare @fixedLengthString char(50) = 'in tsql every string uses single quotes'
declare @variableLengthString varchar(8000) = 'stores up to a max of a specified length of characters'
--declare @oldLongString text = 'can store up to a gb of text but it was annoying to get data out'
declare @hugeVariableLengthString varchar(max) = 'totally different than varchar, can hold 2gb of text. cannot be indexed well, so are usually isolated, not advisable'

--these can hold foreign characters and emojis, limits data, takes up 2x as much data
declare @UTF8fixedLengthString nchar(50) = 'in tsql every string uses single quotes'
declare @UTF8variableLengthString nvarchar(4000) = 'stores up to a max of a specified length of characters'
--declare @oldLongString text = 'can store up to a gb of text but it was annoying to get data out'
declare @UTF8hugeVariableLengthString nvarchar(max) = 'totally different than varchar, can hold 2gb of text. cannot be indexed well, so are usually isolated, not advisable'

select @fixedLengthString, @variableLengthString

--booleans
declare @isNathanAwesome bit = 1 -- 0 (or any negative) is false, 1 (or any positive) is true

--dates
declare @myBirthday dateTime2 --datetime is basically the same but worse

/*
this is
a
multi-line comment
*/

select @favoriteNumber

set @favoriteNumber = 12

print @favoriteNumber

