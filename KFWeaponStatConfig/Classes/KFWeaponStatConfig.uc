//====================================================
// Base Mutator for KFWeaponStatConfig by Vel-San
// Contact on Steam using the following Profile Link:
// https://steamcommunity.com/id/Vel-San/
//====================================================

class KFWeaponStatConfig extends Mutator
                                Config(KFWeaponStatConfig);

var() config int  Single9mmMag, Single9mmDmgMax,
                  DualiesMag, DualiesDmgMax, DualiesCost, DualiesWeight,
                  MK23Mag, MK23DmgMax, MK23Cost, MK23Weight,
                  DualMK23Mag, DualMK23DmgMax, DualMK23Cost, DualMK23Weight,
                  Single44MagnumMag, Single44MagnumDmgMax, Single44MagnumCost, Single44MagnumWeight,
                  Dual44MagnumMag, Dual44MagnumDmgMax, Dual44MagnumCost, Dual44MagnumWeight,
                  SingleDeagleMag, SingleDeagleDmgMax, SingleDeagleCost, SingleDeagleWeight,
                  DualDeagleMag, DualDeagleDmgMax, DualDeagleCost, DualDeagleWeight,
                  WinchesterMag, WinchesterDmgMax, WinchesterCost, WinchesterWeight,
                  CrossbowMag, CrossbowDmgMax, CrossbowCost, CrossbowWeight,
                  SPSniperRifleMag, SPSniperRifleDmgMax, SPSniperRifleCost, SPSniperRifleWeight,
                  M14EBRMag, M14EBRDmgMax, M14EBRCost, M14EBRWeight,
                  M99Mag, M99DmgMax, M99Cost, M99Weight,
                  MP7MMag, MP7MDmgMax, MP7MCost, MP7MWeight,
                  MP5MMag, MP5MDmgMax, MP5MCost, MP5MWeight,
                  M7A3MMag, M7A3MDmgMax, M7A3MCost, M7A3MWeight,
                  KrissMMag, KrissMDmgMax, KrissMCost, KrissMWeight,
                  FlareRevolverMag, FlareRevolverDmgMax, FlareRevolverCost, FlareRevolverWeight,
                  DualFlareRevolverMag, DualFlareRevolverCost, DualFlareRevolverWeight,
                  MAC10MPMag, MAC10MPDmgMax, MAC10MPCost, MAC10MPWeight,
                  TrenchgunMag, TrenchgunDmgMax, TrenchgunCost, TrenchgunWeight,
                  HuskGunMag, HuskGunDmgMax, HuskGunCost, HuskGunWeight;

var() config float Single9mmFireRate, Single9mmFireAnimRate, Single9mmReloadRate, Single9mmReloadAnimeRate,
                   DualiesFireRate, DualiesFireAnimRate, DualiesReloadRate, DualiesReloadAnimeRate, DualiesHeadShotMulti,
                   MK23FireRate, MK23FireAnimRate, MK23ReloadRate, MK23ReloadAnimeRate, MK23HeadShotMulti,
                   DualMK23FireRate, DualMK23FireAnimRate, DualMK23ReloadRate, DualMK23ReloadAnimeRate, DualMK23HeadShotMulti,
                   Single44MagnumFireRate, Single44MagnumFireAnimRate, Single44MagnumReloadRate, Single44MagnumReloadAnimeRate, Single44MagnumHeadShotMulti,
                   Dual44MagnumFireRate, Dual44MagnumFireAnimRate, Dual44MagnumReloadRate, Dual44MagnumReloadAnimeRate, Dual44MagnumHeadShotMulti,
                   SingleDeagleFireRate, SingleDeagleFireAnimRate, SingleDeagleReloadRate, SingleDeagleReloadAnimeRate, SingleDeagleHeadShotMulti,
                   DualDeagleFireRate, DualDeagleFireAnimRate, DualDeagleReloadRate, DualDeagleReloadAnimeRate, DualDeagleHeadShotMulti,
                   WinchesterFireRate, WinchesterFireAnimRate, WinchesterReloadRate, WinchesterReloadAnimeRate, WinchesterHeadShotMulti,
                   SPSniperRifleFireRate, SPSniperRifleFireAnimRate, SPSniperRifleReloadRate, SPSniperRifleReloadAnimeRate, SPSniperRifleHeadShotMulti,
                   CrossbowFireRate, CrossbowFireAnimRate, CrossbowReloadRate, CrossbowReloadAnimeRate, CrossbowHeadShotMulti,
                   M14EBRFireRate, M14EBRFireAnimRate, M14EBRReloadRate, M14EBRReloadAnimeRate, M14EBRHeadShotMulti,
                   M99FireRate, M99FireAnimRate, M99ReloadRate, M99ReloadAnimeRate, M99HeadShotMulti,
                   MP7MFireRate, MP7MFireAnimRate, MP7MReloadRate, MP7MReloadAnimeRate,
                   MP5MFireRate, MP5MFireAnimRate, MP5MReloadRate, MP5MReloadAnimeRate,
                   M7A3MFireRate, M7A3MFireAnimRate, M7A3MReloadRate, M7A3MReloadAnimeRate,
                   KrissMFireRate, KrissMFireAnimRate, KrissMReloadRate, KrissMReloadAnimeRate,
                   FlareRevolverFireRate, FlareRevolverFireAnimRate, FlareRevolverReloadRate, FlareRevolverReloadAnimeRate, FlareRevolverHeadShotMulti,
                   DualFlareRevolverFireRate, DualFlareRevolverFireAnimRate, DualFlareRevolverReloadRate, DualFlareRevolverReloadAnimeRate,
                   MAC10MPFireRate, MAC10MPFireAnimRate, MAC10MPReloadRate, MAC10MPReloadAnimeRate,
                   TrenchgunFireRate, TrenchgunFireAnimRate, TrenchgunReloadRate, TrenchgunReloadAnimeRate, TrenchgunHeadShotMulti,
                   HuskGunFireRate, HuskGunFireAnimRate, HuskGunReloadRate, HuskGunReloadAnimeRate, HuskGunHeadShotMulti;

var() config bool bEnableSharp;
var() config bool bEnableMedic;
var() config bool bEnableFireBug;

replication
{
	unreliable if (Role == ROLE_Authority)
                  bEnableSharp,
                  bEnableMedic,
                  bEnableFireBug,
		              Single9mmMag, Single9mmDmgMax,
                  DualiesMag, DualiesDmgMax, DualiesCost, DualiesWeight,
                  MK23Mag, MK23DmgMax, MK23Cost, MK23Weight,
                  DualMK23Mag, DualMK23DmgMax, DualMK23Cost, DualMK23Weight,
                  Single44MagnumMag, Single44MagnumDmgMax, Single44MagnumCost, Single44MagnumWeight,
                  Dual44MagnumMag, Dual44MagnumDmgMax, Dual44MagnumCost, Dual44MagnumWeight,
                  SingleDeagleMag, SingleDeagleDmgMax, SingleDeagleCost, SingleDeagleWeight,
                  DualDeagleMag, DualDeagleDmgMax, DualDeagleCost, DualDeagleWeight,
                  WinchesterMag, WinchesterDmgMax, WinchesterCost, WinchesterWeight,
                  CrossbowMag, CrossbowDmgMax, CrossbowCost, CrossbowWeight,
                  SPSniperRifleMag, SPSniperRifleDmgMax, SPSniperRifleCost, SPSniperRifleWeight,
                  M14EBRMag, M14EBRDmgMax, M14EBRCost, M14EBRWeight,
                  M99Mag, M99DmgMax, M99Cost, M99Weight,
                  MP7MMag, MP7MDmgMax, MP7MCost, MP7MWeight,
                  MP5MMag, MP5MDmgMax, MP5MCost, MP5MWeight,
                  M7A3MMag, M7A3MDmgMax, M7A3MCost, M7A3MWeight,
                  KrissMMag, KrissMDmgMax, KrissMCost, KrissMWeight,
                  FlareRevolverMag, FlareRevolverDmgMax, FlareRevolverCost, FlareRevolverWeight,
                  DualFlareRevolverMag, DualFlareRevolverCost, DualFlareRevolverWeight,
                  MAC10MPMag, MAC10MPDmgMax, MAC10MPCost, MAC10MPWeight,
                  TrenchgunMag, TrenchgunDmgMax, TrenchgunCost, TrenchgunWeight,
                  HuskGunMag, HuskGunDmgMax, HuskGunCost, HuskGunWeight,
                  Single9mmFireRate, Single9mmFireAnimRate, Single9mmReloadRate, Single9mmReloadAnimeRate,
                   DualiesFireRate, DualiesFireAnimRate, DualiesReloadRate, DualiesReloadAnimeRate, DualiesHeadShotMulti,
                   MK23FireRate, MK23FireAnimRate, MK23ReloadRate, MK23ReloadAnimeRate, MK23HeadShotMulti,
                   DualMK23FireRate, DualMK23FireAnimRate, DualMK23ReloadRate, DualMK23ReloadAnimeRate, DualMK23HeadShotMulti,
                   Single44MagnumFireRate, Single44MagnumFireAnimRate, Single44MagnumReloadRate, Single44MagnumReloadAnimeRate, Single44MagnumHeadShotMulti,
                   Dual44MagnumFireRate, Dual44MagnumFireAnimRate, Dual44MagnumReloadRate, Dual44MagnumReloadAnimeRate, Dual44MagnumHeadShotMulti,
                   SingleDeagleFireRate, SingleDeagleFireAnimRate, SingleDeagleReloadRate, SingleDeagleReloadAnimeRate, SingleDeagleHeadShotMulti,
                   DualDeagleFireRate, DualDeagleFireAnimRate, DualDeagleReloadRate, DualDeagleReloadAnimeRate, DualDeagleHeadShotMulti,
                   WinchesterFireRate, WinchesterFireAnimRate, WinchesterReloadRate, WinchesterReloadAnimeRate, WinchesterHeadShotMulti,
                   SPSniperRifleFireRate, SPSniperRifleFireAnimRate, SPSniperRifleReloadRate, SPSniperRifleReloadAnimeRate, SPSniperRifleHeadShotMulti,
                   CrossbowFireRate, CrossbowFireAnimRate, CrossbowReloadRate, CrossbowReloadAnimeRate, CrossbowHeadShotMulti,
                   M14EBRFireRate, M14EBRFireAnimRate, M14EBRReloadRate, M14EBRReloadAnimeRate, M14EBRHeadShotMulti,
                   M99FireRate, M99FireAnimRate, M99ReloadRate, M99ReloadAnimeRate, M99HeadShotMulti,
                   MP7MFireRate, MP7MFireAnimRate, MP7MReloadRate, MP7MReloadAnimeRate,
                   MP5MFireRate, MP5MFireAnimRate, MP5MReloadRate, MP5MReloadAnimeRate,
                   M7A3MFireRate, M7A3MFireAnimRate, M7A3MReloadRate, M7A3MReloadAnimeRate,
                   KrissMFireRate, KrissMFireAnimRate, KrissMReloadRate, KrissMReloadAnimeRate,
                   FlareRevolverFireRate, FlareRevolverFireAnimRate, FlareRevolverReloadRate, FlareRevolverReloadAnimeRate, FlareRevolverHeadShotMulti,
                   DualFlareRevolverFireRate, DualFlareRevolverFireAnimRate, DualFlareRevolverReloadRate, DualFlareRevolverReloadAnimeRate,
                   MAC10MPFireRate, MAC10MPFireAnimRate, MAC10MPReloadRate, MAC10MPReloadAnimeRate,
                   TrenchgunFireRate, TrenchgunFireAnimRate, TrenchgunReloadRate, TrenchgunReloadAnimeRate, TrenchgunHeadShotMulti,
                   HuskGunFireRate, HuskGunFireAnimRate, HuskGunReloadRate, HuskGunReloadAnimeRate, HuskGunHeadShotMulti;
}

