$modelname "weapons\v_models\v_smg_sniper.mdl"

$model "smg" "c_smg.smd"

$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "weapon_bone" 0 3.25 26.09 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" -0.73 3.21 4.59 rotate 0 154 180

$include "../Arms/c_sniper_arms_bonemerge.qci"

$sequence "smg_draw" "smg_draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_smg.Draw" }
}

$sequence "smg_idle" "smg_idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "smg_fire" "smg_fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 6002 0 "3" }
}

$sequence "smg_reload" "smg_reload.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_smg.ClipOut" }
	{ event 5004 23 "Weapon_smg.ClipIn" }
}