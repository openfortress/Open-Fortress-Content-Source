$modelname "weapons\v_models\v_original.mdl"

$model "bet_rocketlauncher" "c_bet_rocketlauncher.smd"

$cdmaterials ""
$cdmaterials "models\weapons\c_items\"

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" -0.05 6.75 29.04 rotate -90 0 0

$include "../Arms/c_merc_arms_bonemerge.qci"

$sequence "bet_idle" "bet_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "bet_fire" "bet_fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
}

$sequence "bet_draw" "bet_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_RPG.Draw" }
}

$sequence "bet_reload_start" "bet_reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
}

$sequence "bet_reload_loop" "bet_reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	snap
	{ event 5004 2 "Weapon_RPG.Reload" }
	{ event AE_WPN_INCREMENTAMMO 10 " " }
}

$sequence "bet_reload_finish" "bet_reload_finish.smd" {
	fps 30
	activity "ACT_RELOAD_FINISH" 1
	snap
}