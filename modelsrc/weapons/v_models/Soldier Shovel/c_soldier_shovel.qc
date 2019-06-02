$modelname "weapons\v_models\v_shovel_soldier.mdl"

$model "shovel" "c_shovel.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_soldier_arms_bonemerge.qci"

$sequence "s_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Shovel.Draw" }
}

$sequence "s_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "s_swing_a" "swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
	node "raised"
}

$sequence "s_swing_b" "swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
	node "raised"
}

$sequence "s_swing_c" "swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
	node "raised"
}