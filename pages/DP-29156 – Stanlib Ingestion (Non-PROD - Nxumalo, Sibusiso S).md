- Scripts
	- DONE Schema Creation
	  collapsed:: true
	  :LOGBOOK:
	  CLOCK: [2023-03-28 Tue 11:58:23]--[2023-03-28 Tue 12:00:16] =>  00:01:53
	  :END:
		- ```sql
		  USE [RSVRRawBatchPBB]
		  GO
		    
		  CREATE SCHEMA Stanlib;
		  ```
	- DONE AD Group Access
	  :LOGBOOK:
	  CLOCK: [2023-03-28 Tue 12:00:15]--[2023-03-28 Tue 12:00:17] =>  00:00:02
	  :END:
		- ```sql
		  -- Find and replace as-is with no quotes: 
		  -- RSVRRawBatchPBB with implementation database name, ex RSVRRealtimeSystemA
		  -- RSVR_P_DB_STANLIB_READ with AD security group name (without the domain), ex RSVR_P_CV_ZAF_SYSTEMA_PRODUCT_READ
		  -- SCMBNT1 with AD security group's domain, ex SCMBNT1
		  
		  -- Check the select statement at the bottom so it selects the correct views
		  -- COPY THE GENERATED GRANT STATEMENTS AND EXEUTE AGAINST THE SAME DB!!!!
		  
		  --=====================================================================================--
		  --== Create the AD group's login on the server ========================================--
		  --=====================================================================================--
		  USE [master]
		  GO
		  
		  IF NOT EXISTS 
		      (SELECT name  
		       FROM master.sys.server_principals
		       WHERE name = 'SCMBNT1\RSVR_P_DB_STANLIB_READ')
		  BEGIN
		  	CREATE LOGIN [SCMBNT1\RSVR_P_DB_STANLIB_READ] 
		  	FROM WINDOWS 
		  	WITH DEFAULT_DATABASE=[RSVRRawBatchPBB], 
		  		 DEFAULT_LANGUAGE=[us_english]
		  END
		  
		  --=====================================================================================--
		  --== Grant connect privileges to the login ============================================--
		  --=====================================================================================--
		  USE [RSVRRawBatchPBB]
		  GO
		  
		  GRANT CONNECT TO [SCMBNT1\RSVR_P_DB_STANLIB_READ] 
		  
		  --=====================================================================================--
		  --== Create the role if it doesn't exist and add members if they aren't in it =========--
		  --=====================================================================================--
		  USE [RSVRRawBatchPBB]
		  GO
		  
		  IF DATABASE_PRINCIPAL_ID('RSVR_P_DB_STANLIB_READ') IS NULL
		  BEGIN
		  	EXEC sp_addrole RSVR_P_DB_STANLIB_READ
		  END
		  
		  IF IS_ROLEMEMBER('RSVR_P_DB_STANLIB_READ', 'SCMBNT1\RSVR_P_DB_STANLIB_READ') = 0
		  BEGIN
		  	EXEC sp_addrolemember [RSVR_P_DB_STANLIB_READ], [SCMBNT1\RSVR_P_DB_STANLIB_READ]
		  END
		  
		  --=====================================================================================--
		  --== Grant select on schema level to role =============================================--
		  --=====================================================================================--
		  GRANT SELECT ON SCHEMA::[Stanlib] TO [RSVR_P_DB_STANLIB_READ]
		  
		  GRANT SELECT, INSERT, UPDATE, DELETE, ALTER ON SCHEMA::Stanlib to RSVR_DEVOPS_DATAANALYTICS_AND_IA
		  ```