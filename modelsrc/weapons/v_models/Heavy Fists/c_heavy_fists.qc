$modelname "weapons\v_models\v_fist_heavy.mdl"

// stop crashing
$model "v_fists" "dummy.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_heavy_arms_bonemerge.qci"

$sequence "f_swing_left" "f_swing_left.smd" {
	fps 25
	activity "ACT_VM_HITLEFT" 1
	node "raised"
}

$sequence "f_swing_right" "f_swing_right.smd" {
	fps 25
	activity "ACT_VM_HITRIGHT" 1
	node "raised"
}

$sequence "f_swing_crit" "f_swing_crit.smd" {
	fps 25
	activity "ACT_VM_SWINGHARD" 1
	node "raised"
}

$sequence "f_idle" "f_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	node "raised"
}

$sequence "f_draw" "f_draw.smd" {
	fps 30
	snap
	activity "ACT_VM_DRAW" 1
	node "raised"
	{ event 5004 1 "Weapon_Fist.Draw" }
	{ event 5004 5 "Weapon_Fist.HitHand" }
}