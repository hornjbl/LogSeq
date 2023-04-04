- Metadata Template
	- [Reservoir Data Curation - Backbase Modification.xlsx](../assets/Reservoir_Data_Curation_-_Backbase_Modification_1680082720385_0.xlsx)
	- [Reservoir Data Curation - Backbase Modification (1).xlsx](../assets/Reservoir_Data_Curation_-_Backbase_Modification_(1)_1680085119028_0.xlsx)
- TODO [BACKBASE].[vwCuratedZAFBackbaseLogs]
	- TODO Implementation SQL
		- ```sql
		  USE [RSVRRealtimeBackbase]
		  GO
		  
		  ALTER VIEW [BACKBASE].[vwCuratedZAFBackbaseLogs]
		  AS
		  
		  SELECT DISTINCT
		  A.status      ,
		          A.event_time     ,
		          A.actor_user_id  ,
		          A.actor_username as actor_userid ,
		          A.event_category  ,
		          A.object_type    ,
		          A.event_action   ,
		          A.event_desc      ,
		          A.legal_entity_id ,
		          A.sa_id         ,
		          A.ip_address    ,
		          A.user_agent    ,
		          A.error         ,
		         
		  SUBSTRING(B.external_id,1,10) as business_bpid
		   
		  
		  FROM [audit_persistence].[audit_message] AS A WITH (NOLOCK)
		  LEFT JOIN [accesscontrol_pandp].[service_agreement] AS B WITH (NOLOCK)
		  ON A.sa_id = B.id
		  WHERE B.is_master=0
		  
		  GO
		  ```
	- TODO Interface SQL
		- ```sql
		  USE [RSVRCuratedInterfacePBB]
		  GO
		  
		  ALTER VIEW [BACKBASE].[vwCuratedZAFBackbaseLogs]
		  AS
		  
		  SELECT DISTINCT
		  status      ,
		          event_time     ,
		          actor_user_id  ,
		  actor_userid,
		          event_category  ,
		          object_type    ,
		          event_action   ,
		          event_desc      ,
		          legal_entity_id ,
		          sa_id         ,
		          ip_address    ,
		          user_agent    ,
		          error         ,
		  business_bpid
		  
		  FROM [RSVRRealtimeBackbase]. [BACKBASE].[vwCuratedZAFBackbaseLogs] WITH(NOLOCK)
		  GO
		  ```
- Access SQL
	- ```sql
	  RSVR_P_CV_ZAF_BACKBASE_CHANNEL_READ
	  
	  USE [RSVRRealtimeBackbase]
	  GO
	  
	  -- [BACKBASE].[vwCuratedZAFBackbaseLogs]
	  ```