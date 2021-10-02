drop database if exists `test`;
create database `test`;
use test
create table `sdo` (
	id serial,
	dasda int, 
	asdadas int
);
create table `weapon_type` (
	id serial,
	ubWeaponType int,
	-- constraint weapon_type_fk
	foreign key (id) references sdo(id)
	-- foreign key (ubWeaponType) references sdo(id)
);
-- alter table test.weapon_type
-- add constraint weapon_type_fk
-- foreign key (ubWeaponType) references sdo(id);