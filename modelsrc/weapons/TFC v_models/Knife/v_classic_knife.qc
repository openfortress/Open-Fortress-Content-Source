$modelname "weapons/v_models/v_classic_knife.mdl"

$origin 0 3 0

$model "stabstabstab" "v_classic_knife.smd"

$cdmaterials "models\weapons\c_models\c_classic_knife\"

$include "../shared.qci"

$include "../Arms/c_spy_arms_bonemerge.qci"

$sequence "knife_draw" "anims.smd" {
	fps 35
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	Frames 0 30
	{ event 5004 1 "Weapon_Classic_Knife.Draw" }
}

$sequence "knife_idle" "anims.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
	Frames 30 90
}

$sequence "knife_idle2" "anims.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
	Frames 90 150
}

$sequence "knife_stab_a" "anims.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
	Frames 150 175
}

$sequence "knife_stab_b" "anims.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
	Frames 175 200
}

$sequence "knife_stab_c" "anims.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 1
	snap
	Frames 200 225
}

$sequence "knife_backstab" "anims.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
	node "raised"
	Frames 270 295
}

$sequence "knife_backstab_up" "anims.smd" {
	fps 30
	activity "ACT_BACKSTAB_VM_UP" 1
	snap
	Frames 225 240
}

$sequence "knife_backstab_down" "anims.smd" {
	fps 30
	activity "ACT_BACKSTAB_VM_DOWN" 1
	snap
	Frames 300 315
}

$sequence "knife_backstab_idle" "anims.smd" {
	fps 30
	activity "ACT_BACKSTAB_VM_IDLE" 1
	loop
	node "raised"
	Frames 240 270
}