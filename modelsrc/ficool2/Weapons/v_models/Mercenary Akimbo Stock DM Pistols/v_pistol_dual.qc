$modelname "weapons/v_models/v_akimbo_pistols_mercenary.mdl"

$renamebone "Gun" "weapon_bone"

$model "dualpistol" "v_pistol_dual.smd"

$cdmaterials "models\weapons\v_pistol"
$cdmaterials ""

$include "../shared.qci"

$attachment "muzzle" "muzzle" 0 0 0 rotate 0 -90 0
//$attachment "eject_brass" "muzzle" 0 0 0 rotate 0 44.89 -180

$include "../Arms/c_merc_arms_bonemerge.qci"

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

$sequence "fire_left" {
	"fire_left.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
//	{ event 6002 0 "3" }
	node "raised"
	snap
	fps 30
}

$sequence "fire_right" {
	"fire_right.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
//	{ event 6002 0 "3" }
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 13 "Weapon_Akimbo_Pistols.ClipOut" }
	{ event 5004 35 "Weapon_Akimbo_Pistols.ClipIn" }
	{ event 5004 52 "Weapon_Akimbo_Pistols.SlideBack" }
	{ event 5004 71 "Weapon_Akimbo_Pistols.SlideForward" }
	fps 35
	snap
}