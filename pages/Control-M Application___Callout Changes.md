- Attendees
	- [[Coetzee, Inus I]]
	- [[Mannya, Stanford S]]
- Notes
	- See [How To : Setup CIO Team - Data Services - Dev Ops - Confluence (standardbank.co.za)](https://aws-tools.standardbank.co.za/confluence/pages/viewpage.action?spaceKey=DSD&title=How+To+%3A+Setup+CIO+Team)
	- This is to move jobs on Control-M from the MO_RESERVOIR application to the isolated applications for the application team to manage:
	  collapsed:: true
		- TPS Pricing (RawBatch & DP)
		- RSVR_DP_Finance (DP only)
		- Third Party Risk Management (DP only)
	- Action Steps:
		- DONE Finalize application names (action)
			- DONE [[Mannya, Stanford S]] :
			  collapsed:: true
				- RSVR_DP_Finance
				- [[Rance, Karen K]]
			- DONE [[Coetzee, Inus I]]:
			  collapsed:: true
				- RSVR_ThirdPartyRiskManagement
				- [[Ngubeni, Johanna J]]
			- DONE [[Horn, Ben-Lindsey BL]]:
				- RSVR_TPSPricing
				- [[Terry, Quentin P]]
		- DONE AD Group name (action)
		  collapsed:: true
			- For platform team to action.
			- One AD group per application.
			- AD group name same as application.
			- Data/product owner is the owner of the AD group.
			- Control-M team members to be added (ex Warren Maritz's manager).
			- DONE Log on Remedy normal AD group creation.
				- RSVR_DP_Finance (REQ000003097081)
				- RSVR_ThirdPartyRiskManagement (REQ000003096886)
				- RSVR_TPSPricing (REQ000003096887)
			- DONE [[AD Group Request Process]]
		- DONE Remedy Team name (determine process)
		  collapsed:: true
			- Application team needs to request creation (if none exists) and provide the detail.
			- We need the team name.
			- DONE Check with Vince regarding steps to follow.
			  collapsed:: true
				- Vince doesn't know how to do this, but will find out who I can speak to.
				- Vince directed me to [[Van Jaarsveldt, Denzil D]] to find out what the steps are.
			- DONE [[Remedy Team Request Process]]
		- DONE Callout Group name (determine process)
		  collapsed:: true
			- Application team needs to request creation (if none exists) and provide the detail.
			- We need the team name.
			- DONE Check with Rombani regarding steps to follow.
			  :LOGBOOK:
			  CLOCK: [2023-01-26 Thu 13:04:22]--[2023-01-26 Thu 13:04:23] =>  00:00:01
			  :END:
			- DONE [[Callout Group Request Process]]
		- DONE Team Email address (determine process)
			- Application team needs to request creation (if none exists) and provide the detail.
			- We need the team name.
			- DONE Check with Annemarie regarding steps to follow.
			- DONE [[Team Email Address Request Process]]
		- TODO Log a request (email) against the Control-M team (action)
		- TODO Application team to move Control-M jobs to new application. (action)
			- This is a simple rename operation on the affected jobs.