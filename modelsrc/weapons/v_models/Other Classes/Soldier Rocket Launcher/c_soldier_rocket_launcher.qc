$modelname "weapons\v_models\v_rocketlauncher_soldier.mdl"

$model "rocketlauncher" "c_rocketlauncher.smd"

$cdmaterials ""
$cdmaterials "models\weapons\v_rocketlauncher\"

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 6.69 9.91 rotate -90 0 0

$include "../Arms/c_soldier_arms_bonemerge.qci"

$sequence "dh_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "dh_fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
}

$sequence "dh_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_RPG.Draw" }
}

$sequence "dh_reload_start" "reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
}

$sequence "dh_reload_loop" "fixed_loop\reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	snap
	{ event 5004 2 "Weapon_RPG.Reload" }
	{ event AE_WPN_INCREMENTAMMO 10 " " }
}

$sequence "dh_reload_finish" "reload_finish.smd" {
	fps 30
	activity "ACT_RELOAD_FINISH" 1
	snap
}