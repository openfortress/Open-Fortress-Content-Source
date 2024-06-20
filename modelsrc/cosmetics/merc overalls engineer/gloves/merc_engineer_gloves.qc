// Created by Crowbar 0.72
// Autor Wendy | @wendylol, 229318205808705536

$modelname "player/items/mercenary/merc_engineer_gloves/merc_engineer_gloves"

$bodygroup "lefthand"
{
	studio "merc_engineer_gloves.smd"
	blank
	blank
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0.183 38.353

$cdmaterials "models\workshop\player\items\soldier\merc_engineer_overalls\"
$cdmaterials ""

$cbox 0 0 0 0 0 0

$bbox -8.056 -25.582 1.482 7.691 25.582 75.223

$definebone "bip_pelvis" "" 0 42.435368 -0.030646 0 0 170.595559 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 -7.6717 0 0 0 1.370442 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 -4.790928 0 0 0 -1.611272 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 -5.565578 0 0 0 5.843862 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 -6.472752 0 0 0 16.72561 0 0 0 0 0 0
$definebone "bip_neck" "bip_spine_3" 0 -4.912437 -0.000002 0 0 3.400553 0 0 0 0 0 0
$definebone "bip_head" "bip_neck" 0 -3.899429 -0.000004 0 0 -16.054095 0 0 0 0 0 0
$definebone "bip_collar_R" "bip_spine_3" -2.20417 -2.813499 -2.257935 13.429266 70.895185 15.504731 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000038 9.800024 0.000011 8.292569 41.364739 69.133727 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 14.480988 0.000001 0.000004 -0.000242 -21.316433 0.000073 0 0 0 0 0 0
$definebone "bip_hip_L" "bip_pelvis" 5.827514 2.798298 -0.442892 -12.033386 89.524 168.247339 0 0 0 0 0 0
$definebone "bip_knee_L" "bip_hip_L" 16.916908 0 0 9.582933 0.000001 0 0 0 0 0 0 0
$definebone "bip_foot_L" "bip_knee_L" 17.962734 0 0 9.601417 86.911459 -71.522551 0 0 0 0 0 0
$definebone "bip_hip_R" "bip_pelvis" -5.82751 2.798256 -0.442897 -12.033372 90.476026 101.752654 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 10.643175 0.000001 0.000008 -89.999955 -90.00003 0 0 0 0 0 0 0
$definebone "bip_collar_L" "bip_spine_3" 2.204173 -2.813492 -2.257936 -13.429266 -70.895185 -164.495284 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" 0.000008 -9.800062 0 -8.292876 -138.635601 110.866333 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 14.480949 0.000001 0.000004 -0.000009 21.316448 -90.000023 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 10.64316 -0.000004 0 -0.000008 90.000023 -0.000002 0 0 0 0 0 0
$definebone "bip_knee_R" "bip_hip_R" 16.916973 0 0 -0.000012 9.58297 90.000009 0 0 0 0 0 0
$definebone "bip_foot_R" "bip_knee_R" 17.962709 0 0 -9.601415 93.088553 108.477433 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.027744 -7.288502 -0.139498 74.928992 -176.63768 -163.748417 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.362812 -7.317844 1.92873 76.987276 178.224757 -169.243113 0 0 0 0 0 0
$definebone "bip_toe_R" "bip_foot_R" 0.000004 7.445687 0.000001 0.000002 0.000003 -29.867881 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.506016 -7.080647 -1.742908 69.607353 153.756683 171.869198 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.657028 -6.74514 4.105731 83.780282 -165.876034 -153.912248 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.604511 -3.299335 3.457885 1.337114 -22.184926 -38.25717 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.604588 3.299332 -3.457897 1.337121 -22.184931 -38.257163 0 0 0 0 0 0
$definebone "rocket_joint" "bip_hand_L" -1.458443 -4.657337 1.549472 11.38792 -20.574285 14.176586 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.656982 6.74511 -4.105747 83.780289 -165.876007 -153.912302 0 0 0 0 0 0
$definebone "bip_toe_L" "bip_foot_L" 0.000001 -7.445683 0 0.000001 0.000002 -29.867888 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.362736 7.317848 -1.928742 76.987283 178.224757 -169.243126 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.02776 7.288559 0.139513 74.928999 -176.637667 -163.748458 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.506046 7.080656 1.7429 69.607359 153.756697 171.869198 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000007 1.968742 0.000029 0.000003 -0.000006 35.580518 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.00001 1.322281 -0.000012 0.000003 -0.000008 19.000213 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000027 2.368963 0.000051 0.000002 -0.000009 42.984672 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.00002 1.636559 -0.00004 -0.000004 -0.000008 19.614046 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000012 2.651693 -0.000034 0.000002 -0.00001 44.884383 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0 2.231041 -0.000026 -0.000003 -0.00001 19.122872 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000006 2.405672 -0.000034 0.000001 -0.000004 33.119826 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" 0.000008 1.633949 0.000051 -0.000003 -0.000008 23.208385 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000061 2.446821 -0.00001 -0.000004 0.000003 9.906549 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000046 1.546299 -0.000019 -0.000006 0.000003 -6.813732 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0 -1.968758 -0.000002 0.000009 -0.000007 35.580511 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000003 -1.322315 0.000001 0.000005 -0.000013 19.000217 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000001 -2.369028 0 0.000008 -0.000007 42.984689 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000001 -1.636532 0 0.000003 -0.000009 19.614041 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000003 -2.651712 0 0.000009 -0.000009 44.88439 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000003 -2.231079 0.000002 -0.000001 -0.000013 19.122878 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000001 -2.405653 0.000002 0.000009 -0.000004 33.119826 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000001 -1.633953 -0.000002 0.000003 -0.00001 23.208383 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000002 -2.446852 -0.000002 -0.000012 0.000005 9.906547 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000004 -1.546312 -0.000004 -0.000011 0.000007 -6.813741 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 1.458473 4.657351 -1.549473 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_4" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_5" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_6" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_7" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_8" "bip_hand_R" 2.36768 6.755417 -0.983943 11.387928 -20.574294 -75.823419 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_1" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_2" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_3" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_4" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_5" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_6" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_7" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0
$definebone "weapon_bone_L_8" "bip_hand_L" -1.458443 -4.657337 1.549472 11.387915 -20.574285 104.176579 0 0 0 0 0 0


$sequence "ref" {
	"merc_engineer_gloves.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}
