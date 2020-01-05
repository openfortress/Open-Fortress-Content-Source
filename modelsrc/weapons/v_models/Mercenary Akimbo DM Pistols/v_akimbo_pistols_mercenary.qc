// Created by Crowbar 0.56

$modelname "weapons/v_models/v_akimbo_pistols_mercenary.mdl"

$bodygroup "dualpistol"
{
	studio "v_akimbo_pistols_mercenary_c_walther_dual.smd"
}
$bodygroup "illumpos"
{
	studio "v_akimbo_pistols_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "muzzle" 0 0 0 rotate 0 -90 0
$attachment "eject_brass" "muzzle" 0 6.5 0 rotate -35 -180 -180

$cbox 0 0 0 0 0 0

$bbox -12.34 -33.704 -30.741 33.858 24.065 6.759

$surfaceprop "default"
$jointsurfaceprop "weapon_bone"	 "default"
$jointsurfaceprop "Gun.001"	 "default"
$jointsurfaceprop "muzzle"	 "default"
$jointsurfaceprop "illumpos"	 "default"

$hboxset "default"

$hbox 0 "weapon_bone"	    -2.00   -3.00   -3.00     2.00    7.00    7.00
$hbox 0 "Gun.001"	    -2.00   -3.00   -3.00     2.00    7.00    7.00

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"


$sequence "draw" {
	"v_akimbo_pistols_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 1 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_akimbo_pistols_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire_left" {
	"v_akimbo_pistols_mercenary_anims\fire_left.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.01
	fadeout 0.01
	node "raised"
	snap
	fps 30
}

$sequence "fire_right" {
	"v_akimbo_pistols_mercenary_anims\fire_right.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.01
	fadeout 0.01
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_akimbo_pistols_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_Akimbo_Pistols.ClipOut" }
	{ event 5004 64 "Weapon_Akimbo_Pistols.ClipIn" }
	{ event 5004 17 "Weapon_Akimbo_Pistols.ClipOut" }
	{ event 5004 90 "Weapon_Akimbo_Pistols.ClipIn" }
	{ event 5004 103 "Weapon_Akimbo_Pistols.SlideForward" }
	{ event 5004 107 "Weapon_Akimbo_Pistols.SlideForward" }
	fadein 0.1
	fadeout 0.2
	fps 35
}
