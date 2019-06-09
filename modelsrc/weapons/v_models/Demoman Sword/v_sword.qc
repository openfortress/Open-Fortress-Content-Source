$modelname "weapons/v_models/v_sword_demo.mdl"

$model "sword" "v_sword.smd"

$cdmaterials "models/weapons/v_sword"
$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_demo_arms_bonemerge.qci"

$sequence "cm_draw" "cm_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Machete.Draw" }
}

$sequence "cm_idle" "cm_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "cm_swing_a" "cm_swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "cm_swing_b" "cm_swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "cm_swing_c" "cm_swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
}