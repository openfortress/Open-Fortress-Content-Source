$modelname "weapons/v_models/v_bottle_demoman.mdl"

$body "bodygroupfix" "dummy.smd"

$bodygroup "bottle"
{
	studio "c_bottle.smd"
	studio "c_bottle_broken.smd"
}

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_demo_arms_bonemerge.qci"

$sequence "b_draw" "b_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Bottle.Draw" }
}

$sequence "b_idle" "b_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "b_swing_a" "b_swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "b_swing_b" "b_swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "b_swing_c" "b_swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
}