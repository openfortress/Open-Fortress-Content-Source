$modelname "weapons/c_models/c_zombie_heavy_arms.mdl"

$model "arms" "c_heavy_arms_reference.smd"

$body "illumpos" "../illumpos.smd"
// makes lighting consistent between arms and weapons
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\player\hvyweapon\"

$renamematerial hvyweapon_hands hvyweapon_hands_zombie

$attachment "weapon_bone_L" "weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L" "vm_weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_1_L" "vm_weapon_bone_1_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_2_L" "vm_weapon_bone_2_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_3_L" "vm_weapon_bone_3_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_4_L" "vm_weapon_bone_4_L" 0 0 0 rotate 0 0 0
$attachment "effect_hand_L" "effect_hand_L" 0 0 0 rotate 0 0 0
$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_1" "weapon_bone_1" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_2" "weapon_bone_2" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_3" "weapon_bone_3" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_4" "weapon_bone_4" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone" "vm_weapon_bone" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_1" "vm_weapon_bone_1" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_2" "vm_weapon_bone_2" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_3" "vm_weapon_bone_3" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_4" "vm_weapon_bone_4" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_5" "vm_weapon_bone_5" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_6" "vm_weapon_bone_6" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_7" "vm_weapon_bone_7" 0 0 0 rotate 0 0 0
$attachment "effect_hand_R" "effect_hand_R" 0 0 0 rotate 0 0 0

$definebone "root" "" 0 69.116623 -7.999471 0 0 -161.831102 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 2.131428 -5.80579 -7.194559 -17.630694 -75.555847 -156.575408 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.000023 -14.061879 0.000002 -32.440701 -48.398946 -17.732527 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000004 -17.670918 0.000001 0 -0.000014 -25.322281 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" -0.000004 -15.175488 -0.000002 0.000009 -0.000008 0.000018 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -2.13143 -5.805752 -7.194569 17.630692 75.555861 23.424592 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" -0.000038 14.061868 0.000004 -32.440711 -48.398957 -17.732512 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000046 17.670925 0.000008 -0.000003 0.000007 -25.322271 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 0.000019 15.175529 0.000009 -0.000002 -0.000004 -0.000009 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.498497 6.156168 -2.019428 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 4.498495 6.692837 -2.019428 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 4.498497 7.269106 -2.019428 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 4.498493 7.866358 -2.019429 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "weapon_bone_4" "bip_hand_R" 4.498493 8.630239 -2.019429 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -4.498003 -6.155987 2.018998 0.000007 -0.00001 0.000013 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 5.539101 6.156168 -1.152468 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 5.539099 6.692839 -1.15247 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 5.539101 7.269104 -1.152468 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_3" "bip_hand_R" 5.539099 7.866358 -1.152469 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "bip_hand_R" 5.539101 8.630239 -1.152468 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_5" "bip_hand_R" 5.539101 9.665956 -1.152469 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_6" "bip_hand_R" 5.539101 10.645105 -1.152471 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_7" "bip_hand_R" 5.539101 11.615992 -1.15247 -0.000002 -0.000006 -89.99999 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "bip_hand_L" -5.39399 -6.155989 0.767102 0.000007 -0.00001 0.000013 0 0 0 0 0 0
$definebone "vm_weapon_bone_1_L" "bip_hand_L" -5.393993 -6.598404 0.767103 0.000007 -0.00001 0.000013 0 0 0 0 0 0
$definebone "vm_weapon_bone_2_L" "bip_hand_L" -5.393986 -7.050543 0.767103 0.000007 -0.00001 0.000013 0 0 0 0 0 0
$definebone "vm_weapon_bone_3_L" "bip_hand_L" -5.39399 -7.654591 0.767104 0.000007 -0.00001 0.000013 0 0 0 0 0 0
$definebone "vm_weapon_bone_4_L" "bip_hand_L" -5.393988 -8.254343 0.767103 0.000007 -0.00001 0.000013 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -3.255001 -3.3283 0.701494 -14.607806 176.613653 -0.398287 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 3.255001 3.328266 -0.701506 14.608245 -3.386359 0.398431 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -2.440094 -1.974152 3.836563 11.662863 -29.680055 -44.861311 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 2.440136 1.974119 -3.83659 11.662859 -29.680055 -44.861335 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000001 -4.365019 -0.000004 0.000007 0.000003 27.712584 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.00006 4.365004 -0.000011 -0.000004 -0.000009 27.712564 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0 -1.793211 -0.000006 -0.000001 -0.000007 -17.637265 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000001 1.793217 0.000013 -0.000003 -0.000003 -17.63727 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.751591 -6.859724 4.600632 77.620948 163.772433 172.636694 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.751553 6.859684 -4.600655 77.620948 163.772447 172.636789 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000004 -3.600685 0.000002 -0.000002 -0.000016 53.651741 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000008 3.600672 0.000046 0.000015 0.000013 53.651734 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000002 -2.262768 -0.000002 -0.000009 -0.000006 4.468373 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000017 2.262806 -0.000048 0.000009 -0.000004 4.468373 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.713047 -6.783436 1.947195 68.239157 155.918549 177.162691 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.713024 6.783401 -1.947211 68.239184 155.918562 177.16276 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.040714 -4.737331 -0.016134 -0.000007 -0.000022 47.021058 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000013 4.72975 0.000051 0.000012 0.000006 47.021072 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0 -2.758442 -0.000002 0 -0.000001 5.248346 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000004 2.75845 0.000022 0.000003 -0.000001 5.248326 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -1.681087 -6.576651 -0.639792 65.725757 156.981927 -178.818384 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 1.681068 6.576639 0.639779 65.725736 156.981968 -178.818302 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000002 -3.781096 -0.000004 -0.000005 -0.000028 34.561536 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000005 3.781063 0.000031 -0.00001 0.000008 34.561516 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0 -2.398426 -0.000007 0.000006 -0.000017 16.826311 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000011 2.398407 0.000017 0.000008 -0.000001 16.826289 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -2.639706 -6.552818 -2.641662 58.305364 139.782104 169.755775 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 2.639748 6.552765 2.641619 58.305357 139.78209 169.755734 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000001 -3.015034 -0.000005 0.000018 0.000005 31.245431 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000008 3.015026 -0.000034 0.000013 -0.000002 31.245431 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.878258 -0.000002 0.000003 -0.000005 20.546888 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000003 1.878239 -0.000029 -0.000001 -0.000003 20.546908 0 0 0 0 0 0

$include "c_heavy_arms_bonemerge.qci"

$sequence "c_heavy_arms" {
	"c_heavy_arms_reference.smd"
	fps 30
}