simulated function PostNetReceive()
{
  super.PostNetReceive();
  TimeStampLog("-----|| KF-WeaponStatsConfig Server Vars Replicated ||-----");
	GetServerVars();
}

simulated function PostNetBeginPlay()
{
  SetTimer(1, false);
}

simulated function Timer()
{
  if (bEnableSharp){
    ApplySharpShooter();
  }
  if(bEnableMedic){
    ApplyFieldMedic();
  }
  if(bEnableFireBug){
    ApplyFireBug();
  }
}

simulated function ApplySharpShooter(){
    MutLog("-----|| Changing SharpShooter Weapons Stats ||-----");
    class'KFMod.Single'.default.MagCapacity=Single9mmMag;
    class'KFMod.SingleFire'.default.DamageMax=Single9mmDmgMax;
    class'KFMod.SingleFire'.default.FireRate=Single9mmFireRate;
    class'KFMod.SingleFire'.default.FireAnimRate=Single9mmFireAnimRate;
    class'KFMod.Single'.default.ReloadRate=Single9mmReloadRate;
    class'KFMod.Single'.default.ReloadAnimRate=Single9mmReloadAnimeRate;
    MutLog("-----|| Single9mm: Applied ||-----");
    class'KFMod.Dualies'.default.MagCapacity=DualiesMag;
    class'KFMod.Dualies'.default.Weight=DualiesWeight;
    class'KFMod.DualiesPickup'.default.Weight=DualiesWeight;
    class'KFMod.DualiesFire'.default.DamageMax=DualiesDmgMax;
    class'KFMod.DualiesPickup'.default.cost=DualiesCost;
    class'KFMod.DamTypeDualies'.default.HeadShotDamageMult=DualiesHeadShotMulti;
    class'KFMod.DualiesFire'.default.FireRate=DualiesFireRate;
    class'KFMod.DualiesFire'.default.FireAnimRate=DualiesFireAnimRate;
    class'KFMod.Dualies'.default.ReloadRate=DualiesReloadRate;
    class'KFMod.Dualies'.default.ReloadAnimRate=DualiesReloadAnimeRate;
    MutLog("-----|| Dualies: Applied ||-----");
    class'KFMod.MK23Pistol'.default.MagCapacity=MK23Mag;
    class'KFMod.MK23Pistol'.default.Weight=MK23Weight;
    class'KFMod.MK23Pickup'.default.Weight=MK23Weight;
    class'KFMod.MK23Fire'.default.DamageMax=MK23DmgMax;
    class'KFMod.MK23Pickup'.default.cost=MK23Cost;
    class'KFMod.DamTypeMK23Pistol'.default.HeadShotDamageMult=MK23HeadShotMulti;
    class'KFMod.MK23Fire'.default.FireRate=MK23FireRate;
    class'KFMod.MK23Fire'.default.FireAnimRate=MK23FireAnimRate;
    class'KFMod.MK23Pistol'.default.ReloadRate=MK23ReloadRate;
    class'KFMod.MK23Pistol'.default.ReloadAnimRate=MK23ReloadAnimeRate;
    MutLog("-----|| MK23: Applied ||-----");
    class'KFMod.DualMK23Pistol'.default.MagCapacity=DualMK23Mag;
    class'KFMod.DualMK23Pistol'.default.Weight=DualMK23Weight;
    class'KFMod.DualMK23Pickup'.default.Weight=DualMK23Weight;
    class'KFMod.DualMK23Fire'.default.DamageMax=DualMK23DmgMax;
    class'KFMod.DualMK23Pickup'.default.cost=DualMK23Cost;
    class'KFMod.DamTypeDualMK23Pistol'.default.HeadShotDamageMult=DualMK23HeadShotMulti;
    class'KFMod.DualMK23Fire'.default.FireRate=DualMK23FireRate;
    class'KFMod.DualMK23Fire'.default.FireAnimRate=DualMK23FireAnimRate;
    class'KFMod.DualMK23Pistol'.default.ReloadRate=DualMK23ReloadRate;
    class'KFMod.DualMK23Pistol'.default.ReloadAnimRate=DualMK23ReloadAnimeRate;
    MutLog("-----|| DualMK23: Applied ||-----");
    class'KFMod.Magnum44Pistol'.default.MagCapacity=Single44MagnumMag;
    class'KFMod.Magnum44Pistol'.default.Weight=Single44MagnumWeight;
    class'KFMod.Magnum44Pickup'.default.Weight=Single44MagnumWeight;
    class'KFMod.Magnum44Fire'.default.DamageMax=Single44MagnumDmgMax;
    class'KFMod.Magnum44Pickup'.default.cost=Single44MagnumCost;
    class'KFMod.DamTypeMagnum44Pistol'.default.HeadShotDamageMult=Single44MagnumHeadShotMulti;
    class'KFMod.Magnum44Fire'.default.FireRate=Single44MagnumFireRate;
    class'KFMod.Magnum44Fire'.default.FireAnimRate=Single44MagnumFireAnimRate;
    class'KFMod.Magnum44Pistol'.default.ReloadRate=Single44MagnumReloadRate;
    class'KFMod.Magnum44Pistol'.default.ReloadAnimRate=Single44MagnumReloadAnimeRate;
    MutLog("-----|| 44 Magnum: Applied ||-----");
    class'KFMod.Dual44Magnum'.default.MagCapacity=Dual44MagnumMag;
    class'KFMod.Dual44Magnum'.default.Weight=Dual44MagnumWeight;
    class'KFMod.Dual44MagnumPickup'.default.Weight=Dual44MagnumWeight;
    class'KFMod.Dual44MagnumFire'.default.DamageMax=Dual44MagnumDmgMax;
    class'KFMod.Dual44MagnumPickup'.default.cost=Dual44MagnumCost;
    class'KFMod.DamTypeDual44Magnum'.default.HeadShotDamageMult=Dual44MagnumHeadShotMulti;
    class'KFMod.Dual44MagnumFire'.default.FireRate=Dual44MagnumFireRate;
    class'KFMod.Dual44MagnumFire'.default.FireAnimRate=Dual44MagnumFireAnimRate;
    class'KFMod.Dual44Magnum'.default.ReloadRate=Dual44MagnumReloadRate;
    class'KFMod.Dual44Magnum'.default.ReloadAnimRate=Dual44MagnumReloadAnimeRate;
    MutLog("-----|| 44 Dual Magnum: Applied ||-----");
    class'KFMod.Deagle'.default.MagCapacity=SingleDeagleMag;
    class'KFMod.Deagle'.default.Weight=SingleDeagleWeight;
    class'KFMod.DeaglePickup'.default.Weight=SingleDeagleWeight;
    class'KFMod.DeagleFire'.default.DamageMax=SingleDeagleDmgMax;
    class'KFMod.DeaglePickup'.default.cost=SingleDeagleCost;
    class'KFMod.DamTypeDeagle'.default.HeadShotDamageMult=SingleDeagleHeadShotMulti;
    class'KFMod.DeagleFire'.default.FireRate=SingleDeagleFireRate;
    class'KFMod.DeagleFire'.default.FireAnimRate=SingleDeagleFireAnimRate;
    class'KFMod.Deagle'.default.ReloadRate=SingleDeagleReloadRate;
    class'KFMod.Deagle'.default.ReloadAnimRate=SingleDeagleReloadAnimeRate;
    MutLog("-----|| HandCannon: Applied ||-----");
    class'KFMod.DualDeagle'.default.MagCapacity=DualDeagleMag;
    class'KFMod.DualDeagle'.default.Weight=DualDeagleWeight;
    class'KFMod.DualDeaglePickup'.default.Weight=DualDeagleWeight;
    class'KFMod.DualDeagleFire'.default.DamageMax=DualDeagleDmgMax;
    class'KFMod.DualDeaglePickup'.default.cost=DualDeagleCost;
    class'KFMod.DamTypeDualDeagle'.default.HeadShotDamageMult=DualDeagleHeadShotMulti;
    class'KFMod.DualDeagleFire'.default.FireRate=DualDeagleFireRate;
    class'KFMod.DualDeagleFire'.default.FireAnimRate=DualDeagleFireAnimRate;
    class'KFMod.DualDeagle'.default.ReloadRate=DualDeagleReloadRate;
    class'KFMod.DualDeagle'.default.ReloadAnimRate=DualDeagleReloadAnimeRate;
    MutLog("-----|| Dual HandCannon: Applied ||-----");
    class'KFMod.Winchester'.default.MagCapacity=WinchesterMag;
    class'KFMod.Winchester'.default.Weight=WinchesterWeight;
    class'KFMod.WinchesterPickup'.default.Weight=WinchesterWeight;
    class'KFMod.WinchesterFire'.default.DamageMax=WinchesterDmgMax;
    class'KFMod.WinchesterPickup'.default.cost=WinchesterCost;
    class'KFMod.DamTypeWinchester'.default.HeadShotDamageMult=WinchesterHeadShotMulti;
    class'KFMod.WinchesterFire'.default.FireRate=WinchesterFireRate;
    class'KFMod.WinchesterFire'.default.FireAnimRate=WinchesterFireAnimRate;
    class'KFMod.Winchester'.default.ReloadRate=WinchesterReloadRate;
    class'KFMod.Winchester'.default.ReloadAnimRate=WinchesterReloadAnimeRate;
    MutLog("-----|| Winchester: Applied ||-----");
    class'KFMod.Crossbow'.default.MagCapacity=CrossbowMag;
    class'KFMod.Crossbow'.default.Weight=CrossbowWeight;
    class'KFMod.CrossbowPickup'.default.Weight=CrossbowWeight;
    class'KFMod.CrossbowArrow'.default.Damage=CrossbowDmgMax;
    class'KFMod.CrossbowPickup'.default.cost=CrossbowCost;
    class'KFMod.CrossbowArrow'.default.HeadShotDamageMult=CrossbowHeadShotMulti;
    class'KFMod.CrossbowFire'.default.FireRate=CrossbowFireRate;
    class'KFMod.CrossbowFire'.default.FireAnimRate=CrossbowFireAnimRate;
    class'KFMod.Crossbow'.default.ReloadRate=CrossbowReloadRate;
    class'KFMod.Crossbow'.default.ReloadAnimRate=CrossbowReloadAnimeRate;
    MutLog("-----|| Crossbow: Applied ||-----");
    class'KFMod.SPSniperRifle'.default.MagCapacity=SPSniperRifleMag;
    class'KFMod.SPSniperRifle'.default.Weight=SPSniperRifleWeight;
    class'KFMod.SPSniperPickup'.default.Weight=SPSniperRifleWeight;
    class'KFMod.SPSniperFire'.default.DamageMax=SPSniperRifleDmgMax;
    class'KFMod.SPSniperPickup'.default.cost=SPSniperRifleCost;
    class'KFMod.DamTypeSPSniper'.default.HeadShotDamageMult=SPSniperRifleHeadShotMulti;
    class'KFMod.SPSniperFire'.default.FireRate=SPSniperRifleFireRate;
    class'KFMod.SPSniperFire'.default.FireAnimRate=SPSniperRifleFireAnimRate;
    class'KFMod.SPSniperRifle'.default.ReloadRate=SPSniperRifleReloadRate;
    class'KFMod.SPSniperRifle'.default.ReloadAnimRate=SPSniperRifleReloadAnimeRate;
    MutLog("-----|| SPSniperRifle: Applied ||-----");
    class'KFMod.M14EBRBattleRifle'.default.MagCapacity=M14EBRMag;
    class'KFMod.M14EBRBattleRifle'.default.Weight=M14EBRWeight;
    class'KFMod.M14EBRPickup'.default.Weight=M14EBRWeight;
    class'KFMod.M14EBRFire'.default.DamageMax=M14EBRDmgMax;
    class'KFMod.M14EBRPickup'.default.cost=M14EBRCost;
    class'KFMod.DamTypeM14EBR'.default.HeadShotDamageMult=M14EBRHeadShotMulti;
    class'KFMod.M14EBRFire'.default.FireRate=M14EBRFireRate;
    class'KFMod.M14EBRFire'.default.FireAnimRate=M14EBRFireAnimRate;
    class'KFMod.M14EBRBattleRifle'.default.ReloadRate=M14EBRReloadRate;
    class'KFMod.M14EBRBattleRifle'.default.ReloadAnimRate=M14EBRReloadAnimeRate;
    MutLog("-----|| M14EBR: Applied ||-----");
    class'KFMod.M99SniperRifle'.default.MagCapacity=M99Mag;
    class'KFMod.M99SniperRifle'.default.Weight=M99Weight;
    class'KFMod.M99Pickup'.default.Weight=M99Weight;
    class'KFMod.M99Bullet'.default.Damage=M99DmgMax;
    class'KFMod.M99Pickup'.default.cost=M99Cost;
    class'KFMod.M99Bullet'.default.HeadShotDamageMult=M99HeadShotMulti;
    class'KFMod.M99Fire'.default.FireRate=M99FireRate;
    class'KFMod.M99Fire'.default.FireAnimRate=M99FireAnimRate;
    class'KFMod.M99SniperRifle'.default.ReloadRate=M99ReloadRate;
    class'KFMod.M99SniperRifle'.default.ReloadAnimRate=M99ReloadAnimeRate;
    MutLog("-----|| M99: Applied ||-----");
    MutLog("-----|| SS Weapons Stat Changed ||-----");
}

