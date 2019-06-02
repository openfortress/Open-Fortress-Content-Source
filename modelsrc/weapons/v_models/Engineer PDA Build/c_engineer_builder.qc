$modelname "weapons\v_models\v_builder_engineer.mdl"

$model "builder" "c_builder.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "bld_idle" "bld_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "bld_draw" "bld_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	{ event 5004 1 "Weapon_PDA.DrawEngineer" }
	{ event 5004 11 "Weapon_Builder.SwitchEngineer" }
}