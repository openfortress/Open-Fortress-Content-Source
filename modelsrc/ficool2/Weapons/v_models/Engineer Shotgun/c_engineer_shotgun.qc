$modelname "weapons\v_models\v_shotgun_engineer.mdl"

$model "shotgun" "c_shotgun.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "fj_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Shotgun.Draw" }
}

$sequence "fj_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fj_fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 5004 7 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "2" }
}

$sequence "fj_reload_start" "reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	snap
}

$sequence "fj_reload_loop" "reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 10 "Weapon_Shotgun.Reload" }
}

$sequence "fj_reload_end" "reload_end.smd" {
	fps 35
	activity "ACT_RELOAD_FINISH" 1
	snap
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 17 "Weapon_ShotgunEngineer.Cock_Forward" }
}

$sequence "fj_fire_alt" "fire_alt.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK_SPECIAL" 1
	snap
	node "raised"
}