simulated function ApplyFieldMedic(){
  MutLog("-----|| Changing Field Medic Weapons Stats ||-----");
  class'KFMod.MP7MMedicGun'.default.MagCapacity=MP7MMag;
  class'KFMod.MP7MMedicGun'.default.Weight=MP7MWeight;
  class'KFMod.MP7MPickup'.default.Weight=MP7MWeight;
  class'KFMod.MP7MFire'.default.DamageMax=MP7MDmgMax;
  class'KFMod.MP7MPickup'.default.cost=MP7MCost;
  class'KFMod.MP7MFire'.default.FireRate=MP7MFireRate;
  class'KFMod.MP7MFire'.default.FireAnimRate=MP7MFireAnimRate;
  class'KFMod.MP7MMedicGun'.default.ReloadRate=MP7MReloadRate;
  class'KFMod.MP7MMedicGun'.default.ReloadAnimRate=MP7MReloadAnimeRate;
  MutLog("-----|| MP7M: Applied ||-----");
  class'KFMod.MP5MMedicGun'.default.MagCapacity=MP5MMag;
  class'KFMod.MP5MMedicGun'.default.Weight=MP5MWeight;
  class'KFMod.MP5MPickup'.default.Weight=MP5MWeight;
  class'KFMod.MP5MFire'.default.DamageMax=MP5MDmgMax;
  class'KFMod.MP5MPickup'.default.cost=MP5MCost;
  class'KFMod.MP5MFire'.default.FireRate=MP5MFireRate;
  class'KFMod.MP5MFire'.default.FireAnimRate=MP5MFireAnimRate;
  class'KFMod.MP5MMedicGun'.default.ReloadRate=MP5MReloadRate;
  class'KFMod.MP5MMedicGun'.default.ReloadAnimRate=MP5MReloadAnimeRate;
  MutLog("-----|| MP5M: Applied ||-----");
  class'KFMod.M7A3MMedicGun'.default.MagCapacity=M7A3MMag;
  class'KFMod.M7A3MMedicGun'.default.Weight=M7A3MWeight;
  class'KFMod.M7A3MPickup'.default.Weight=M7A3MWeight;
  class'KFMod.M7A3MFire'.default.DamageMax=M7A3MDmgMax;
  class'KFMod.M7A3MPickup'.default.cost=M7A3MCost;
  class'KFMod.M7A3MFire'.default.FireRate=M7A3MFireRate;
  class'KFMod.M7A3MFire'.default.FireAnimRate=M7A3MFireAnimRate;
  class'KFMod.M7A3MMedicGun'.default.ReloadRate=M7A3MReloadRate;
  class'KFMod.M7A3MMedicGun'.default.ReloadAnimRate=M7A3MReloadAnimeRate;
  MutLog("-----|| M7A3M: Applied ||-----");
  class'KFMod.KrissMMedicGun'.default.MagCapacity=KrissMMag;
  class'KFMod.KrissMMedicGun'.default.Weight=KrissMWeight;
  class'KFMod.KrissMPickup'.default.Weight=KrissMWeight;
  class'KFMod.KrissMFire'.default.DamageMax=KrissMDmgMax;
  class'KFMod.KrissMPickup'.default.cost=KrissMCost;
  class'KFMod.KrissMFire'.default.FireRate=KrissMFireRate;
  class'KFMod.KrissMFire'.default.FireAnimRate=KrissMFireAnimRate;
  class'KFMod.KrissMMedicGun'.default.ReloadRate=KrissMReloadRate;
  class'KFMod.KrissMMedicGun'.default.ReloadAnimRate=KrissMReloadAnimeRate;
  MutLog("-----|| KrissM: Applied ||-----");
  MutLog("-----|| Medic Weapons Stat Changed ||-----");
}

