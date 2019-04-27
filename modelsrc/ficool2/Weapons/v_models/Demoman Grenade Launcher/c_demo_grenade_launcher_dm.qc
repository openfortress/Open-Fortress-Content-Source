$modelname "weapons/v_models/v_grenadelauncher_dm.mdl"

$model "grenadelauncher" "c_grenadelauncher_dm.smd"

$cdmaterials ""

$attachment "muzzle" "weapon_bone_1" 0 8.23 28.87 rotate 0 0 0

$include "../shared.qci"

$include "../Arms/c_demo_arms_bonemerge.qci"

$sequence "g_draw" "g_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_GrenadeLauncher.Draw" }
}

$sequence "g_idle" "g_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	snap
	node "raised"
}

$sequence "g_fire" "g_fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 5004 11 "Weapon_GrenadeLauncher.DrumStart" }
	{ event 5004 16 "Weapon_GrenadeLauncher.DrumStart" }
}

$sequence "g_reload_start" "g_reload_start.smd" {
	fps 30
	activity "ACT_RELOAD_START" 1
	snap
	{ event 5004 5 "Weapon_GrenadeLauncher.DrumOpen" }
}

$sequence "g_reload_loop" "g_reload_loop.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	snap
	{ event 5004 6 "Weapon_GrenadeLauncher.DrumLoad" }
}

$sequence "g_reload_end" "g_reload_end.smd" {
	fps 30
	activity "ACT_RELOAD_FINISH" 1
	snap
	{ event 5004 5 "Weapon_GrenadeLauncher.DrumClose" }
}

$sequence "g_auto_fire" "g_auto_fire.smd" {
	fps 30
	activity "ACT_VM_PULLBACK" 1
	snap
	node "raised"
}
