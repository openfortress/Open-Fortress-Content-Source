$modelname "weapons\v_models\v_shotgun_heavy.mdl"

$model "shotgun" "c_shotgun.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$include "../Arms/c_heavy_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Shotgun.Draw" }
}

$sequence "idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 5004 9 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 13 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "3" }
}

$sequence "reload_start" "reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	snap
}

$sequence "reload_loop" "reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 2 "Weapon_Shotgun.Reload" }
}

$sequence "reload_end" "reload_end.smd" {
	fps 35
	activity "ACT_RELOAD_FINISH" 1
	{ event 5004 10 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 15 "Weapon_ShotgunEngineer.Cock_Forward" }
	snap
}