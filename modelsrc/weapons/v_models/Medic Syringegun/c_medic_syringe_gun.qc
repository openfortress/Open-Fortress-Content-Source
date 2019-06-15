$modelname "weapons\v_models\v_syringegun_medic.mdl"

$model "syringegun" "c_syringegun.smd"

// fixes transperancy to render correctly
$mostlyopaque

$cdmaterials ""

$include "../shared.qci"

$texturegroup "skinfamilies"
{
	{ "models\weapons\v_syringegun\v_syringegun"      "models\weapons\v_syringegun\v_syringegun_glass" }
	{ "models\weapons\v_syringegun\v_syringegun_blue" "models\weapons\v_syringegun\v_syringegun_glass" }
	{ "models\weapons\v_syringegun\v_syringegun_purple" "models\weapons\v_syringegun\v_syringegun_glass" }
}

$attachment "muzzle" "weapon_bone" 0.19 6.06 21.34 rotate -89.49 0 0

$include "../Arms/c_medic_arms_bonemerge.qci"

$sequence "sg_draw" "sg_draw.smd" {
	fps 30
	snap
	activity "ACT_VM_DRAW" 1
	node "raised"
	{ event 5004 1 "Weapon_SyringeGun.Draw" }
}

$sequence "sg_idle" "sg_idle.smd" {
	fps 20
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "sg_fire" "sg_fire.smd" {
	fps 30
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	node "raised"

}

$sequence "sg_reload" "sg_reload.smd" {
	fps 30
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_SyringeGun.Draw" }
	{ event 5004 9 "Weapon_SyringeGun.Reload1" }
	{ event 5004 18 "Weapon_SyringeGun.Reload2" }
	{ event 5004 21 "Weapon_SyringeGun.Reload3" }
}