simulated function ApplyFireBug(){
  MutLog("-----|| Changing Fire Bug Weapons Stats ||-----");
  class'KFMod.FlareRevolver'.default.MagCapacity=FlareRevolverMag;
  class'KFMod.FlareRevolver'.default.Weight=FlareRevolverWeight;
  class'KFMod.FlareRevolverPickup'.default.Weight=FlareRevolverWeight;
  class'KFMod.FlareRevolverProjectile'.default.ImpactDamage=FlareRevolverDmgMax;
  class'KFMod.FlareRevolverPickup'.default.cost=FlareRevolverCost;
  class'KFMod.FlareRevolverProjectile'.default.HeadShotDamageMult=FlareRevolverHeadShotMulti;
  class'KFMod.FlareRevolverFire'.default.FireRate=FlareRevolverFireRate;
  class'KFMod.FlareRevolverFire'.default.FireAnimRate=FlareRevolverFireAnimRate;
  class'KFMod.FlareRevolver'.default.ReloadRate=FlareRevolverReloadRate;
  class'KFMod.FlareRevolver'.default.ReloadAnimRate=FlareRevolverReloadAnimeRate;
  MutLog("-----|| FlareRevolver: Applied ||-----");
  class'KFMod.DualFlareRevolver'.default.MagCapacity=DualFlareRevolverMag;
  class'KFMod.DualFlareRevolver'.default.Weight=DualFlareRevolverWeight;
  class'KFMod.DualFlareRevolverPickup'.default.Weight=DualFlareRevolverWeight;
  class'KFMod.DualFlareRevolverPickup'.default.cost=DualFlareRevolverCost;
  class'KFMod.DualFlareRevolverFire'.default.FireRate=DualFlareRevolverFireRate;
  class'KFMod.DualFlareRevolverFire'.default.FireAnimRate=DualFlareRevolverFireAnimRate;
  class'KFMod.DualFlareRevolver'.default.ReloadRate=DualFlareRevolverReloadRate;
  class'KFMod.DualFlareRevolver'.default.ReloadAnimRate=DualFlareRevolverReloadAnimeRate;
  MutLog("-----|| DualFlareRevolver: Applied ||-----");
  class'KFMod.MAC10MP'.default.MagCapacity=MAC10MPMag;
  class'KFMod.MAC10MP'.default.Weight=MAC10MPWeight;
  class'KFMod.MAC10Pickup'.default.Weight=MAC10MPWeight;
  class'KFMod.MAC10Fire'.default.DamageMax=MAC10MPDmgMax;
  class'KFMod.MAC10Pickup'.default.cost=MAC10MPCost;
  class'KFMod.MAC10Fire'.default.FireRate=MAC10MPFireRate;
  class'KFMod.MAC10Fire'.default.FireAnimRate=MAC10MPFireAnimRate;
  class'KFMod.MAC10MP'.default.ReloadRate=MAC10MPReloadRate;
  class'KFMod.MAC10MP'.default.ReloadAnimRate=MAC10MPReloadAnimeRate;
  MutLog("-----|| MAC10MP: Applied ||-----");
  class'KFMod.Trenchgun'.default.MagCapacity=TrenchgunMag;
  class'KFMod.Trenchgun'.default.Weight=TrenchgunWeight;
  class'KFMod.TrenchgunPickup'.default.Weight=TrenchgunWeight;
  class'KFMod.TrenchgunBullet'.default.Damage=TrenchgunDmgMax;
  class'KFMod.TrenchgunBullet'.default.HeadShotDamageMult=TrenchgunHeadShotMulti;
  class'KFMod.TrenchgunPickup'.default.cost=TrenchgunCost;
  class'KFMod.TrenchgunFire'.default.FireRate=TrenchgunFireRate;
  class'KFMod.TrenchgunFire'.default.FireAnimRate=TrenchgunFireAnimRate;
  class'KFMod.Trenchgun'.default.ReloadRate=TrenchgunReloadRate;
  class'KFMod.Trenchgun'.default.ReloadAnimRate=TrenchgunReloadAnimeRate;
  MutLog("-----|| Trenchgun: Applied ||-----");
  class'KFMod.HuskGun'.default.MagCapacity=HuskGunMag;
  class'KFMod.HuskGun'.default.Weight=HuskGunWeight;
  class'KFMod.HuskGunPickup'.default.Weight=HuskGunWeight;
  class'KFMod.HuskGunProjectile'.default.ImpactDamage=HuskGunDmgMax;
  class'KFMod.HuskGunProjectile'.default.HeadShotDamageMult=HuskGunHeadShotMulti;
  class'KFMod.HuskGunPickup'.default.cost=HuskGunCost;
  class'KFMod.HuskGunFire'.default.FireRate=HuskGunFireRate;
  class'KFMod.HuskGunFire'.default.FireAnimRate=HuskGunFireAnimRate;
  class'KFMod.HuskGun'.default.ReloadRate=HuskGunReloadRate;
  class'KFMod.HuskGun'.default.ReloadAnimRate=HuskGunReloadAnimeRate;
  MutLog("-----|| HuskGun: Applied ||-----");
  MutLog("-----|| Fire Bug Weapons Stat Changed ||-----");

}

