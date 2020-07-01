SELECT RES_UID  
from msp_resources R 
left join MSP_CALENDARS C on R.RES_UID=C.CAL_UID 
where C.CAL_UID is null 

--For unknown reason some resources can miss a calendar what leads to the described problem. The second query will insert the missing calendar records

--SQL
SELECT RES_UID  
, null 
, (Select CAL_UID from msp_calendars where CAL_IS_STANDARD_CAL=1) as CAL_UID 
,0,null,null,0,null,null,'2014-11-06 18:48:42.290','2014-11-06 18:48:42.290',2,9,2,9,1,1 
from msp_resources R 
left join MSP_CALENDARS C on R.RES_UID=C.CAL_UID 
where C.CAL_UID is null 
