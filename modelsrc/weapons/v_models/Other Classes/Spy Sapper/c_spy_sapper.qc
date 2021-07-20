$modelname "weapons\v_models\v_sapper_spy.mdl"

$model "sapper" "c_sapper.smd"

$cdmaterials ""
$cdmaterials "\models\weapons\v_sapper\"

$include "../shared.qci"

$include "../Arms/c_spy_arms_bonemerge.qci"

$weightlist "weights_layer_sapper_needle" {
	 "root" 0
	 "weapon_bone_5" 1
}

$animation "a_sapper_needle_base" "a_sapper_needle_left.smd" {
	fps 30
}

$Animation "a_sapper_needle_left" "a_sapper_needle_left.smd" {
	fps 30
	subtract "a_sapper_needle_base" 0
	weightlist "weights_layer_sapper_needle"
}

$Animation "a_sapper_needle_right" "a_sapper_needle_right.smd" {
	fps 30
	subtract "a_sapper_needle_base" 0
	weightlist "weights_layer_sapper_needle"
}

$sequence "c_sapper_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	{ event 5004 1 "Weapon_Sapper.Draw" }
	{ event 5004 8 "Weapon_Sapper.DrawSwitch" }
}

$sequence "c_sapper_drawDeployed" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW_DEPLOYED" 1
	snap
	{ event 5004 1 "Weapon_Sapper.Draw" }
	{ event 5004 8 "Weapon_Sapper.DrawSwitch" }
}

$sequence "layer_sapper_needle" {
	"a_sapper_needle_left"
	"a_sapper_needle_right"
	fps 30
	delta
	blendwidth 2
	blend "valid_build_pos" 0 1
}

$sequence "c_sapper_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	addlayer "layer_sapper_needle"
}