simulated function GetServerVars(){

    // Options Vars
    default.bEnableSharp = bEnableSharp;
    default.bEnableMedic = bEnableMedic;
    default.bEnableFireBug = bEnableFireBug;

    // SS Vars
    default.Single9mmMag = Single9mmMag;
    default.Single9mmDmgMax = Single9mmDmgMax;
    default.Single9mmFireRate = Single9mmFireRate;
    default.Single9mmFireAnimRate = Single9mmFireAnimRate;
    default.Single9mmReloadRate = Single9mmReloadRate;
    default.Single9mmReloadAnimeRate = Single9mmReloadAnimeRate;
    default.DualiesMag = DualiesMag;
    default.DualiesDmgMax = DualiesDmgMax;
    default.DualiesCost = DualiesCost;
    default.DualiesWeight = DualiesWeight;
    default.DualiesHeadShotMulti = DualiesHeadShotMulti;
    default.DualiesFireRate = DualiesFireRate;
    default.DualiesFireAnimRate = DualiesFireAnimRate;
    default.DualiesReloadRate = DualiesReloadRate;
    default.DualiesReloadAnimeRate = DualiesReloadAnimeRate;
    default.MK23Mag = MK23Mag;
    default.MK23DmgMax = MK23DmgMax;
    default.MK23Cost = MK23Cost;
    default.MK23Weight = MK23Weight;
    default.MK23HeadShotMulti = MK23HeadShotMulti;
    default.MK23FireRate = MK23FireRate;
    default.MK23FireAnimRate = MK23FireAnimRate;
    default.MK23ReloadRate = MK23ReloadRate;
    default.MK23ReloadAnimeRate = MK23ReloadAnimeRate;
    default.DualMK23Mag = DualMK23Mag;
    default.DualMK23DmgMax = DualMK23DmgMax;
    default.DualMK23Cost = DualMK23Cost;
    default.DualMK23Weight = DualMK23Weight;
    default.DualMK23HeadShotMulti = DualMK23HeadShotMulti;
    default.DualMK23FireRate = DualMK23FireRate;
    default.DualMK23FireAnimRate = DualMK23FireAnimRate;
    default.DualMK23ReloadRate = DualMK23ReloadRate;
    default.DualMK23ReloadAnimeRate = DualMK23ReloadAnimeRate;
    default.Single44MagnumMag = Single44MagnumMag;
    default.Single44MagnumDmgMax = Single44MagnumDmgMax;
    default.Single44MagnumCost = Single44MagnumCost;
    default.Single44MagnumWeight = Single44MagnumWeight;
    default.Single44MagnumHeadShotMulti = Single44MagnumHeadShotMulti;
    default.Single44MagnumFireRate = Single44MagnumFireRate;
    default.Single44MagnumFireAnimRate = Single44MagnumFireAnimRate;
    default.Single44MagnumReloadRate = Single44MagnumReloadRate;
    default.Single44MagnumReloadAnimeRate = Single44MagnumReloadAnimeRate;
    default.Dual44MagnumMag = Dual44MagnumMag;
    default.Dual44MagnumDmgMax = Dual44MagnumDmgMax;
    default.Dual44MagnumCost = Dual44MagnumCost;
    default.Dual44MagnumWeight = Dual44MagnumWeight;
    default.Dual44MagnumHeadShotMulti = Dual44MagnumHeadShotMulti;
    default.Dual44MagnumFireRate = Dual44MagnumFireRate;
    default.Dual44MagnumFireAnimRate = Dual44MagnumFireAnimRate;
    default.Dual44MagnumReloadRate = Dual44MagnumReloadRate;
    default.Dual44MagnumReloadAnimeRate = Dual44MagnumReloadAnimeRate;
    default.SingleDeagleMag = SingleDeagleMag;
    default.SingleDeagleDmgMax = SingleDeagleDmgMax;
    default.SingleDeagleCost = SingleDeagleCost;
    default.SingleDeagleWeight = SingleDeagleWeight;
    default.SingleDeagleHeadShotMulti = SingleDeagleHeadShotMulti;
    default.SingleDeagleFireRate = SingleDeagleFireRate;
    default.SingleDeagleFireAnimRate = SingleDeagleFireAnimRate;
    default.SingleDeagleReloadRate = SingleDeagleReloadRate;
    default.SingleDeagleReloadAnimeRate = SingleDeagleReloadAnimeRate;
    default.DualDeagleMag = DualDeagleMag;
    default.DualDeagleDmgMax = DualDeagleDmgMax;
    default.DualDeagleCost = DualDeagleCost;
    default.DualDeagleWeight = DualDeagleWeight;
    default.DualDeagleHeadShotMulti = DualDeagleHeadShotMulti;
    default.DualDeagleFireRate = DualDeagleFireRate;
    default.DualDeagleFireAnimRate = DualDeagleFireAnimRate;
    default.DualDeagleReloadRate = DualDeagleReloadRate;
    default.DualDeagleReloadAnimeRate = DualDeagleReloadAnimeRate;
    default.WinchesterMag = WinchesterMag;
    default.WinchesterDmgMax = WinchesterDmgMax;
    default.WinchesterCost = WinchesterCost;
    default.WinchesterWeight = WinchesterWeight;
    default.WinchesterHeadShotMulti = WinchesterHeadShotMulti;
    default.WinchesterFireRate = WinchesterFireRate;
    default.WinchesterFireAnimRate = WinchesterFireAnimRate;
    default.WinchesterReloadRate = WinchesterReloadRate;
    default.WinchesterReloadAnimeRate = WinchesterReloadAnimeRate;
    default.CrossbowMag = CrossbowMag;
    default.CrossbowDmgMax = CrossbowDmgMax;
    default.CrossbowCost = CrossbowCost;
    default.CrossbowWeight = CrossbowWeight;
    default.CrossbowHeadShotMulti = CrossbowHeadShotMulti;
    default.CrossbowFireRate = CrossbowFireRate;
    default.CrossbowFireAnimRate = CrossbowFireAnimRate;
    default.CrossbowReloadRate = CrossbowReloadRate;
    default.CrossbowReloadAnimeRate = CrossbowReloadAnimeRate;
    default.SPSniperRifleMag = SPSniperRifleMag;
    default.SPSniperRifleDmgMax = SPSniperRifleDmgMax;
    default.SPSniperRifleCost = SPSniperRifleCost;
    default.SPSniperRifleWeight = SPSniperRifleWeight;
    default.SPSniperRifleHeadShotMulti = SPSniperRifleHeadShotMulti;
    default.SPSniperRifleFireRate = SPSniperRifleFireRate;
    default.SPSniperRifleFireAnimRate = SPSniperRifleFireAnimRate;
    default.SPSniperRifleReloadRate = SPSniperRifleReloadRate;
    default.SPSniperRifleReloadAnimeRate = SPSniperRifleReloadAnimeRate;
    default.M14EBRMag = M14EBRMag;
    default.M14EBRDmgMax = M14EBRDmgMax;
    default.M14EBRCost = M14EBRCost;
    default.M14EBRWeight = M14EBRWeight;
    default.M14EBRHeadShotMulti = M14EBRHeadShotMulti;
    default.M14EBRFireRate = M14EBRFireRate;
    default.M14EBRFireAnimRate = M14EBRFireAnimRate;
    default.M14EBRReloadRate = M14EBRReloadRate;
    default.M14EBRReloadAnimeRate = M14EBRReloadAnimeRate;
    default.M99Mag = M99Mag;
    default.M99DmgMax = M99DmgMax;
    default.M99Cost = M99Cost;
    default.M99Weight = M99Weight;
    default.M99HeadShotMulti = M99HeadShotMulti;
    default.M99FireRate = M99FireRate;
    default.M99FireAnimRate = M99FireAnimRate;
    default.M99ReloadRate = M99ReloadRate;
    default.M99ReloadAnimeRate = M99ReloadAnimeRate;

    // Field Medic
    default.MP7MMag = MP7MMag;
    default.MP7MDmgMax = MP7MDmgMax;
    default.MP7MCost = MP7MCost;
    default.MP7MWeight = MP7MWeight;
    default.MP7MFireRate = MP7MFireRate;
    default.MP7MFireAnimRate = MP7MFireAnimRate;
    default.MP7MReloadRate = MP7MReloadRate;
    default.MP7MReloadAnimeRate = MP7MReloadAnimeRate;
    default.MP5MMag = MP5MMag;
    default.MP5MDmgMax = MP5MDmgMax;
    default.MP5MCost = MP5MCost;
    default.MP5MWeight = MP5MWeight;
    default.MP5MFireRate = MP5MFireRate;
    default.MP5MFireAnimRate = MP5MFireAnimRate;
    default.MP5MReloadRate = MP5MReloadRate;
    default.MP5MReloadAnimeRate = MP5MReloadAnimeRate;
    default.M7A3MMag = M7A3MMag;
    default.M7A3MDmgMax = M7A3MDmgMax;
    default.M7A3MCost = M7A3MCost;
    default.M7A3MWeight = M7A3MWeight;
    default.M7A3MFireRate = M7A3MFireRate;
    default.M7A3MFireAnimRate = M7A3MFireAnimRate;
    default.M7A3MReloadRate = M7A3MReloadRate;
    default.M7A3MReloadAnimeRate = M7A3MReloadAnimeRate;
    default.KrissMMag = KrissMMag;
    default.KrissMDmgMax = KrissMDmgMax;
    default.KrissMCost = KrissMCost;
    default.KrissMWeight = KrissMWeight;
    default.KrissMFireRate = KrissMFireRate;
    default.KrissMFireAnimRate = KrissMFireAnimRate;
    default.KrissMReloadRate = KrissMReloadRate;
    default.KrissMReloadAnimeRate = KrissMReloadAnimeRate;

    // Fire Bug
    default.FlareRevolverMag = FlareRevolverMag;
    default.FlareRevolverDmgMax = FlareRevolverDmgMax;
    default.FlareRevolverCost = FlareRevolverCost;
    default.FlareRevolverWeight = FlareRevolverWeight;
    default.FlareRevolverHeadShotMulti = FlareRevolverHeadShotMulti;
    default.FlareRevolverFireRate = FlareRevolverFireRate;
    default.FlareRevolverFireAnimRate = FlareRevolverFireAnimRate;
    default.FlareRevolverReloadRate = FlareRevolverReloadRate;
    default.FlareRevolverReloadAnimeRate = FlareRevolverReloadAnimeRate;
    default.DualFlareRevolverMag = DualFlareRevolverMag;
    default.DualFlareRevolverCost = DualFlareRevolverCost;
    default.DualFlareRevolverWeight = DualFlareRevolverWeight;
    default.DualFlareRevolverFireRate = DualFlareRevolverFireRate;
    default.DualFlareRevolverFireAnimRate = DualFlareRevolverFireAnimRate;
    default.DualFlareRevolverReloadRate = DualFlareRevolverReloadRate;
    default.DualFlareRevolverReloadAnimeRate = DualFlareRevolverReloadAnimeRate;
    default.MAC10MPMag = MAC10MPMag;
    default.MAC10MPDmgMax = MAC10MPDmgMax;
    default.MAC10MPCost = MAC10MPCost;
    default.MAC10MPWeight = MAC10MPWeight;
    default.MAC10MPFireRate = MAC10MPFireRate;
    default.MAC10MPFireAnimRate = MAC10MPFireAnimRate;
    default.MAC10MPReloadRate = MAC10MPReloadRate;
    default.MAC10MPReloadAnimeRate = MAC10MPReloadAnimeRate;
    default.TrenchgunMag = TrenchgunMag;
    default.TrenchgunDmgMax = TrenchgunDmgMax;
    default.TrenchgunCost = TrenchgunCost;
    default.TrenchgunWeight = TrenchgunWeight;
    default.TrenchgunHeadShotMulti = TrenchgunHeadShotMulti;
    default.TrenchgunFireRate = TrenchgunFireRate;
    default.TrenchgunFireAnimRate = TrenchgunFireAnimRate;
    default.TrenchgunReloadRate = TrenchgunReloadRate;
    default.TrenchgunReloadAnimeRate = TrenchgunReloadAnimeRate;
    default.HuskGunMag = HuskGunMag;
    default.HuskGunDmgMax = HuskGunDmgMax;
    default.HuskGunCost = HuskGunCost;
    default.HuskGunWeight = HuskGunWeight;
    default.HuskGunHeadShotMulti = HuskGunHeadShotMulti;
    default.HuskGunFireRate = HuskGunFireRate;
    default.HuskGunFireAnimRate = HuskGunFireAnimRate;
    default.HuskGunReloadRate = HuskGunReloadRate;
    default.HuskGunReloadAnimeRate = HuskGunReloadAnimeRate;
}

