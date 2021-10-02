-- поработать с ключам первичной таблицы (explain select * from sdo;
-- выдает  warning)


-- представления

drop database if exists `weapons`;
create database `weapons`;
use weapons;

create table `sdo` (
    id serial,
    uiIndex int, 
    szWeaponName varchar(255) primary key, 
    ubWeaponClass int, 
    ubWeaponType int, 
    ubCalibre int, 
    ubReadyTime int, 
    ubShotsPer4Turns decimal(18,5), 
    ubShotsPerBurst int, 
    ubBurstPenalty int, 
    ubBulletSpeed int, 
    ubImpact int, 
    ubDeadliness int, 
    bAccuracy int, 
    ubMagSize int, 
    usRange int, 
    usReloadDelay int, 
    BurstAniDelay int, 
    ubAttackVolume int, 
    ubHitVolume int, 
    sSound int, 
    sBurstSound int, 
    sSilencedBurstSound int, 
    sReloadSound int,
    sLocknLoadSound int, 
    SilencedSound int, 
    bBurstAP int, 
    bAutofireShotsPerFiveAP int, 
    APsToReload int, 
    SwapClips int, 
    MaxDistForMessyDeath int, 
    AutoPenalty int, 
    NoSemiAuto int, 
    EasyUnjam int, 
    APsToReloadManually int, 
    ManualReloadSound int, 
    nAccuracy int, 
    bRecoilX int, 
    bRecoilY decimal(18,5), 
    ubAimLevels int, 
    ubRecoilDelay int, 
    Handling int, 
    usOverheatingJamThreshold int, 
    usOverheatingDamageThreshold int, 
    usOverheatingSingleShotTemperature int, 
    HeavyGun int
    -- primary key (szWeaponName)
);

insert into `sdo` (
    uiIndex, 
    szWeaponName, 
    ubWeaponClass, 
    ubWeaponType, 
    ubCalibre, 
    ubReadyTime, 
    ubShotsPer4Turns, 
    ubShotsPerBurst, 
    ubBurstPenalty, 
    ubBulletSpeed, 
    ubImpact, 
    ubDeadliness, 
    bAccuracy, 
    ubMagSize, 
    usRange, 
    usReloadDelay, 
    BurstAniDelay, 
    ubAttackVolume, 
    ubHitVolume, 
    sSound, 
    sBurstSound, 
    sSilencedBurstSound, 
    sReloadSound,
    sLocknLoadSound, 
    SilencedSound, 
    bBurstAP, 
    bAutofireShotsPerFiveAP, 
    APsToReload, 
    SwapClips, 
    MaxDistForMessyDeath, 
    AutoPenalty, 
    NoSemiAuto, 
    EasyUnjam, 
    APsToReloadManually, 
    ManualReloadSound, 
    nAccuracy, 
    bRecoilX, 
    bRecoilY, 
    ubAimLevels, 
    ubRecoilDelay, 
    Handling, 
    usOverheatingJamThreshold, 
    usOverheatingDamageThreshold, 
    usOverheatingSingleShotTemperature, 
    HeavyGun) values
('0', 'Nothing', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '10', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '157', '0', '0', '20', '1', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4000', '5000', '120', '0'), ('1', 'Glock 17', '1', '1', '2', '4', '26.34', 0, '0', '21', '25', '16', '1', '18', '115', '200', '100', '50', '3', '299', 0, 0, '100', '106', '156', 0, 0, '25', '1', '7', '0', 0, 0, 0, '476', '6', 0, 0, '3', 0, '9', '3500', '4000', '70', 0), ('2', 'Glock 18', '1', '2', '2', '4', '24.53', 0, '16', '21', '24', '16', '1', '18', '140', '200', '23', '50', '3', '371', '57', '111', '100', '106', '156', 0, '5', '25', '1', '7', '16', 0, 0, 0, '476', '6', '6', '15', '3', 0, '9', '3500', '4500', '70', 0), ('3', 'Beretta 92F', '1', '1', '2', '4', '24.53', 0, '0', '21', '25', '15', '1', '15', '120', '200', '100', '50', '3', '367', 0, 0, '100', '106', '156', 0, 0, '25', '1', '7', '0', 0, 0, 0, '476', '6', 0, 0, '3', 0, '9', '3500', '4000', '70', 0), ('4', 'Beretta 93R', '1', '2', '2', '4', '24.53', '3', '11', '21', '24', '18', '1', '18', '145', '200', '27', '55', '3', '368', '54', '111', '100', '106', '156', '7', 0, '25', '1', '7', '11', 0, 0, 0, '476', '8', '4', '10', '3', 0, '8', '3200', '4200', '70', 0), ('5', '.38 Special', '1', '1', '1', '2', '24.53', 0, '0', '20', '20', '14', '0', '6', '105', '200', '100', '45', '3', '459', 0, 0, '100', '106', '156', 0, 0, '32', '1', '7', '0', 0, '1', 0, '480', '4', 0, 0, '2', 0, '7', '3500', '4000', '60', 0), ('6', 'Barracuda', '1', '1', '4', '4', '15.81', 0, '0', '20', '26', '16', '1', '6', '110', '200', '100', '60', '5', '423', 0, 0, '100', '106', '157', 0, 0, '32', '1', '7', '0', 0, '1', 0, '480', '6', 0, 0, '2', 0, '8', '3500', '4000', '70', 0), ('7', 'Desert Eagle .357', '1', '1', '4', '8', '16.55', 0, '0', '21', '28', '16', '1', '9', '135', '200', '100', '60', '5', '422', 0, 0, '100', '106', '157', 0, 0, '24', '1', '7', '0', 0, 0, 0, '476', '14', 0, 0, '3', 0, '13', '3800', '4300', '70', 0), ('8', 'Colt M1911A1', '1', '1', '3', '4', '24.53', 0, '0', '21', '20', '16', '1', '7', '85', '200', '100', '40', '3', '413', 0, 0, '100', '106', '157', 0, 0, '22', '1', '7', '0', 0, 0, 0, '476', '7', 0, 0, '3', 0, '9', '3500', '4000', '75', 0), ('9', 'HK MP5K )-|', '2', '2', '2', '6', '17.36', '3', '12', '22', '24', '18', '1', '30', '140', '200', '33', '50', '3', '375', '61', '62', '101', '107', '156', '10', '4', '30', '1', '7', '12', 0, 0, 0, '476', '6', '5', '11', '4', 0, '14', '3000', '4000', '70', 0);
create table weapon_class (
    id serial,
    ubWeaponClass int, 
    foreign key (id) references sdo(id)    
);

