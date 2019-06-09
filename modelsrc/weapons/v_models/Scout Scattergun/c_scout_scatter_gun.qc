$modelname "weapons\v_models\v_scattergun_scout.mdl"

$model "scattergun" "c_scattergun.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.97 23.38 rotate -90 0 0
$attachment "shell_eject" "weapon_bone" -3.05 4.57 8.63 rotate -4.17 147.92 -180

$include "../Arms/c_scout_arms_bonemerge.qci"

$sequence "sg_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Scatter_Gun.Draw" }
}

$sequence "sg_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	node "raised"
}

$sequence "sg_fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.1
}

$sequence "sg_reload_start" "reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	fadein 0.1
	snap
}

$sequence "sg_reload_loop" "reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	fadein 0.1
	snap
	{ event 5004 1 "Weapon_Scatter_Gun.Reload" }
	{ event 6002 5 "3" }
}

$sequence "sg_reload_end" "reload_end.smd" {
	fps 26
	activity "ACT_RELOAD_FINISH" 1
	fadein 0.1
}