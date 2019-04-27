$modelname "weapons\v_models\v_revolver.mdl"

$model "revolver" "c_revolver.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 2.71 14.41 rotate -90 0 0

$include "../Arms/c_spy_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Revolver.Draw" }
}

$sequence "idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
}

$sequence "reload" "reload2.smd" {
	fps 5
	activity "ACT_VM_RELOAD" 1
	snap
	{ event 5004 1 "Weapon_Revolver.Reload1" }
	{ event 5004 12 "Weapon_Revolver.Reload2" }
	{ event 5004 28 "Weapon_Revolver.Reload3" }
}