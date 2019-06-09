$modelname "weapons/v_models/v_toolbox_engineer.mdl"

$model "tool_box" "toolbox.smd"

$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "models\weapons\v_toolbox\v_toolbox_red" "models\buildables\toolbox\toolbox_red" }
	{ "models\weapons\v_toolbox\v_toolbox_blue" "models\buildables\toolbox\toolbox_blue" }
	{ "models\weapons\v_toolbox\v_toolbox_custom" "models\buildables\toolbox\toolbox_custom" }
}

$include "../shared.qci"

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "box_idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "box_draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
}