static function FillPlayInfo(PlayInfo PlayInfo)
{
	Super.FillPlayInfo(PlayInfo);

    // Options
    PlayInfo.AddSetting("KFWeaponStatConfig", "bEnableSharp", "Enable Changes for SharpShooter Weapons", 0, 0, "check");
    PlayInfo.AddSetting("KFWeaponStatConfig", "bEnableMedic", "Enable Changes for Field Medic Weapons", 0, 0, "check");
    PlayInfo.AddSetting("KFWeaponStatConfig", "bEnableFireBug", "Enable Changes for Fire Bug Weapons", 0, 0, "check");

    // SharpShooter
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single9mmMag", "0. Single9mm Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single9mmDmgMax", "0. Single9mm Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single9mmFireRate", "0. Single9mm Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single9mmFireAnimRate", "0. Single9mm Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single9mmReloadRate", "0. Single9mm Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single9mmReloadAnimeRate", "0. Single9mm Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesMag", "0. Dualies Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesDmgMax", "0. Dualies Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesCost", "0. Dualies Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesWeight", "0. Dualies Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesHeadShotMulti", "0. Dualies HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesFireRate", "0. Dualies Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesFireAnimRate", "0. Dualies Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesReloadRate", "0. Dualies Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualiesReloadAnimeRate", "0. Dualies Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23Mag", "0. MK23 Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23DmgMax", "0. MK23 Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23Cost", "0. MK23 Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23Weight", "0. MK23 Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23HeadShotMulti", "0. MK23 HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23FireRate", "0. MK23 Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23FireAnimRate", "0. MK23 Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23ReloadRate", "0. MK23 Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MK23ReloadAnimeRate", "0. MK23 Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23Mag", "0. DualMK23 Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23DmgMax", "0. DualMK23 Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23Cost", "0. DualMK23 Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23Weight", "0. DualMK23 Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23HeadShotMulti", "0. DualMK23 HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23FireRate", "0. DualMK23 Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23FireAnimRate", "0. DualMK23 Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23ReloadRate", "0. DualMK23 Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualMK23ReloadAnimeRate", "0. DualMK23 Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumMag", "0. 44 Magnum Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumDmgMax", "0. 44 Magnum Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumCost", "0. 44 Magnum Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumWeight", "0. 44 Magnum Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumHeadShotMulti", "0. Single44Magnum HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumFireRate", "0. Single44Magnum Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumFireAnimRate", "0. Single44Magnum Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumReloadRate", "0. Single44Magnum Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Single44MagnumReloadAnimeRate", "0. Single44Magnum Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumMag", "0. 44 Dual Magnum Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumDmgMax", "0. 44 Dual Magnum Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumCost", "0. 44 Dual Magnum Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumWeight", "0. 44 Dual Magnum Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumHeadShotMulti", "0. Dual44Magnum HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumFireRate", "0. Dual44Magnum Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumFireAnimRate", "0. Dual44Magnum Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumReloadRate", "0. Dual44Magnum Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "Dual44MagnumReloadAnimeRate", "0. Dual44Magnum Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleMag", "0. HandCannon Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleDmgMax", "0. HandCannon Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleCost", "0. HandCannon Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleWeight", "0. HandCannon Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleHeadShotMulti", "0. SingleDeagle HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleFireRate", "0. SingleDeagle Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleFireAnimRate", "0. SingleDeagle Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleReloadRate", "0. SingleDeagle Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SingleDeagleReloadAnimeRate", "0. SingleDeagle Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleMag", "0. Dual HandCannon Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleDmgMax", "0. Dual HandCannon Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleCost", "0. Dual HandCannon Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleWeight", "0. Dual HandCannon Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleHeadShotMulti", "0. DualDeagle HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleFireRate", "0. DualDeagle Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleFireAnimRate", "0. DualDeagle Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleReloadRate", "0. DualDeagle Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualDeagleReloadAnimeRate", "0. DualDeagle Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterMag", "0. Winchester Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterDmgMax", "0. Winchester Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterCost", "0. Winchester Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterWeight", "0. Winchester Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterHeadShotMulti", "0. Winchester HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterFireRate", "0. Winchester Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterFireAnimRate", "0. Winchester Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterReloadRate", "0. Winchester Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "WinchesterReloadAnimeRate", "0. Winchester Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowMag", "0. Crossbow Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowDmgMax", "0. Crossbow Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowCost", "0. Crossbow Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowWeight", "0. Crossbow Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowHeadShotMulti", "0. Crossbow HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowFireRate", "0. Crossbow Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowFireAnimRate", "0. Crossbow Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowReloadRate", "0. Crossbow Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "CrossbowReloadAnimeRate", "0. Crossbow Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleMag", "0. SPSniperRifle Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleDmgMax", "0. SPSniperRifle Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleCost", "0. SPSniperRifle Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleWeight", "0. SPSniperRifle Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleHeadShotMulti", "0. SPSniper HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleFireRate", "0. SPSniper Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleFireAnimRate", "0. SPSniper Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleReloadRate", "0. SPSniper Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "SPSniperRifleReloadAnimeRate", "0. SPSniper Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRMag", "0. M14EBR Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRDmgMax", "0. M14EBR Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRCost", "0. M14EBR Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRWeight", "0. M14EBR Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRHeadShotMulti", "0. M14EBR HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRFireRate", "0. M14EBR Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRFireAnimRate", "0. M14EBR Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRReloadRate", "0. M14EBR Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M14EBRReloadAnimeRate", "0. M14EBR Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99Mag", "0. M99 Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99DmgMax", "0. M99 Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99Cost", "0. M99 Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99Weight", "0. M99 Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99HeadShotMulti", "0. M99 HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99FireRate", "0. M99 Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99FireAnimRate", "0. M99 Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99ReloadRate", "0. M99 Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M99ReloadAnimeRate", "0. M99 Reload Anime Rate", 0, 0, "text");

    // Field Medic
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MMag", "1. MP7M Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MDmgMax", "1. MP7M Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MCost", "1. MP7M Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MWeight", "1. MP7M Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MFireRate", "1. MP7M Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MFireAnimRate", "1. MP7M Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MReloadRate", "1. MP7M Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP7MReloadAnimeRate", "1. MP7M Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MMag", "1. MP5M Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MDmgMax", "1. MP5M Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MCost", "1. MP5M Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MWeight", "1. MP5M Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MFireRate", "1. MP5M Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MFireAnimRate", "1. MP5M Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MReloadRate", "1. MP5M Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MP5MReloadAnimeRate", "1. MP5M Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MMag", "1. M7A3M Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MDmgMax", "1. M7A3M Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MCost", "1. M7A3M Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MWeight", "1. M7A3M Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MFireRate", "1. M7A3M Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MFireAnimRate", "1. M7A3M Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MReloadRate", "1. M7A3M Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "M7A3MReloadAnimeRate", "1. M7A3M Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMMag", "1. KrissM Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMDmgMax", "1. KrissM Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMCost", "1. KrissM Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMWeight", "1. KrissM Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMFireRate", "1. KrissM Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMFireAnimRate", "1. KrissM Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMReloadRate", "1. KrissM Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "KrissMReloadAnimeRate", "1. KrissM Reload Anime Rate", 0, 0, "text");

    // Fire Bug
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverMag", "2. FlareRevolver Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverDmgMax", "2. FlareRevolver Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverCost", "2. FlareRevolver Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverWeight", "2. FlareRevolver Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverHeadShotMulti", "2. FlareRevolver HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverFireRate", "2. FlareRevolver Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverFireAnimRate", "2. FlareRevolver Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverReloadRate", "2. FlareRevolver Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "FlareRevolverReloadAnimeRate", "2. FlareRevolver Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverMag", "2. DualFlareRevolver Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverCost", "2. DualFlareRevolver Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverWeight", "2. DualFlareRevolver Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverFireRate", "2. DualFlareRevolver Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverFireAnimRate", "2. DualFlareRevolver Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverReloadRate", "2. DualFlareRevolver Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "DualFlareRevolverReloadAnimeRate", "2. DualFlareRevolver Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPMag", "2. MAC10MP Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPDmgMax", "2. MAC10MP Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPCost", "2. MAC10MP Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPWeight", "2. MAC10MP Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPFireRate", "2. MAC10MP Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPFireAnimRate", "2. MAC10MP Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPReloadRate", "2. MAC10MP Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "MAC10MPReloadAnimeRate", "2. MAC10MP Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunMag", "2. Trenchgun Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunDmgMax", "2. Trenchgun Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunCost", "2. Trenchgun Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunWeight", "2. Trenchgun Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunHeadShotMulti", "2. TrenchGun HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunFireRate", "2. Trenchgun Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunFireAnimRate", "2. Trenchgun Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunReloadRate", "2. Trenchgun Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "TrenchgunReloadAnimeRate", "2. Trenchgun Reload Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunMag", "2. HuskGun Mag", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunDmgMax", "2. HuskGun Max Damage", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunCost", "2. HuskGun Cost", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunWeight", "2. HuskGun Weight", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunHeadShotMulti", "2. HuskGun HeadShot Multiplier", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunFireRate", "2. HuskGun Fire Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunFireAnimRate", "2. HuskGun Fire Anime Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunReloadRate", "2. HuskGun Reload Rate", 0, 0, "text");
    PlayInfo.AddSetting("KFWeaponStatConfig", "HuskGunReloadAnimeRate", "2. HuskGun Reload Anime Rate", 0, 0, "text");
}

