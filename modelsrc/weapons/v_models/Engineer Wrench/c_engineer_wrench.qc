$modelname "weapons\v_models\v_wrench_engineer.mdl"

$model "wrench" "c_wrench.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "pdq_idle_tap" "idle_tap.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	{ event 5004 21 "Weapon_Wrench.HitHand" }
}

$sequence "pdq_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 3 "Weapon_Wrench.Draw" }
	{ event 5004 3 "Weapon_Wrench.Draw2" }
	{ event 5004 20 "Weapon_Wrench.HitHand" }
}

$sequence "pdq_swing_a" "swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "pdq_swing_b" "swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "pdq_swing_c" "swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
}