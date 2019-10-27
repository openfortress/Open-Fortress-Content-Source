$modelname "weapons\v_models\v_shotgun_soldier.mdl"

$model "shotgun" "c_shotgun.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$include "../Arms/c_soldier_arms_bonemerge.qci"

$sequence "draw" "anims.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_RPG.Draw" }
	Frames 0 25
}

// i did a fucky wucky with the importing in Blender so the idle is in its own smd
$sequence "idle" "idle.smd" {
	fps 20
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fire" "anims.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 5004 7 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "3" }
	Frames 26 51
}

$sequence "reload_start" "anims.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	snap
	Frames 78 92
}

$sequence "reload_loop" "anims.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 6 "Weapon_Shotgun.Reload" }
	Frames 93 108
}

$sequence "reload_end" "anims.smd" {
	fps 30
	activity "ACT_RELOAD_FINISH" 1
	snap
	{ event 5004 6 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 12 "Weapon_ShotgunEngineer.Cock_Forward" }
	Frames 109 130
}