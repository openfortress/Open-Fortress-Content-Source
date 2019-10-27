$modelname "weapons/v_models/v_pistol_engineer.mdl"

$renamebone "Gun" "weapon_bone"

$model "pistol" "v_pistol.smd"

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 5.19 3.46 rotate 0 44.89 -180

$include "../Arms/c_engineer_arms_bonemerge.qci"

$sequence "draw" {
	"draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 1 "Weapon_Pistol.Draw2" }
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"idle.smd"
	activity "ACT_VM_IDLE" 1
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 0 "Weapon_Pistol.ClipOut" }
	{ event 5004 12 "Weapon_Pistol.ClipIn" }
	fps 30
	snap
}