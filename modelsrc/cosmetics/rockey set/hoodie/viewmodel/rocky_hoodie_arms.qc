// Created by Crowbar 0.72

$modelname "weapons/c_models/cosmetics/merc/sleeves/rocky_hoodie_arms.mdl"

$bodygroup "sleeve"
{
	studio "rocky_hoodie_arms.smd"
	blank
}

$bodygroup "illumpos"
{
	studio "illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\workshop\player\items\soldier\rocky_set\"
$cdmaterials ""

$attachment "weapon_bone_L" "weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "effect_hand_L" "effect_hand_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L" "vm_weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L_1" "vm_weapon_bone_L_1" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L_2" "vm_weapon_bone_L_2" 0 0 0 rotate 0 0 0
$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "handle_bone" "handle_bone" 0 0 0 rotate 0 0 0
$attachment "weapon_bone1" "bip_hand_R" 4.81 2.73 1.19 rotate 9.78 -21.9 -161.57
$attachment "weapon_bone2" "bip_hand_R" 5.71 4.64 1.88 rotate 9.78 -21.9 -161.57
$attachment "weapon_bone3" "bip_hand_R" 6.47 6.25 2.46 rotate 9.78 -21.9 -161.57
$attachment "weapon_bone4" "bip_hand_R" 7.38 8.2 3.17 rotate 9.78 -21.9 -161.57
$attachment "weapon_bone_1" "weapon_bone_1" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_2" "weapon_bone_2" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_3" "weapon_bone_3" 0 0 0 rotate 0 0 0
$attachment "effect_hand_R" "effect_hand_R" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -67.331 -27.134 -23.789 0.021 26.592 9.152

$definebone "illumpos" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346421 -27.875274 170.885869 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188004 -14.058296 -3.263459 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187931 14.058403 3.263466 -0.802339 -4.237948 -10.928149 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000008 -12.375366 0.000002 0.000003 -0.000003 -0.710515 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000015 12.375381 0.000015 0.000004 -0.000007 -0.710521 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000019 -1.058865 -0.00001 -0.000007 -0.000002 0.000011 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.00005 1.058855 -0.000008 -0.000003 0.00001 0.000018 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -2.036919 -1.849724 0.156123 -10.441166 169.87205 3.118207 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 2.036877 1.849695 -0.156137 10.441632 -10.128016 -3.118013 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 5.058609 0.603683 0.378059 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 5.315784 1.151814 0.576566 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 5.702509 1.97607 0.875073 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_3" "bip_hand_R" 6.03969 2.694736 1.135341 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "bip_hand_R" 6.464039 3.599209 1.462893 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_5" "bip_hand_R" 6.940701 4.615158 1.830829 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_6" "bip_hand_R" 7.454594 5.710464 2.227495 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_7" "bip_hand_R" 8.025957 6.928268 2.66853 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "bip_hand_L" -3.80761 -3.641073 -1.568385 9.775291 -21.896736 18.429285 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_1" "bip_hand_L" -4.177803 -4.430098 -1.854135 9.775291 -21.896736 18.429285 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_2" "bip_hand_L" -4.658192 -5.453999 -2.224946 9.775291 -21.896736 18.429285 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013519 1.023724 0.572108 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 4.814581 2.731091 1.190436 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 5.711927 4.64369 1.883089 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 6.465527 6.249928 2.464795 9.775316 -21.896767 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -2.582489 -4.133492 -1.795868 9.775291 -21.896736 18.429285 0 0 0 0 0 0
$definebone "handle_bone" "weapon_bone" 3.907274 9.50758 9.639407 -6.826699 123.790362 -169.927853 0 0 0 0 0 0
$definebone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499928 2.575133 -6.260518 -25.558547 -31.003735 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809734 0.499903 -2.575141 -6.260507 -25.558547 -31.003707 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000004 -3.099545 -0.000002 0.000019 -0.000015 11.826847 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.00001 3.099564 0.000011 0.000027 -0.000031 11.826843 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000002 -1.649408 0.000004 0.000014 -0.000028 -8.169198 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000008 1.649408 -0.000002 0.000015 -0.000029 -8.169202 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008209 -1.168278 1.640409 61.19885 -118.799229 -115.979412 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168316 -1.640388 61.198843 -118.799174 -115.979426 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000011 -3.307282 -0.000011 -15.200361 22.794759 12.109822 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000008 3.307261 0.000006 -15.200342 22.794703 12.109812 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892866 0 -0.000003 0.000011 39.534532 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000032 2.892813 0.000023 -0.00001 -0.000034 39.534535 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000005 -1.789227 -0.000001 0.000003 -0.000001 8.963442 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000034 1.789265 -0.000041 -0.000033 -0.000028 8.963438 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.322849 0.774747 75.179995 -147.650849 -144.614134 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108284 1.322813 -0.774754 75.180001 -147.650863 -144.614161 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000013 -3.408806 0.000002 -6.141862 11.826448 13.018639 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000006 3.408815 0.000008 -6.141866 11.826451 13.018646 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.799505 0.000004 0.00002 -0.000024 39.115302 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000009 2.799557 -0.000006 0 -0.00001 39.115322 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000004 -1.822433 0.000005 -0.000002 -0.000025 14.699986 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000015 1.822392 0.000013 -0.000015 -0.000012 14.699947 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205338 -1.375326 -0.310266 77.044035 145.982439 149.99385 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375256 0.310246 77.044049 145.982371 149.993727 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000003 -3.388151 0.000011 0.778607 -0.720692 16.126097 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000019 3.388235 0.000004 0.778617 -0.7207 16.12606 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085276 0.000008 0.000005 -0.000004 35.566707 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000004 2.085264 0.000013 -0.000005 -0.000005 35.566649 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0 -1.544353 -0.000001 0.000004 -0.00001 12.350622 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000011 1.544357 0.000016 -0.000002 -0.000003 12.350701 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163866 -1.333148 69.132914 115.572757 124.448342 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193977 1.163795 1.333128 69.132893 115.572757 124.448314 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297518 -0.000011 1.356051 -7.079809 14.347251 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000007 3.297562 0.000011 1.356023 -7.079811 14.347212 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000003 -1.951862 0 0.000009 0.000007 28.584398 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000011 1.951797 -0.000008 -0.000012 0.00001 28.584396 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.231831 0.000002 0.000008 -0.000001 22.624792 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.231861 -0.000041 -0.000013 0.000015 22.624735 0 0 0 0 0 0

$bonemerge "root"
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


$sequence "c_merc_arms" {
	"rocky_hoodie_arms.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
