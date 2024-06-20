// Created by Crowbar 0.72
// Autor Wendy | @wendylol, 229318205808705536

$modelname "weapons/c_models/cosmetics/merc/gloves/merc_engineer_gloves.mdl"

$bodygroup "glove"
{
	studio "merc_engineer_gloves.smd"
	blank
}

$bodygroup "illumpos"
{
	studio "illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\workshop\player\items\soldier\merc_engineer_overalls\"
$cdmaterials "models\player\mercenary\"


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
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.058296 -3.263459 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187943 14.058399 3.263466 -0.802339 -4.237948 -10.928149 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000004 -12.375359 0.000002 0.000003 -0.000003 -0.710515 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000015 12.375381 0.000013 0.000004 -0.000002 -0.710522 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058865 -0.000005 -0.000004 -0.000002 0.000011 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058853 -0.000007 -0.000003 0.000009 0.000012 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -2.036922 -1.849731 0.156125 -10.441173 169.87205 3.118207 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 2.03688 1.849699 -0.156137 10.441626 -10.128006 -3.118018 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 5.058613 0.603682 0.37806 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 5.315788 1.151814 0.576566 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 5.702511 1.976067 0.875072 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_3" "bip_hand_R" 6.039692 2.694733 1.135339 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "bip_hand_R" 6.464043 3.599211 1.462893 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_5" "bip_hand_R" 6.940701 4.615158 1.830828 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_6" "bip_hand_R" 7.454597 5.710466 2.227496 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_7" "bip_hand_R" 8.025963 6.928267 2.668529 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "bip_hand_L" -3.807613 -3.641073 -1.568388 9.775297 -21.896733 18.429286 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_1" "bip_hand_L" -4.177803 -4.430098 -1.854134 9.775297 -21.896733 18.429286 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_2" "bip_hand_L" -4.65819 -5.454 -2.224946 9.775297 -21.896733 18.429286 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013519 1.02372 0.572107 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 4.814581 2.731092 1.190436 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 5.711927 4.643692 1.88309 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 6.46553 6.249928 2.464794 9.775311 -21.896757 -161.570693 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -2.582489 -4.13349 -1.795869 9.775297 -21.896733 18.429286 0 0 0 0 0 0
$definebone "handle_bone" "weapon_bone" 3.907275 9.507584 9.639412 -6.826701 123.790362 -169.927853 0 0 0 0 0 0
$definebone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499926 2.575136 -6.260522 -25.558546 -31.003731 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499897 -2.575143 -6.260509 -25.558546 -31.003711 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000006 -3.099543 -0.000006 0.000013 -0.00001 11.826833 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.00001 3.099564 0.000013 0.00002 -0.000026 11.826839 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000004 -1.64941 0.000008 0.000011 -0.000021 -8.169203 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000006 1.64941 0 0.000011 -0.000026 -8.169202 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008205 -1.16828 1.640409 61.19885 -118.799215 -115.979412 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168314 -1.64039 61.198843 -118.799174 -115.979412 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000006 -3.307281 -0.000008 -15.200357 22.794744 12.109832 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000011 3.307262 0.000011 -15.200338 22.794713 12.109815 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892872 0.000002 -0.000002 0.000005 39.534535 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.00003 2.892818 0.000025 -0.000006 -0.000027 39.534535 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000005 -1.789227 0.000001 -0.000002 -0.000005 8.963448 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000032 1.789268 -0.00004 -0.000025 -0.000022 8.963443 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.322844 0.774748 75.179995 -147.650849 -144.614134 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108288 1.322811 -0.774755 75.180001 -147.650863 -144.614161 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000006 -3.40881 0 -6.141873 11.826457 13.018639 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000004 3.408813 0.000008 -6.141867 11.826453 13.018645 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000001 -2.7995 0 0.000011 -0.000009 39.115325 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00001 2.799561 -0.000004 0 -0.000009 39.115312 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000005 -1.822445 0.000003 0 -0.000008 14.700005 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000015 1.822392 0.000012 -0.000012 -0.000009 14.699978 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205334 -1.37532 -0.310266 77.044042 145.982439 149.99385 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375257 0.310246 77.044049 145.982371 149.993727 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000003 -3.388147 0.000008 0.778604 -0.72069 16.126089 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000022 3.388243 0.000004 0.778615 -0.720695 16.126073 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000003 -2.085276 0.000002 0.000001 -0.000002 35.566714 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000004 2.085262 0.00001 -0.000005 -0.000001 35.566656 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.54435 -0.000001 0.000005 -0.000006 12.350634 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544365 0.000019 0 -0.000001 12.35068 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163862 -1.333147 69.132914 115.572757 124.448342 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163797 1.333128 69.132893 115.572757 124.448314 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297527 -0.000006 1.356046 -7.079813 14.347251 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000006 3.297569 0.000013 1.356029 -7.079813 14.347224 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000003 -1.951859 0 0.000005 0.000004 28.584398 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000013 1.951801 -0.000002 -0.000007 0.000009 28.584412 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.231831 0.000003 0.000003 0.000002 22.624798 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231861 -0.000041 -0.00001 0.000013 22.624771 0 0 0 0 0 0

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
	"merc_engineer_gloves.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
