DECLARE @Colm NVARCHAR(255)

DECLARE MyCursor01 CURSOR LOCAL FAST_FORWARD FOR
SELECT name FROM msdb.dbo.syscolumns

OPEN MyCursor01 WHILE 1 = 1
BEGIN FETCH MyCursor01 INTO
  @Colm

  IF @@FETCH_STATUS <> 0 BREAK
  
  --Do the work here
  PRINT(@Colm)
  
END -- MyCursor01
CLOSE MyCursor01
DEALLOCATE MyCursor01



