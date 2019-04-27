$modelname "weapons\v_models\v_knife_spy.mdl"

$model "knife" "c_knife.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_spy_arms_bonemerge.qci"

$sequence "knife_draw" "knife_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Knife.Draw" }
	{ event 5004 10 "Weapon_Knife.Open1" }
	{ event 5004 16 "Weapon_Knife.Open5" }
	{ event 5004 22 "Weapon_Knife.Open8" }
}

$sequence "knife_idle" "knife_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "knife_stab_a" "knife_stab_a.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 2
	snap
}

$sequence "knife_stab_b" "knife_stab_b.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "knife_stab_c" "knife_stab_c.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
}

$sequence "knife_backstab" "knife_backstab.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
	node "raised"
}

$sequence "knife_backstab_up" "knife_backstab_up.smd" {
	fps 30
	activity "ACT_BACKSTAB_VM_UP" 1
	snap
}

$sequence "knife_backstab_down" "knife_backstab_down.smd" {
	fps 30
	activity "ACT_BACKSTAB_VM_DOWN" 1
	snap
}

$sequence "knife_backstab_idle" "knife_backstab_idle.smd" {
	fps 30
	activity "ACT_BACKSTAB_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "knife_stun" "knife_stun.smd" {
	fps 30
	activity "ACT_VM_STUN" 1
	snap
	node "raised"
}