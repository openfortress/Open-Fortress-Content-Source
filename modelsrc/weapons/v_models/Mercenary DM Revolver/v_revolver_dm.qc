// Created by Crowbar 0.56

$modelname "weapons/v_models/v_revolver_dm.mdl"

$model "revolver" "v_revolver_dm_c_revolver.smd"
$bodygroup "illumpos" {
	blank
	studio "v_revolver_dm_illumpos.smd"
}
$model "bullets" "v_revolver_dm_c_revolver_bullets.smd"

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

//$definebone "root" "" 0 46.698849 -0.827193 0 0 -179.376 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.058311 -3.26346 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.18795 14.058388 3.263466 -0.802339 -4.237948 -10.928149 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0 -12.375359 0.000001 0.000003 -0.000002 -0.710515 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000011 12.375385 0.000009 0 0 -0.710522 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000008 -1.058863 -0.000003 0 -0.000002 0.000006 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000057 1.058849 -0.000004 -0.000001 0.000005 0.00001 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809818 -0.499918 2.575141 -6.260519 -25.558539 -31.003732 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499897 -2.575145 -6.260508 -25.558539 -31.003708 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -3.099543 -0.000006 0.000004 -0.000002 11.826816 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099562 0.000017 0.000017 -0.00001 11.826841 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000006 -1.649406 0.000004 0.000006 -0.00001 -8.169215 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000004 1.649408 0.000002 0.00001 -0.000009 -8.169198 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.16828 1.640409 61.198851 -118.799216 -115.979413 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168314 -1.640393 61.198851 -118.799189 -115.979413 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000002 -3.307285 -0.000002 -15.200354 22.794744 12.109838 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000011 3.307262 0.000011 -15.200337 22.794722 12.109825 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892876 -0.000002 0 0.000011 39.534539 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000032 2.89282 0.000029 -0.000001 -0.000014 39.534546 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000002 -1.789223 0.000002 0.000003 0.000003 8.963473 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00003 1.789272 -0.000039 -0.000013 -0.000014 8.963456 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108311 -1.322845 0.77475 75.179995 -147.650892 -144.614135 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322811 -0.774755 75.179995 -147.650878 -144.614162 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000002 -3.408815 0 -6.141877 11.826462 13.018645 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000006 3.408815 0.000011 -6.141867 11.826457 13.018647 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.799509 0 0.000007 -0.000006 39.115346 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.799559 0 0.000001 -0.000006 39.115333 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000004 -1.822449 -0.000001 0.000002 -0.000003 14.700044 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000014 1.822392 0.000013 -0.000003 -0.000003 14.700031 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.37532 -0.310266 77.044043 145.98244 149.993865 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375259 0.310247 77.04405 145.982386 149.993729 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0 -3.388151 0.000004 0.7786 -0.720686 16.126084 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000021 3.388245 0.000004 0.778617 -0.720699 16.126089 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085278 -0.000002 -0.000003 0 35.566718 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000004 2.085253 0.000004 -0.000003 -0.000008 35.56667 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544365 0.000002 0.000004 -0.000001 12.350648 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000008 1.544365 0.000019 -0.000001 -0.000007 12.350677 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163868 -1.333148 69.132915 115.572758 124.448343 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163813 1.333128 69.132894 115.572758 124.448315 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297539 -0.000002 1.356044 -7.079813 14.347256 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000006 3.297581 0.000019 1.356037 -7.07982 14.347244 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000001 -1.951843 0.000002 0.000005 0.000006 28.58441 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 1.951801 0.000002 0 0.000004 28.584441 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.231834 0.000001 0.000003 0.000005 22.624828 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.231865 -0.000046 -0.000005 0.000005 22.624802 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 41.253525 27.165752 11.908974 33.031881 -18.441337 -152.4129 0 0 0 0 0 0
$definebone "vm_weapon_bone" "weapon_bone" -0.000045 1.935497 0.401956 -0.026405 -0.003893 -0.000012 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone" -0.266638 -3.362492 -1.837906 -88.29889 0.015062 -0.020466 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0.356528 0.801175 2.984876 -0.000733 89.996035 -0.026347 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 1.167911 0.360537 0.828261 0.000066 -89.999976 -0.001502 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone_1" 1.16791 0.360538 0.06629 0.000066 -89.999976 -0.001445 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

//$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_L"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_L"
$bonemerge "bip_hand_R"
$bonemerge "weapon_bone"
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
	frames 0 80
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"anims\fire.smd"
	frames 0 34
	activity "ACT_VM_PRIMARYATTACK" 1
	snap
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "fire_crit" {
	"anims\firecrit.smd"
	frames 0 50
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	snap
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "reload" {
	"anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 26 "Weapon_Revolver.Reload1" }
	{ event 5004 58 "Weapon_Revolver.Reload2" }
	{ event 5004 88 "Weapon_Revolver.Reload3" }
	{ event AE_CL_BODYGROUP_SET_VALUE 2 "bullet 1" }
	{ event AE_CL_BODYGROUP_SET_VALUE 92 "bullet 0" }
	fadeout 0.2
	snap
	fps 60
}

$KeyValues
{
}
