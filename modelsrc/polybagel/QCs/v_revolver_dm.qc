// Created by Crowbar 0.58

$modelname "weapons/v_models/v_revolver_dm.mdl"

$bodygroup "revolver"
{
	studio "v_revolver_dm_models/c_revolver.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_revolver_dm_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_revolver"
$cdmaterials "\"

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 2.71 14.41 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -23.802 -16 -15.228 43.196 9.382 23.327

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 46.698849 -0.827193 0 0 -179.376 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -8.653 -22.135143 3.987298 -17.889003 33.348211 -11.135207 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000111 14.314014 -0.000004 0.040795 0.000572 -27.983318 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000038 13.023424 0.000048 -0.000114 -0.000002 -0.000003 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 0.552692 1.347185 -1.605809 17.915701 -24.174348 -23.776377 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000027 2.023956 0.000027 -0.007677 -0.000057 10.704164 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000013 1.137081 -0.000017 -0.000345 -0.000002 -12.03916 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.032707 4.59383 -1.353837 69.633834 142.346348 162.948958 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0 1.755013 -0.000031 -0.073453 0.000118 37.983318 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" 0.000004 1.227127 0.000037 -0.000171 -0.000055 5.310747 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.368076 4.211674 -0.173061 62.499763 145.280884 168.579534 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000004 2.372913 -0.000032 -0.063484 0.000118 41.370016 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000002 1.580273 0.000033 -0.000227 -0.000114 1.963239 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.937862 3.861094 0.961402 57.349103 147.850989 174.374417 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000006 1.691093 0.000021 -0.056838 0.000233 28.158358 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.00001 1.42366 0.000036 -0.000571 -0.000224 13.419938 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 1.546986 3.401949 1.919378 54.037117 144.031424 173.23286 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000019 1.438164 0.000033 -0.056032 0.00006 24.344176 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.00001 1.059528 0.000008 0.000004 -0.000172 18.45274 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 41.253544 27.16576 11.908985 33.031885 -18.441337 -152.4129 0 0 0 0 0 0
$definebone "vm_weapon_bone" "weapon_bone" -0.000045 1.935497 0.401956 -0.026412 -0.003892 0.000001 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone" -0.266638 -3.362492 -1.837907 -88.298822 0.015786 -0.019741 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0.356528 0.801175 2.984876 -0.000746 89.996028 -0.026354 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 1.167911 0.360537 0.828261 0.000059 -89.999976 -0.001489 0 0 0 0 0 0
$definebone "weapon_bone_2" "weapon_bone_1" 1.16791 0.360538 0.06629 0.000059 -89.999976 -0.001432 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 8.652996 -22.135128 3.987302 17.826551 -33.335541 168.868656 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000042 -14.314034 -0.000014 -0.022461 0.0004 -27.983085 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" -0.000053 -13.023422 -0.000019 0.000111 -0.000401 -0.000117 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -0.552643 -1.347174 1.605793 17.915469 -24.174347 -23.776317 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000006 -2.023941 -0.000004 -0.007569 0.000001 10.704168 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000004 -1.1371 0 -0.00012 0.000402 -12.039109 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.032665 -4.593779 1.35387 69.635494 142.344709 162.947169 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000004 -1.755024 -0.000004 -0.072246 -0.000059 37.983376 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.227074 -0.000012 -0.000111 -0.00012 5.310746 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.368061 -4.211658 0.17307 62.500289 145.280201 168.57866 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.00001 -2.372929 -0.000002 -0.063482 -0.000113 41.370132 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000002 -1.580185 -0.000006 -0.000055 -0.000058 1.963241 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.93782 -3.861074 -0.96139 57.349267 147.850606 174.373843 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000008 -1.691063 0.000002 -0.057351 -0.000004 28.15836 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000008 -1.423679 -0.000008 -0.000058 -0.000291 13.419881 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -1.546951 -3.40192 -1.919367 54.038661 144.03126 173.232518 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.43811 -0.00001 -0.054775 0.000225 24.344174 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000006 -1.059563 0.000004 -0.000116 -0.000175 18.45274 0 0 0 0 0 0
$definebone "Sleeve_Control" "bip_lowerArm_L" -0.000053 -13.023422 -0.000019 0.000111 -0.000401 -0.000117 0 0 0 0 0 0
$definebone "Wrist_Control" "bip_lowerArm_L" -0.000046 -10.821737 -0.000015 0.000113 -0.000289 -0.000002 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
$bonemerge "weapon_bone"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "Sleeve_Control"
$bonemerge "Wrist_Control"


$sequence "draw" {
	"v_revolver_dm_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Revolver.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_revolver_dm_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_revolver_dm_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire_crit" {
	"v_revolver_dm_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_revolver_dm_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 11 "Weapon_Revolver.Reload1" }
	{ event 5004 29 "Weapon_Revolver.Reload2" }
	{ event 5004 43 "Weapon_Revolver.Reload3" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$KeyValues
{
}
