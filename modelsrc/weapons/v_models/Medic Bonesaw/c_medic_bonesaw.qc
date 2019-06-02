$modelname "weapons\v_models\v_bonesaw_medic.mdl"

$model "bonesaw" "c_bonesaw.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_medic_arms_bonemerge.qci"

$sequence "bs_draw" "draw.smd" {
	fps 30
	snap
	activity "ACT_VM_DRAW" 1
	node "raised"
	{ event 5004 1 "Weapon_Machete.Draw" }
}

$sequence "bs_idle" "idle.smd" {
	fps 15
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "bs_swing_a" "swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 2
}

$sequence "bs_swing_b" "swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
}

$sequence "bs_swing_c" "swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
}