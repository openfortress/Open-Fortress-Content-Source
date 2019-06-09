$modelname "weapons/v_models/v_nailgun_mercenary.mdl"

$model "nailgun" "nailgun.smd"

$cdmaterials "models\weapons\w_nailgun"
$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Nailgun.Draw" }
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

$sequence "reload" "reload.smd" {
	fps 28
	activity "ACT_VM_RELOAD" 1
	{ event 5004 8 "Weapon_Nailgun.ClipOut" }
	{ event 5004 26 "Weapon_Nailgun.ClipIn" }
}