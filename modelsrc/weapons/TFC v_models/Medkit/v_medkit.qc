$modelname "weapons\v_models\v_classic_medkit.mdl"

$model "i_need_a_medic_bag" "v_medkit.smd"

$cdmaterials "models\weapons\c_models\c_classic_medkit\"
$cdmaterials "models\props_facemovie\ecg\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "c_classic_medkit_red" }
	{ "c_classic_medkit_blue" }
	{ "c_classic_medkit_custom" }
}

$include "../shared.qci"

$include "../Arms/c_medic_arms_bonemerge.qci"

$sequence "draw" "anims.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	frames 0 25
	{ event 5004 1 "Weapon_Medkit.Draw" }
}

$sequence "idle" "anims.smd" {
	fps 20
	activity "ACT_VM_IDLE" 1
	loop
	frames 25 60
	node "raised"
}

$sequence "swing" "anims.smd" {
	fps 20
	activity "ACT_VM_HITCENTER" 1
	frames 25 60
	node "raised"
}

$sequence "hit" "anims.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
	fadeout 0.1
	frames 60 95
	node "raised"
}