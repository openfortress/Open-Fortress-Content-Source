// Created by Crowbar 0.56

$modelname "weapons/v_models/v_revolver_dm.mdl"

$bodygroup "revolver"
{
	studio "revolver.smd"
}
$bodygroup "illumpos"
{
	blank
	studio "illumpos.smd"
}
$bodygroup "bullets"
{
	studio "bullets.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_revolver\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 2.71 14.41 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -23.802 -16 -15.228 43.196 9.382 23.327

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "bip_upperArm_L" "" 10.928331 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$definebone "bip_upperArm_R" "" -10.9283 0.000046 0 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.058311 -3.26346 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.18795 14.058389 3.263466 -0.802339 -4.237948 -10.928149 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000001 -12.375357 0.000001 0.000003 -0.000003 -0.710515 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000012 12.375385 0.00001 0.000001 0 -0.710522 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000007 -1.058863 -0.000003 0 -0.000003 0.000007 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000057 1.058847 -0.000004 -0.000003 0.000007 0.00001 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809816 -0.499918 2.57514 -6.260521 -25.558544 -31.003735 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809737 0.499895 -2.575146 -6.260508 -25.558541 -31.003708 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -3.099545 -0.000008 0.000007 -0.000009 11.826824 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099562 0.000017 0.000015 -0.000015 11.826841 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000008 -1.649406 0.000006 0.000007 -0.000016 -8.16921 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000004 1.64941 0.000002 0.000007 -0.000014 -8.169195 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168278 1.640409 61.198851 -118.799216 -115.979413 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008162 1.168312 -1.640393 61.198851 -118.799189 -115.979413 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000004 -3.307287 -0.000003 -15.200354 22.794742 12.109837 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000011 3.307259 0.000012 -15.200337 22.79472 12.109823 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892878 0 0 0.000012 39.534532 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000032 2.892822 0.000025 -0.000002 -0.000018 39.534546 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000002 -1.789221 0.000004 0.000005 0.000002 8.96346 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00003 1.78927 -0.000038 -0.000016 -0.000015 8.963448 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108309 -1.322845 0.77475 75.179995 -147.650878 -144.614135 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322811 -0.774755 75.179995 -147.650878 -144.614162 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000002 -3.408817 0 -6.141877 11.826462 13.018644 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000006 3.408813 0.00001 -6.141867 11.826455 13.018645 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0 -2.799511 0 0.000007 -0.000005 39.115336 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.799557 -0.000002 0.000001 -0.000009 39.115326 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000003 -1.82245 -0.000004 0.000001 -0.000003 14.700032 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000013 1.822392 0.000015 -0.000005 -0.000005 14.700015 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.37532 -0.310266 77.044043 145.98244 149.993865 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375257 0.310247 77.04405 145.982386 149.993729 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0 -3.388153 0.000004 0.778601 -0.720684 16.126084 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000021 3.388247 0.000003 0.778617 -0.720698 16.126085 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085278 0 -0.000001 0.000002 35.566715 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000005 2.085253 0.000006 -0.000002 -0.000006 35.56667 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.544365 0.000004 0.000006 0.000002 12.350644 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000008 1.544366 0.000015 0 -0.000007 12.350677 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193992 -1.163868 -1.333147 69.132915 115.572758 124.448343 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163813 1.333128 69.132894 115.572758 124.448315 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297537 -0.000002 1.356045 -7.079812 14.347253 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000006 3.297585 0.000019 1.356035 -7.079819 14.347239 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000001 -1.951841 0 0.000006 0.000006 28.584405 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 1.951801 0 -0.000002 0.000005 28.584432 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.231833 -0.000004 0.000004 0.000005 22.624823 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.231865 -0.000042 -0.000006 0.000006 22.624799 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 41.253517 27.165754 11.908974 33.031888 -18.44134 -152.4129 0 0 0 0 0 0
$definebone "vm_weapon_bone" "weapon_bone" -0.000045 1.935493 0.401957 -0.026407 -0.003889 -0.000011 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone" -0.266639 -3.362495 -1.837906 -88.29889 0.015106 -0.020456 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0.356529 0.801178 2.984876 -0.000734 89.996035 -0.026349 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 1.167908 0.360537 0.82826 0.000063 -89.999969 -0.001501 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone_1" 1.1679 0.360538 0.06629 0.000063 -89.999969 -0.001444 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "bip_upperArm_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_L"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_L"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_L"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_pinky_2_R"
$bonemerge "weapon_bone"


$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_RevolverDM.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "fire_crit" {
	"anims\fire_crit.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 26 "Weapon_Revolver.Reload1" }
	{ event 5004 84 "Weapon_Revolver.Reload2" }
	{ event 5004 107 "Weapon_Revolver.Reload3" }
	{ event AE_CL_BODYGROUP_SET_VALUE 2 "bullet 1" }
	{ event AE_CL_BODYGROUP_SET_VALUE 108 "bullet 0" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$KeyValues
{
}
