$modelname "weapons/v_models/v_stickybomb_launcher_demo.mdl"

$model "stickybomb_launcher" "c_stickybomb_launcher.smd"

$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 1.91 24.79 rotate 0 0 0

$include "../shared.qci"

$include "../Arms/c_demo_arms_bonemerge.qci"

$Sequence "sb_idle" "sb_idle.smd" {
	"ACT_VM_IDLE" 1
	node "raised"
	fps 30
	loop
}

$Sequence "sb_fire" "sb_fire.smd" {
	"ACT_VM_PRIMARYATTACK" 1
	node "raised"
	snap
	fps 30
}

$Sequence "sb_draw" "sb_draw.smd" {
	"ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_GrenadeLauncher.Draw" }
	node "raised"
	snap
	fps 30
}

$Sequence "sb_autofire" "sb_autofire.smd" {
	"ACT_VM_PULLBACK" 1
	node "raised"
	snap
	fps 30
}

$Sequence "sb_reload_start" "sb_reload_start.smd" {
	"ACT_RELOAD_START" 1
	fps 30
}

$Sequence "sb_reload_loop" "sb_reload_loop.smd" {
	"ACT_VM_RELOAD" 1
	{ event 5004 2 "Weapon_StickyBombLauncher.BoltBack" }
	{ event 5004 12 "Weapon_StickyBombLauncher.BoltForward" }
	fps 30
}

$Sequence "sb_reload_end" "sb_reload_end.smd" {
	"ACT_RELOAD_FINISH" 1
	fps 30
	snap
}