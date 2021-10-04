select ubDeadliness, usRange, szWeaponName  from distanse join sdo using(id);
Столбец id в предложении from неоднозначен

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse on distanse.id = sdo.id 
	where ubShotsPer4Turns > 24 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 24 and ubWeaponType = 1 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 24 and ubWeaponType = 2 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 3 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 4 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 5 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 6 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 7 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 8 
	order by ubReadyTime, ubAimLevels limit 3;

select szWeaponName, ubAimLevels, ubReadyTime, ubShotsPer4Turns, Handling, usRange, ubDeadliness,
ubWeaponType as wt  
from sdo join max_dist_for_messy_death 
	on max_dist_for_messy_death.id = sdo.id join requested_ap 
	on requested_ap.id = sdo.id  join distanse 
	on distanse.id = sdo.id join weapon_type 
	on weapon_type.id = sdo.id 
	where ubShotsPer4Turns > 10 and ubWeaponType = 4 
	order by ubReadyTime, ubAimLevels limit 3;

