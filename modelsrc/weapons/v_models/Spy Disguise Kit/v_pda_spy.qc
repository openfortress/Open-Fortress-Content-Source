$modelname "weapons\v_models\v_pda_spy.mdl"

$model "pda" "v_pda_spy.smd"

$cdmaterials "\models\weapons\w_cigarette_case\"
$cdmaterials ""

$include "../shared.qci"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "controlpanel0_ll" "bottom_left" 0 0 0 rotate 0 0 0
$attachment "controlpanel0_ur" "top_right" 0 0 0 rotate 0 0 0

$include "../Arms/c_spy_arms_bonemerge.qci"

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_PDA.DrawSpy" }
	snap
	fps 30
}

$sequence "idle" {
	"idle.smd"
	activity "ACT_VM_IDLE" 1
	fps 30
	loop
}