begin;
    insert weapons.weapon_class (ubWeaponClass) select ubWeaponClass from
weapons.sdo;
    alter table sdo drop column ubWeaponClass;
commit;

create table `weapon_type` (
    id serial,
    ubWeaponType int unsigned not null,
    foreign key (id) references sdo(id)
    -- foreign key (ubWeaponType) references sdo(id)    
);

begin;
    insert weapons.weapon_type (ubWeaponType) 
    select ubWeaponType from weapons.sdo;
    alter table sdo drop column ubWeaponType;
commit;


create table `ammo_set` (
    id serial,
    ubCalibre int,
    ubMagSize int, 
    foreign key (id) references sdo(id)
);

begin;
    insert weapons.ammo_set (
        ubCalibre,
        ubMagSize 
    ) select 
        ubCalibre,
        ubMagSize 
    from weapons.sdo;
    alter table sdo 
        drop column ubCalibre,
        drop column ubMagSize; 
commit;
create table requested_ap (
    id serial,
    ubReadyTime int, 
    ubShotsPer4Turns decimal(18,5), 
    ubShotsPerBurst int,
    bBurstAP int, 
    bAutofireShotsPerFiveAP int, 
    APsToReload int, 
    APsToReloadManually int, 
    foreign key (id) references sdo(id) 
);
begin;
    insert weapons.requested_ap (
        ubReadyTime, 
        ubShotsPer4Turns, 
        ubShotsPerBurst,
        bBurstAP, 
        bAutofireShotsPerFiveAP, 
        APsToReload, 
        APsToReloadManually
    ) select 
        ubReadyTime, 
        ubShotsPer4Turns, 
        ubShotsPerBurst,
        bBurstAP, 
        bAutofireShotsPerFiveAP, 
        APsToReload, 
        APsToReloadManually
    from weapons.sdo;
    alter table sdo 
        drop column ubReadyTime, 
        drop column ubShotsPer4Turns, 
        drop column ubShotsPerBurst,
        drop column bBurstAP, 
        drop column bAutofireShotsPerFiveAP, 
        drop column APsToReload, 
        drop column APsToReloadManually;
commit;

