$modelname "weapons/v_models/v_dynamite_bundle.mdl"

$model "v_dynamite" "v_dynamite.smd"

$cdmaterials "models\weapons\w_dynamite"
$cdmaterials "models\props_facemovie\lighter"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 1.91 24.79 rotate 0 0 0

$include "../shared.qci"

$include "../Arms/c_demo_arms_bonemerge.qci"

$Sequence "idle" "idle.smd" {
	"ACT_VM_IDLE" 1
	node "raised"
	fps 30
	loop
}

$Sequence "fire" "fire.smd" {
	"ACT_VM_PRIMARYATTACK" 1
	node "raised"
	snap
	fps 30
}

$Sequence "draw" "draw.smd" {
	"ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_GrenadeLauncher.Draw" }
	node "raised"
	snap
	fps 30
}

$Sequence "autofire" "autofire.smd" {
	"ACT_VM_PULLBACK" 1
	node "raised"
	snap
	fps 30
}