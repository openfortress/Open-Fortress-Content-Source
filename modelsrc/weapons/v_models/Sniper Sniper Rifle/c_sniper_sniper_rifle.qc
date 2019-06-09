$modelname "weapons\v_models\v_sniperrifle_sniper.mdl"

$model "sniperrifle" "c_sniperrifle.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 2.92 48.04 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0 2.92 9.02 rotate 0 158.54 0

$include "../Arms/c_sniper_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_SniperRifle.Draw" }
}

$sequence "fire" "fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	{ event 5004 23 "Weapon_SniperRifle.BoltBack" }
	{ event 5004 29 "Weapon_SniperRifle.BoltForward" }
	{ event 6002 28 "3" }
}

$sequence "idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
}