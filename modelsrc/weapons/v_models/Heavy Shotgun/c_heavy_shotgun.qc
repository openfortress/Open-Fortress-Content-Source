$modelname "weapons\v_models\v_shotgun_heavy.mdl"

$model "shotgun" "c_shotgun.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$include "../Arms/c_heavy_arms_bonemerge.qci"

$sequence "draw" "anims.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Shotgun.Draw" }
	Frames 0 30
}

$sequence "idle" "anims.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
	Frames 57 117
}

$sequence "fire" "anims.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 5004 9 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 13 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 13 "3" }
	Frames 31 56
}

$sequence "reload_start" "anims.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	snap
	Frames 118 128
}

$sequence "reload_loop" "anims.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 2 "Weapon_Shotgun.Reload" }
	Frames 129 144
}

$sequence "reload_end" "anims.smd" {
	fps 35
	activity "ACT_RELOAD_FINISH" 1
	{ event 5004 10 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 15 "Weapon_ShotgunEngineer.Cock_Forward" }
	snap
	Frames 145 171
}