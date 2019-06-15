$modelname "weapons\v_models\v_assault_rifle_dm.mdl"

$origin 0 -8 0

$renamebone "v_weapon.M4A1_Parent" "weapon_bone"

$model "ar" "v_rifle_m16.smd"

$cdmaterials ""
$cdmaterials "models\weapons\v_assault_rifle\"

$include "../shared.qci"

$attachment "muzzle" "v_weapon.flash" 0 0 0 rotate 0 0 0
$attachment "eject_brass" "v_weapon.shelleject" 0 0 0 rotate 0 0 0

$include "../Arms/c_merc_arms_bonemerge.qci"

$sequence "draw" "draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_smg.Draw" }
    { event 5004 12 "Weapon_AR.BoltBack" }
    { event 5004 17 "Weapon_AR.BoltForward" }
}

$sequence "idle" "idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "fire" "shoot.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"
	{ event 6002 0 "3" }
}

$sequence "reload" "reload.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 10 "Weapon_AR.ClipOut" }
	{ event 5004 57 "Weapon_AR.ClipIn" }
	{ event 5004 68 "Weapon_AR.BoltForward" }
}