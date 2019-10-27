$modelname "weapons\v_models\v_classic_tranq.mdl"

$model "tranq" "v_tranq.smd"

$cdmaterials "models\weapons\v_tranq"

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 2.71 14.41 rotate -90 0 0

$include "../Arms/c_spy_arms_bonemerge.qci"

$sequence "draw" "anims.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	frames 0 24
	node "raised"
	{ event 5004 1 "Weapon_Revolver.Draw" }
}

$sequence "idle" "anims.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	frames 25 65
	loop
	node "raised"
}

$sequence "fire" "anims.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	frames 66 140
	{ event 5004 45 "Weapon_Tranq.Reload" }
}