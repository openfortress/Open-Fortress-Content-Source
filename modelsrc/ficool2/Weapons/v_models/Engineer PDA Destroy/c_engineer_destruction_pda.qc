$modelname "weapons\v_models\v_PDA_engineer.mdl"

$model "pda" "c_pda_engineer.smd"

$cdmaterials ""

$include "../shared.qci"

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "pda_idle" "pda_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
}

$sequence "pda_draw" "pda_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	{ event 5004 1 "Weapon_PDA.DrawEngineer" }
	{ event 5004 13 "Weapon_PDA.AntennaeEngineer" }
}