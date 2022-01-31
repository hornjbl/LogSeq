- Scripts to configure access in SQL Server
	- Notes and comments
		- ```
		  -- Find and replace as-is with no quotes: 
		  -- TARGET_DATABASE with implementation database name, ex RSVRRealtimeSystemA
		  -- AD_GROUP_NAME with AD security group name (without the domain), ex RSVR_P_CV_ZAF_SYSTEMA_PRODUCT_READ
		  -- AD_GROUP_DOMAIN with AD security group's domain, ex SCMBNT1
		  
		  -- Check the select statement at the bottom so it selects the correct views
		  -- COPY THE GENERATED GRANT STATEMENTS AND EXEUTE AGAINST THE SAME DB!!!!
		  ```
	- Create AD Group login on server
		- ```
		  --=====================================================================================--
		  --== Create the AD group's login on the server ========================================--
		  --=====================================================================================--
		  USE [master]
		  GO
		  
		  IF NOT EXISTS 
		      (SELECT name  
		       FROM master.sys.server_principals
		       WHERE name = 'AD_GROUP_DOMAIN\AD_GROUP_NAME')
		  BEGIN
		  	CREATE LOGIN [AD_GROUP_DOMAIN\AD_GROUP_NAME] 
		  	FROM WINDOWS 
		  	WITH DEFAULT_DATABASE=[TARGET_DATABASE], 
		  		 DEFAULT_LANGUAGE=[us_english]
		  END
		  ```
	- Grant connect privileges on databases to AD Group login
		- ```
		  --=====================================================================================--
		  --== Grant connect privileges to the login ============================================--
		  --=====================================================================================--
		  USE [TARGET_DATABASE]
		  GO
		  
		  GRANT CONNECT TO [AD_GROUP_DOMAIN\AD_GROUP_NAME]
		  ```
	- Create roles from AD group login
		- ```
		  --=====================================================================================--
		  --== Create the role if it doesn't exist and add members if they aren't in it =========--
		  --=====================================================================================--
		  USE [TARGET_DATABASE]
		  GO
		  
		  IF DATABASE_PRINCIPAL_ID('AD_GROUP_NAME') IS NULL
		  BEGIN
		  	EXEC sp_addrole AD_GROUP_NAME
		  END
		  
		  IF IS_ROLEMEMBER('AD_GROUP_NAME', 'AD_GROUP_DOMAIN\AD_GROUP_NAME') = 0
		  BEGIN
		  	EXEC sp_addrolemember [AD_GROUP_NAME], [AD_GROUP_DOMAIN\AD_GROUP_NAME]
		  END
		  ```
	- Grant SELECT on schema to role
		- ```
		  --=====================================================================================--
		  --== Grant select on schema level to role =============================================--
		  --=====================================================================================--
		  GRANT SELECT ON SCHEMA::[SCHEMA_NAME] TO [AD_GROUP_NAME]
		  ```
	- Grant SELECT on object to role
		- ```
		  --=====================================================================================--
		  --== Grant select on object level to role =============================================--
		  --=====================================================================================--
		  GRANT SELECT ON OBJECT::[SCHEMA_NAME].[TABLE_NAME] TO [AD_GROUP_NAME]
		  ```
	- Grant membership to db roles
		- ```
		  --=====================================================================================--
		  --== Grant membership to db roles =====================================================--
		  --=====================================================================================--
		  ALTER ROLE [db_ddladmin] ADD MEMBER [AD_GROUP_DOMAIN\AD_GROUP_NAME]
		  ALTER ROLE [db_datareader] ADD MEMBER [AD_GROUP_DOMAIN\AD_GROUP_NAME]
		  ALTER ROLE [db_datawriter] ADD MEMBER [AD_GROUP_DOMAIN\AD_GROUP_NAME]
		  ```