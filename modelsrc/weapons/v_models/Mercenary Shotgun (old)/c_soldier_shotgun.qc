$modelname "weapons\v_models\v_shotgun_merc.mdl"

$model "shotgun" "c_shotgun_dm.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$include "../Arms/c_merc_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_RPG.Draw" }
	{ event 5004 8 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 13 "Weapon_ShotgunEngineer.Cock_Forward" }
}

$sequence "idle" "idle.smd" {
	fps 20
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 5004 7 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "4" }
}

$sequence "reload_start" "reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	snap
}

$sequence "reload_loop" "reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "Weapon_Shotgun.Reload" }
}

$sequence "reload_end" "reload_end.smd" {
	fps 30
	activity "ACT_RELOAD_FINISH" 1
	snap
	{ event 5004 5 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 11 "Weapon_ShotgunEngineer.Cock_Forward" }
}