create table penalty (
    id serial,
    ubBurstPenalty int,
    AutoPenalty int,  
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.penalty (
        ubBurstPenalty,
        AutoPenalty
    ) select
        ubBurstPenalty,
        AutoPenalty
    from weapons.sdo;

    alter table sdo 
        drop column ubBurstPenalty, 
        drop column AutoPenalty;
commit;

create table distanse (
    id serial,
    ubDeadliness int, 
    usRange int,
    foreign key (id) references sdo(id) 
);

create table accuracy (
    id serial,
    bAccuracy int, 
    nAccuracy int, 
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.accuracy (
        bAccuracy, 
        nAccuracy
    ) select 
        bAccuracy, 
        nAccuracy
    from weapons.sdo;
    alter table sdo 
        drop column bAccuracy, 
        drop column nAccuracy;
commit;

begin;
    insert weapons.distanse (
        ubDeadliness, 
        usRange
    ) select 
        ubDeadliness, 
        usRange
    from weapons.sdo;
    alter table sdo 
        drop column ubDeadliness, 
        drop column usRange;
commit;

create table volume (
    id serial,
    ubAttackVolume int, 
    ubHitVolume int, 
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.volume (
        ubAttackVolume, 
        ubHitVolume
    ) select
        ubAttackVolume, 
        ubHitVolume
    from weapons.sdo;
    alter table sdo 
        drop column ubAttackVolume, 
        drop column ubHitVolume;
commit;

create table `sound` (
    id serial,
    sSound int, 
    sBurstSound int, 
    sSilencedBurstSound int, 
    sReloadSound int,
    sLocknLoadSound int, 
    SilencedSound int,
    ManualReloadSound int, 
    foreign key (id) references sdo (id)
);
begin;
    insert weapons.sound (
        sSound, 
        sBurstSound, 
        sSilencedBurstSound, 
        sReloadSound,
        sLocknLoadSound, 
        SilencedSound,
        ManualReloadSound ) 
    select 
        sSound, 
        sBurstSound, 
        sSilencedBurstSound, 
        sReloadSound,
        sLocknLoadSound, 
        SilencedSound,
        ManualReloadSound 
    from weapons.sdo;
    alter table sdo 
        drop column sSound, 
        drop column sBurstSound, 
        drop column sSilencedBurstSound, 
        drop column sReloadSound,
        drop column sLocknLoadSound, 
        drop column SilencedSound,
        drop column ManualReloadSound;
commit;
create table swap (
    id serial,
    SwapClips int,
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.swap (SwapClips) select SwapClips from weapons.sdo;
    alter table sdo drop column SwapClips;
commit;

create table max_dist_for_messy_death (
    id serial,
    MaxDistForMessyDeath int,
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.max_dist_for_messy_death (MaxDistForMessyDeath) 
    select MaxDistForMessyDeath from weapons.sdo;
    alter table sdo drop column MaxDistForMessyDeath; 
commit;

create table no_semi_auto (
    id serial,
    NoSemiAuto int,
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.no_semi_auto (NoSemiAuto) 
    select NoSemiAuto from weapons.sdo;
    alter table sdo drop column NoSemiAuto; 
commit;

create table unjam (
    id serial,
    EasyUnjam int,
    foreign key (id) references sdo(id)
);

begin;
    insert weapons.unjam (EasyUnjam) select EasyUnjam from weapons.sdo;
    alter table sdo drop column EasyUnjam;
commit;

create table recoil_x_y (
    id serial,
    bRecoilX int, 
    bRecoilY decimal(18,5),
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.recoil_x_y (
        bRecoilX, 
        bRecoilY
    ) select
        bRecoilX, 
        bRecoilY
    from weapons.sdo;
    alter table sdo 
        drop column bRecoilX, 
        drop column bRecoilY;
commit;


create table overheating (
    id serial,
    usOverheatingJamThreshold int, 
    usOverheatingDamageThreshold int, 
    usOverheatingSingleShotTemperature int,
    foreign key (id) references sdo(id)
);

begin;
insert weapons.overheating (
    usOverheatingJamThreshold, 
    usOverheatingDamageThreshold, 
    usOverheatingSingleShotTemperature) 
select 
    usOverheatingJamThreshold, 
    usOverheatingDamageThreshold, 
    usOverheatingSingleShotTemperature 
from weapons.sdo;

alter table sdo 
    drop column usOverheatingJamThreshold, 
    drop column usOverheatingDamageThreshold, 
    drop column usOverheatingSingleShotTemperature;
commit;

create table heavy_gun (
    id serial,
    HeavyGun int,
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.heavy_gun (HeavyGun) select HeavyGun from
    weapons.sdo;
    alter table sdo drop column HeavyGun;
commit;

create table others (
    id serial,
    ubBulletSpeed int, 
    usReloadDelay int, 
    BurstAniDelay int,
    ubRecoilDelay int, 
    foreign key (id) references sdo(id)
);
begin;
    insert weapons.others (
        ubBulletSpeed, 
        usReloadDelay, 
        BurstAniDelay,
        ubRecoilDelay
    ) select 
        ubBulletSpeed, 
        usReloadDelay, 
        BurstAniDelay,
        ubRecoilDelay
    from weapons.sdo;
    alter table sdo 
        drop column ubBulletSpeed, 
        drop column usReloadDelay, 
        drop column BurstAniDelay,
        drop column ubRecoilDelay;
commit;


-- представления
create view dist as 
    select 
        uiIndex as indx, 
        szWeaponName as Name, 
        ubImpact as dmg, 
        ubAimLevels as aim, 
        Handling, 
        ubDeadliness as cap_dist, 
        usRange as efdist  
    from sdo join distanse using(id) 
        where uiIndex > 0 
        order by Handling, ubAimLevels;

create view ap as 
    select 
        uiIndex as indx, 
        szWeaponName as Name, 
        -- ubImpact as dmg, 
        ubAimLevels as aim, 
        Handling, 
        ubReadyTime, 
        ubShotsPer4Turns as sp4t, 
        ubShotsPerBurst as spb,
        bBurstAP as burst_ap, 
        APsToReload as reload
    from sdo join requested_ap using(id) 
        where uiIndex > 0 
        order by Handling, ubAimLevels;