$modelname "weapons/c_models/c_engineer_arms.mdl"

$model "arms" "c_engineer_arms.smd"

$body "illumpos" "../illumpos.smd"
// makes lighting consistent between arms and weapons
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\player\engineer\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "engineer_red" 	"engineer_handr_red"  "engineer_mech_hand"        }
	{ "engineer_blue"   "engineer_handr_blue" "engineer_mech_hand_blue"   }
	{ "engineer_custom" "engineer_handr_red"  "engineer_mech_hand_custom" }
}

$attachment "weapon_bone_L" "weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "effect_hand_L" "effect_hand_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L" "vm_weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L_1" "vm_weapon_bone_L_1" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L_2" "vm_weapon_bone_L_2" 0 0 0 rotate 0 0 0
$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_1" "weapon_bone_1" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_2" "weapon_bone_2" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_3" "weapon_bone_3" 0 0 0 rotate 0 0 0
$attachment "effect_hand_R" "effect_hand_R" 0 0 0 rotate 0 0 0

$definebone "root" "" 0 60.106396 -4.292783 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.092304 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.0923 0.000004 0.000003 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0 -11.937256 0 0 0.000002 -12.615493 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000008 11.937298 0.000002 0 0 -12.615493 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0 -9.999998 -0.000002 0.000002 0.000003 -0.710517 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0 10.533932 0.000002 0.000002 0.000002 -0.710514 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0 -11.59272 0.013129 0.000002 0.000003 -0.710517 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000027 1.058876 0.000007 0.000002 -0.000002 -0.000002 0 0 0 0 0 0
$definebone "arm_attach_R" "bip_lowerArm_R" -0.000004 0 0.000001 0 0.000002 0.000006 0 0 0 0 0 0
$definebone "bip_twist_R" "bip_lowerArm_R" -0.000004 5.300001 0 0.000013 0.000003 0.000008 0 0 0 0 0 0
$definebone "forearm_twist_01_L" "bip_lowerArm_L" 0.000008 -5.303598 -0.001716 0.000002 0.000003 -0.710517 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -2.078655 -1.771875 0.100797 -10.919345 165.860736 1.498614 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 2.261845 1.906815 -0.064198 10.919792 -14.139304 -1.498447 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 6.006599 2.049641 0.807188 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 6.721283 3.300211 1.318987 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 7.410255 4.505789 1.812372 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_3" "bip_hand_R" 8.175129 5.844181 2.360109 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "bip_hand_R" 8.709616 6.779434 2.742866 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_5" "bip_hand_R" 9.36731 7.930285 3.213854 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_6" "bip_hand_R" 10.168661 9.332505 3.787714 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_7" "bip_hand_R" 10.923656 10.653618 4.328383 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "bip_hand_L" -4.987762 -3.40139 1.04353 10.568533 -25.9462 19.912903 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_1" "bip_hand_L" -5.525152 -4.341726 0.658694 10.568533 -25.9462 19.912903 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_2" "bip_hand_L" -6.14864 -5.432716 0.212205 10.568533 -25.9462 19.912903 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 5.090199 2.495529 0.997334 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 5.80489 3.746096 1.50913 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 6.493858 4.951681 2.002517 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 7.258736 6.290068 2.550255 10.568537 -25.94621 -160.087095 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -2.407539 -4.656857 0.508154 2.934624 4.443494 99.617859 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499929 2.575144 -6.260519 -25.558531 -31.003742 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809803 0.499863 -2.575165 -6.260524 -25.558532 -31.003735 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000004 -3.099537 -0.000008 -0.000003 0.000003 11.826803 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.00005 3.09952 0.000008 0.000008 -0.000015 11.826805 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000004 -1.64941 0.000004 -0.000005 0.000001 -8.169218 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.64942 0.00001 0.000002 -0.000009 -8.169227 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168287 1.640406 61.198851 -118.799216 -115.979413 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008183 1.168306 -1.640392 61.198857 -118.799175 -115.979372 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000004 -3.307283 0.000002 -15.200344 22.794744 12.109848 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.00004 3.307251 0.000002 -15.200328 22.794742 12.109872 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892881 -0.000002 -0.000003 0.00001 39.534542 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000006 2.892891 0.000051 -0.000009 0.000003 39.534508 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0 -1.789223 0 0.000004 0.000003 8.963478 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000023 1.789169 -0.000064 -0.000002 -0.000002 8.963479 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.322851 0.77475 75.180002 -147.650905 -144.614135 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108303 1.322773 -0.774776 75.180002 -147.650892 -144.614121 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000002 -3.408819 -0.000002 -6.141863 11.82646 13.018679 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000008 3.408844 -0.000019 -6.141873 11.826468 13.018621 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0 -2.799513 0 0.000005 0.000001 39.115319 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000019 2.799555 -0.000031 0.000004 0.000011 39.11536 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0 -1.822449 0.000005 -0.000003 0.000004 14.700037 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000011 1.822418 0.000038 -0.000003 0.000018 14.700022 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.375326 -0.310266 77.044043 145.982468 149.993865 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205257 1.375311 0.310268 77.044043 145.982454 149.993865 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000001 -3.388149 0.000008 0.77859 -0.720686 16.126111 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" 0 3.388145 0.000072 0.778586 -0.720684 16.126068 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085268 -0.000002 0.000002 0.000002 35.566687 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.00001 2.085281 0.000004 -0.000001 -0.000003 35.56668 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544365 0.000005 0.000007 -0.000003 12.350656 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000022 1.544292 0.000012 0.000007 -0.000004 12.350661 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193996 -1.163881 -1.333147 69.132901 115.572785 124.448315 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.194004 1.163836 1.333138 69.132921 115.572758 124.448315 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297543 -0.000002 1.356041 -7.079814 14.347318 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" 0.000001 3.297546 -0.000027 1.356041 -7.079811 14.347291 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0 -1.951864 0.000006 0.000005 0.000002 28.584419 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000002 1.951904 -0.000051 -0.000001 0.000004 28.58442 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.231834 0 0.00001 0 22.624848 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231846 0.000063 0.00001 0.000005 22.624855 0 0 0 0 0 0

$include c_engineer_arms_bonemerge.qci

$sequence "c_engineer_arms" {
	"c_engineer_arms.smd"
	fps 30
}