-- When making an application WHERE are you going to write your SQL statements?
-- Hard-coding them is MESSY and HARD to maintain ! 
   -- e.g. C# requires compilation step, which REQUIRES rebuilding entire codebase for the C# code 
   -- HENCE we store these SQL statements in the db where it belongs ! 
   -- Inside a Stored Procedure or Function
              -- A stored Procedure is a database object that stores a block of SQL code,
			  -- In the application code, we just call these stored procedures to get or save data ! 
			  -- Additionally, most database management systems perform optimizations for stored procedures, hence sql-code in procedures execute faster 
              -- Also, like Views, they can enhance data security,
                   -- e.g. if you dont have direct access to the table, we can simply interact with the data through these procedures instead of directly 
							-- we can set permissions also about who can run these procedures 
              -- HENCE USAGE:
                      -- STORE & ORGANIZE SQL
                      
                      