static function string GetDescriptionText(string SettingName)
{
	switch(SettingName)
	{
    case "bEnableSharp":
      return "Apply Stat Changes for SharpShooter weapons";
    case "bEnableMedic":
      return "Apply Stat Changes for Field Medic weapons";
    case "bEnableFireBug":
      return "Apply Stat Changes for Fire Bug weapons";
		case "Single9mmMag":
			return "Mag Size | Default is 15";
    case "Single9mmDmgMax":
			return "Max Damage | Default is 35";
    case "Single9mmFireRate":
			return "Fire Rate | Default is 0.175";
    case "Single9mmFireAnimRate":
			return "Anime Fire Rate | Default is 1.5";
    case "Single9mmReloadRate":
			return "Reload Rate | Default is 2.0";
    case "Single9mmReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "DualiesMag":
			return "Mag Size | Default is 30";
    case "DualiesDmgMax":
			return "Max Damage | Default is 35";
    case "DualiesCost":
			return "Cost | Default is 150";
    case "DualiesWeight":
			return "Weight | Default is 4";
    case "DualiesHeadShotMulti":
			return "HeadShot Multiplier (Shared with Single 9mm) | Default is 1.1";
    case "DualiesFireRate":
			return "Fire Rate | Default is 0.1";
    case "DualiesFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "DualiesReloadRate":
			return "Reload Rate | Default is 3.5";
    case "DualiesReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "MK23Mag":
			return "Mag Size | Default is 12";
    case "MK23DmgMax":
			return "Max Damage | Default is 82";
    case "MK23Cost":
			return "Cost | Default is 500";
    case "MK23Weight":
			return "Weight | Default is 2";
    case "MK23HeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "MK23FireRate":
			return "Fire Rate | Default is 0.18";
    case "MK23FireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "MK23ReloadRate":
			return "Reload Rate | Default is 2.6";
    case "MK23ReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "DualMK23Mag":
			return "Mag Size | Default is 24";
    case "DualMK23DmgMax":
			return "Max Damage | Default is 82";
    case "DualMK23Cost":
			return "Cost | Default is 1000";
    case "DualMK23Weight":
			return "Cost | Default is 4";
    case "DualMK23HeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "DualMK23FireRate":
			return "Fire Rate | Default is 0.12";
    case "DualMK23FireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "DualMK23ReloadRate":
			return "Reload Rate | Default is 4.4667";
    case "DualMK23ReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "Single44MagnumMag":
			return "Mag Size | Default is 6";
    case "Single44MagnumDmgMax":
			return "Max Damage | Default is 105";
    case "Single44MagnumCost":
			return "Cost | Default is 450";
    case "Single44MagnumWeight":
			return "Weight | Default is 2";
    case "Single44MagnumHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "Single44MagnumFireRate":
			return "Fire Rate | Default is 0.15";
    case "Single44MagnumFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "Single44MagnumReloadRate":
			return "Reload Rate | Default is 2.525";
    case "Single44MagnumReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "Dual44MagnumMag":
			return "Mag Size | Default is 12";
    case "Dual44MagnumDmgMax":
			return "Max Damage | Default is 105";
    case "Dual44MagnumCost":
			return "Cost | Default is 900";
    case "Dual44MagnumWeight":
			return "Weight | Default is 4";
    case "Dual44MagnumHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "Dual44MagnumFireRate":
			return "Fire Rate | Default is 0.075";
    case "Dual44MagnumFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "Dual44MagnumReloadRate":
			return "Reload Rate | Default is 4.4667";
    case "Dual44MagnumReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "SingleDeagleMag":
			return "Mag Size | Default is 8";
    case "SingleDeagleDmgMax":
			return "Max Damage | Default is 115";
    case "SingleDeagleCost":
			return "Cost | Default is 500";
    case "SingleDeagleWeight":
			return "Weight | Default is 2";
    case "SingleDeagleHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "SingleDeagleFireRate":
			return "Fire Rate | Default is 0.25";
    case "SingleDeagleFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "SingleDeagleReloadRate":
			return "Reload Rate | Default is 2.2";
    case "SingleDeagleReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "DualDeagleMag":
			return "Mag Size | Default is 16";
    case "DualDeagleDmgMax":
			return "Max Damage | Default is 115";
    case "DualDeagleCost":
			return "Cost | Default is 1000";
    case "DualDeagleWeight":
			return "Weight | Default is 4";
    case "DualDeagleHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "DualDeagleFireRate":
			return "Fire Rate | Default is 0.13";
    case "DualDeagleFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "DualDeagleReloadRate":
			return "Reload Rate | Default is 3.5";
    case "DualDeagleReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "WinchesterMag":
			return "Mag Size | Default is 10";
    case "WinchesterDmgMax":
			return "Max Damage | Default is 140";
    case "WinchesterCost":
			return "Cost | Default is 200";
    case "WinchesterWeight":
			return "Weight | Default is 6";
    case "WinchesterHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "WinchesterFireRate":
			return "Fire Rate | Default is 0.9";
    case "WinchesterFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "WinchesterReloadRate":
			return "Reload Rate | Default is 0.66666666667";
    case "WinchesterReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "CrossbowMag":
			return "Mag Size | Default is 1";
    case "CrossbowDmgMax":
			return "Max Damage | Default is 300";
    case "CrossbowCost":
			return "Cost | Default is 800";
    case "CrossbowWeight":
			return "Weight | Default is 9";
    case "CrossbowHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "CrossbowFireRate":
			return "Fire Rate | Default is 1.8";
    case "CrossbowFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "CrossbowReloadRate":
			return "Reload Rate | Default is 0.01";
    case "CrossbowReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "SPSniperRifleMag":
			return "Mag Size | Default is 10";
    case "SPSniperRifleDmgMax":
			return "Max Damage | Default is 180";
    case "SPSniperRifleCost":
			return "Cost | Default is 1500";
    case "SPSniperRifleWeight":
			return "Weight | Default is 6";
    case "SPSniperRifleHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "SPSniperRifleFireRate":
			return "Fire Rate | Default is 0.94";
    case "SPSniperRifleFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "SPSniperRifleReloadRate":
			return "Reload Rate | Default is 2.866";
    case "SPSniperRifleReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "M14EBRMag":
			return "Mag Size | Default is 20";
    case "M14EBRDmgMax":
			return "Max Damage | Default is 80";
    case "M14EBRCost":
			return "Cost | Default is 2500";
    case "M14EBRWeight":
			return "Weight | Default is 8";
    case "M14EBRHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "M14EBRFireRate":
			return "Fire Rate | Default is 0.25";
    case "M14EBRFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "M14EBRReloadRate":
			return "Reload Rate | Default is 3.366";
    case "M14EBRReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "M99Mag":
			return "Mag Size | Default is 1";
    case "M99DmgMax":
			return "Max Damage | Default is 675";
    case "M99Cost":
			return "Cost | Default is 3500";
    case "M99Weight":
			return "Weight | Default is 13";
    case "M99HeadShotMulti":
			return "HeadShot Multiplier | Default is 1.1";
    case "M99FireRate":
			return "Fire Rate | Default is 0.175";
    case "M99FireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "M99ReloadRate":
			return "Reload Rate | Default is 4.376";
    case "M99ReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "MP7MMag":
			return "Mag Size | Default is 20";
    case "MP7MDmgMax":
			return "Max Damage | Default is 25";
    case "MP7MCost":
			return "Cost | Default is 825";
    case "MP7MWeight":
			return "Weight | Default is 3";
    case "MP7MFireRate":
			return "Fire Rate | Default is 0.063";
    case "MP7MFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "MP7MReloadRate":
			return "Reload Rate | Default is 3.166";
    case "MP7MReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "MP5MMag":
			return "Mag Size | Default is 32";
    case "MP5MDmgMax":
			return "Max Damage | Default is 30";
    case "MP5MCost":
			return "Cost | Default is 1375";
    case "MP5MWeight":
			return "Weight | Default is 3";
    case "MP5MFireRate":
			return "Fire Rate | Default is 0.075";
    case "MP5MFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "MP5MReloadRate":
			return "Reload Rate | Default is 3.8";
    case "MP5MReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "M7A3MMag":
			return "Mag Size | Default is 15";
    case "M7A3MDmgMax":
			return "Max Damage | Default is 70";
    case "M7A3MCost":
			return "Cost | Default is 2050";
    case "M7A3MWeight":
			return "Weight | Default is 6";
    case "M7A3MFireRate":
			return "Fire Rate | Default is 0.166000";
    case "M7A3MFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "M7A3MReloadRate":
			return "Reload Rate | Default is 3.066000";
    case "M7A3MReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "KrissMMag":
			return "Mag Size | Default is 25";
    case "KrissMDmgMax":
			return "Max Damage | Default is 40";
    case "KrissMCost":
			return "Cost | Default is 2750";
    case "KrissMWeight":
			return "Weight | Default is 3";
    case "KrissMFireRate":
			return "Fire Rate | Default is 0.063";
    case "KrissMFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "KrissMReloadRate":
			return "Reload Rate | Default is 3.33";
    case "KrissMReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "FlareRevolverMag":
			return "Mag Size | Default is 6";
    case "FlareRevolverDmgMax":
			return "Max Damage | Default is 125";
    case "FlareRevolverCost":
			return "Cost | Default is 500";
    case "FlareRevolverWeight":
			return "Weight | Default is 2";
    case "FlareRevolverHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.5";
    case "FlareRevolverFireRate":
			return "Fire Rate | Default is 0.4";
    case "FlareRevolverFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "FlareRevolverReloadRate":
			return "Reload Rate | Default is 3.2";
    case "FlareRevolverReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "DualFlareRevolverMag":
			return "Mag Size | Default is 12";
    case "DualFlareRevolverCost":
			return "Cost | Default is 1000";
    case "DualFlareRevolverWeight":
			return "Weight | Default is 4";
    case "DualFlareRevolverFireRate":
			return "Fire Rate | Default is 0.20";
    case "DualFlareRevolverFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "DualFlareRevolverReloadRate":
			return "Reload Rate | Default is 4.85";
    case "DualFlareRevolverReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "MAC10MPMag":
			return "Mag Size | Default is 30";
    case "MAC10MPDmgMax":
			return "Max Damage | Default is 35";
    case "MAC10MPCost":
			return "Cost | Default is 500";
    case "MAC10MPWeight":
			return "Weight | Default is 4";
    case "MAC10MPFireRate":
			return "Fire Rate | Default is 0.052";
    case "MAC10MPFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "MAC10MPReloadRate":
			return "Reload Rate | Default is 3.0";
    case "MAC10MPReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "TrenchgunMag":
			return "Mag Size | Default is 6";
    case "TrenchgunDmgMax":
			return "Max Damage | Default is 18";
    case "TrenchgunCost":
			return "Cost | Default is 1250";
    case "TrenchgunWeight":
			return "Weight | Default is 8";
    case "TrenchgunHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.5";
    case "TrenchgunFireRate":
			return "Fire Rate | Default is 0.965";
    case "TrenchgunFireAnimRate":
			return "Anime Fire Rate | Default is 0.95";
    case "TrenchgunReloadRate":
			return "Reload Rate | Default is 0.7";
    case "TrenchgunReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    case "HuskGunMag":
			return "Mag Size | Default is 1";
    case "HuskGunDmgMax":
			return "Max Damage | Default is 100";
    case "HuskGunCost":
			return "Cost | Default is 4000";
    case "HuskGunWeight":
			return "Weight | Default is 8";
    case "HuskGunHeadShotMulti":
			return "HeadShot Multiplier | Default is 1.5";
    case "HuskGunFireRate":
			return "Fire Rate | Default is 0.75";
    case "HuskGunFireAnimRate":
			return "Anime Fire Rate | Default is 1.0";
    case "HuskGunReloadRate":
			return "Reload Rate | Default is 0.010000";
    case "HuskGunReloadAnimeRate":
			return "Reload Anime Rate | Default is 1.0";
    default:
			return Super.GetDescriptionText(SettingName);
	}
}

