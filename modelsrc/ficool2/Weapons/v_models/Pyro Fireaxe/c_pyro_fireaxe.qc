$modelname "weapons\v_models\v_fireaxe_pyro.mdl"

$model "fireaxe" "c_fireaxe.smd"

$cdmaterials "\models\weapons\v_fireaxe\"
$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_pyro_arms_bonemerge.qci"

$sequence "fa_idle" "fa_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fa_draw" "fa_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_FireAxe.Draw" }
}

$sequence "fa_swing_a" "fa_swing_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 2
	snap
}

$sequence "fa_swing_b" "fa_swing_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "fa_swing_c" "fa_swing_c.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
}