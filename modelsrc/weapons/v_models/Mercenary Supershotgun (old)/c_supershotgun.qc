$modelname "weapons/v_models/v_supershotgun_mercenary.mdl"

$origin 0 0 -1.5

$model "supershotgun" "c_double_barrel.smd"
//$model "arms" "c_soldier_arms.smd"

$cdmaterials "models\weapons\c_items\"
$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 5 31 rotate -90 0 0

$include "../Arms/c_scout_arms_bonemerge.qci"

$sequence "db_draw" "anims.smd" {
	fps 30
	Frames 0 30
	activity "ACT_VM_DRAW" 1
	snaps
	node "raised"
	{ event 5004 1 "Weapon_Scatter_Gun.Draw" }
}

$sequence "db_idle" "anims.smd" {
	fps 30
	Frames 30 90
	activity "ACT_VM_IDLE" 1
	node "raised"
}

$sequence "db_fire" "anims.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	Frames 90 120
}

$sequence "db_reload" "anims.smd" {
	fps 40
	activity "ACT_VM_RELOAD" 1
	node "raised"
	Frames 130 190
	fadein 0.1
	{ event 5004 8 "Weapon_SuperShotGun.TubeOpen" }
	{ event 5004 30 "Weapon_SuperShotGun.ShellsIn" }
	{ event 5004 50 "Weapon_SuperShotGun.TubeClose" }
}