simulated function TimeStampLog(coerce string s)
{
    log("["$Level.TimeSeconds$"s]" @ s, 'WeaponStatsConfig');
}

simulated function MutLog(string s)
{
    log(s, 'WeaponStatsConfig');
}

defaultproperties
{
    // Mandatory Vars
    bAlwaysRelevant=true
    RemoteRole=ROLE_SimulatedProxy
    bAddToServerPackages=true
    bNetNotify=true

    // Mut Vars
    GroupName="KF-WeaponStatConfig"
    FriendlyName="Weapon Stat Config - v3.0b"
    Description="Change various weapon stats, currently supports Standard KF weapons for {SharpShooter | Field Medic | Fire Bug} (More Perks Coming Soon); - By Vel-San"

    // Weapon Stats
    // SS
    bEnableSharp=True
    bEnableMedic=True
    bEnableFireBug=True
    Single9mmMag=15
    Single9mmDmgMax=35
    Single9mmReloadRate=2.0
    Single9mmReloadAnimeRate=1.0
    Single9mmFireRate=0.175
    Single9mmFireAnimRate=1.5
    DualiesMag=30
    DualiesDmgMax=35
    DualiesCost=150
    DualiesWeight=4
    DualiesHeadShotMulti=1.1
    DualiesReloadRate=3.5
    DualiesReloadAnimeRate=1.0
    DualiesFireRate=0.10000
    DualiesFireAnimRate=1.0
    MK23Mag=12
    MK23DmgMax=82
    MK23Cost=500
    MK23Weight=2
    MK23HeadShotMulti=1.1
    MK23ReloadRate=2.6
    MK23ReloadAnimeRate=1.0
    MK23FireRate=0.18
    MK23FireAnimRate=1.0
    DualMK23Mag=24
    DualMK23DmgMax=82
    DualMK23Cost=1000
    DualMK23Weight=4
    DualMK23HeadShotMulti=1.1
    DualMK23ReloadRate=4.4667
    DualMK23ReloadAnimeRate=1.0
    DualMK23FireRate=0.120
    DualMK23FireAnimRate=1.0
    Single44MagnumMag=6
    Single44MagnumDmgMax=105
    Single44MagnumCost=450
    Single44MagnumWeight=2
    Single44MagnumHeadShotMulti=1.1
    Single44MagnumReloadRate=2.525
    Single44MagnumReloadAnimeRate=1.0
    Single44MagnumFireRate=0.15
    Single44MagnumFireAnimRate=1.0
    Dual44MagnumMag=12
    Dual44MagnumDmgMax=105
    Dual44MagnumCost=900
    Dual44MagnumWeight=4
    Dual44MagnumHeadShotMulti=1.1
    Dual44MagnumReloadRate=4.4667
    Dual44MagnumReloadAnimeRate=1.0
    Dual44MagnumFireRate=0.075
    Dual44MagnumFireAnimRate=1.0
    SingleDeagleMag=8
    SingleDeagleDmgMax=115
    SingleDeagleCost=500
    SingleDeagleWeight=2
    SingleDeagleHeadShotMulti=1.1
    SingleDeagleReloadRate=2.2
    SingleDeagleReloadAnimeRate=1.0
    SingleDeagleFireRate=0.25
    SingleDeagleFireAnimRate=1.5
    DualDeagleMag=16
    DualDeagleDmgMax=115
    DualDeagleCost=1000
    DualDeagleWeight=4
    DualDeagleHeadShotMulti=1.1
    DualDeagleReloadRate=3.5
    DualDeagleReloadAnimeRate=1.0
    DualDeagleFireRate=0.13
    DualDeagleFireAnimRate=1.5
    WinchesterMag=10
    WinchesterDmgMax=140
    WinchesterCost=200
    WinchesterWeight=6
    WinchesterHeadShotMulti=2.0
    WinchesterReloadRate=0.66666666667
    WinchesterReloadAnimeRate=1.0
    WinchesterFireRate=0.9
    WinchesterFireAnimRate=1.0
    CrossbowMag=1
    CrossbowDmgMax=300
    CrossbowCost=800
    CrossbowWeight=9
    CrossbowHeadShotMulti=4.0
    CrossbowReloadRate=0.01
    CrossbowReloadAnimeRate=1.0
    CrossbowFireRate=1.8
    CrossbowFireAnimRate=1.0
    SPSniperRifleMag=10
    SPSniperRifleDmgMax=180
    SPSniperRifleCost=1500
    SPSniperRifleWeight=6
    SPSniperRifleHeadShotMulti=2.0
    SPSniperRifleReloadRate=2.866
    SPSniperRifleReloadAnimeRate=1.0
    SPSniperRifleFireRate=0.94
    SPSniperRifleFireAnimRate=1.0
    M14EBRMag=20
    M14EBRDmgMax=80
    M14EBRCost=2500
    M14EBRWeight=8
    M14EBRHeadShotMulti=2.25
    M14EBRReloadRate=3.366
    M14EBRReloadAnimeRate=1.0
    M14EBRFireRate=0.25
    M14EBRFireAnimRate=1.0
    M99Mag=1
    M99DmgMax=675
    M99Cost=3500
    M99Weight=13
    M99HeadShotMulti=2.25
    M99ReloadRate=4.376
    M99ReloadAnimeRate=1.0
    M99FireRate=0.175
    M99FireAnimRate=1.0

    // Field Medic
    MP7MMag=20
    MP7MDmgMax=25
    MP7MCost=825
    MP7MWeight=3
    MP7MReloadRate=3.166
    MP7MReloadAnimeRate=1.0
    MP7MFireRate=0.063
    MP7MFireAnimRate=1.0
    MP5MMag=32
    MP5MDmgMax=30
    MP5MCost=1375
    MP5MWeight=3
    MP5MReloadRate=3.8
    MP5MReloadAnimeRate=1.0
    MP5MFireRate=0.075
    MP5MFireAnimRate=1.0
    M7A3MMag=15
    M7A3MDmgMax=70
    M7A3MCost=2050
    M7A3MWeight=6
    M7A3MReloadRate=3.066000
    M7A3MReloadAnimeRate=1.0
    M7A3MFireRate=0.166000
    M7A3MFireAnimRate=1.0
    KrissMMag=25
    KrissMDmgMax=40
    KrissMCost=2750
    KrissMWeight=3
    KrissMReloadRate=3.33
    KrissMReloadAnimeRate=1.0
    KrissMFireRate=0.063
    KrissMFireAnimRate=1.0

    // Fire Bug
    FlareRevolverMag=6
    FlareRevolverDmgMax=125
    FlareRevolverCost=500
    FlareRevolverWeight=2
    FlareRevolverHeadShotMulti=1.5
    FlareRevolverReloadRate=3.2
    FlareRevolverReloadAnimeRate=1.0
    FlareRevolverFireRate=0.4
    FlareRevolverFireAnimRate=1.0
    DualFlareRevolverMag=12
    DualFlareRevolverCost=1000
    DualFlareRevolverWeight=4
    DualFlareRevolverReloadRate=4.85
    DualFlareRevolverReloadAnimeRate=1.0
    DualFlareRevolverFireRate=0.20
    DualFlareRevolverFireAnimRate=1.0
    MAC10MPMag=30
    MAC10MPDmgMax=35
    MAC10MPCost=500
    MAC10MPWeight=4
    MAC10MPReloadRate=3.0
    MAC10MPReloadAnimeRate=1.0
    MAC10MPFireRate=0.052
    MAC10MPFireAnimRate=1.0
    TrenchgunMag=6
    TrenchgunDmgMax=18
    TrenchgunCost=1250
    TrenchgunWeight=8
    TrenchgunHeadShotMulti=1.5
    TrenchgunReloadRate=0.7
    TrenchgunReloadAnimeRate=1.0
    TrenchgunFireRate=0.965
    TrenchgunFireAnimRate=0.95
    HuskGunMag=1
    HuskGunDmgMax=100
    HuskGunCost=4000
    HuskGunWeight=8
    HuskGunHeadShotMulti=1.5
    HuskGunReloadRate=0.010000
    HuskGunReloadAnimeRate=1.0
    HuskGunFireRate=0.75
    HuskGunFireAnimRate=1.0
}