// Created by Crowbar 0.56

$modelname "weapons/v_models/v_shield.mdl"

$bodygroup "studio"
{
	studio "v_shield_ref.smd"
}


$surfaceprop "default"

$contents "solid"

$cdmaterials "models\weapons\v_shield\"

$cbox 0 0 0 0 0 0

$bbox -13.826 -14.289 -41.262 8.294 14.289 7.887

$include "../shared.qci"
$include "../Arms/c_soldier_arms_bonemerge.qci"

// The 32 below is a guess until further is known about the format.
$animblocksize 32 nostall

$bonesaveframe "cam_driver" position
$bonesaveframe "shield" position
$bonesaveframe "v_weapon.Bip01_L_Clavicle" position
$bonesaveframe "v_weapon.Bip01_R_Clavicle" position

$sectionframes 30 30

$sequence "idle" "anims/idle.smd" {
	fps 30
	activity "ACT_VM_IDLE" 1
	loop
	node "raised"
}

$sequence "draw" "anims/draw.smd" {
	fps 30
	activity "ACT_VM_DRAW" 1
	snap
	node "raised"
	{ event 5004 1 "Weapon_Machete.Draw" }
}

$sequence "m_swing_a" "anims/swing.smd" {
	fps 30
	activity "ACT_VM_HITCENTER" 2
	snap
}

$sequence "m_swing_c" "anims/swing_crit.smd" {
	fps 30
	activity "ACT_VM_SWINGHARD" 1
	snap
}