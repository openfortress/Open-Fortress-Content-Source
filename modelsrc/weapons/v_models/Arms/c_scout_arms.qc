$modelname "weapons/c_models/c_scout_arms.mdl"

$model "arms" "c_scout_arms.smd"

$body "illumpos" "../illumpos.smd"
// makes lighting consistent between arms and weapons
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\player\scout\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_1" "weapon_bone_1" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_2" "weapon_bone_2" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_3" "weapon_bone_3" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_4" "weapon_bone_4" 0 0 0 rotate 0 0 0
$attachment "effect_hand_R" "effect_hand_R" 0 0 0 rotate 0 0 0
$attachment "weapon_bone_L" "weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "effect_hand_L" "effect_hand_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L" "vm_weapon_bone_L" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L_1" "vm_weapon_bone_L_1" 0 0 0 rotate 0 0 0
$attachment "vm_weapon_bone_L_2" "vm_weapon_bone_L_2" 0 0 0 rotate 0 0 0

$definebone "root" "" 0 67.311737 -5.554206 0 0 -152.927937 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 1.45285 -2.069664 -2.738789 -27.691725 -71.742873 -173.543073 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -1.45285 -2.069664 -2.738789 27.691728 71.74288 6.456933 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.000008 -7.952556 0.000007 -7.255555 -61.68682 9.987544 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" 0 7.952559 -0.000007 -7.255555 -61.686827 9.98753 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -0.000051 -13.116791 -0.000004 0.000004 0.000003 -32.689429 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 0.000048 13.116791 0 0.000006 0.000001 -32.689429 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000025 -9.515553 0.000019 -0.000003 0.000003 -0.000003 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000017 9.515545 -0.000018 0 0.000008 0 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -1.809242 -4.108727 -1.394464 1.595339 178.234785 5.705608 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 1.809235 4.10873 1.394468 -1.594891 -1.76527 -5.705412 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 4.309971 4.998432 1.278727 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 4.673349 6.63747 1.834414 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 5.084749 8.493124 2.463541 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_3" "bip_hand_R" 5.545725 10.572372 3.168475 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "bip_hand_R" 5.879047 12.07585 3.678201 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_5" "bip_hand_R" 6.197556 13.512491 4.165268 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_6" "bip_hand_R" 6.473553 14.757395 4.587332 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_7" "bip_hand_R" 6.76115 16.054628 5.027138 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "bip_hand_L" -3.983135 -5.075932 -1.263869 -2.53316 -13.339446 -161.667178 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_1" "bip_hand_L" -4.344952 -6.707912 -1.817163 -2.53316 -13.339446 -161.667178 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_2" "bip_hand_L" -4.719456 -8.397146 -2.389868 -2.53316 -13.339446 -161.667178 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 2.824774 5.350597 1.211198 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 3.188152 6.989635 1.766887 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 3.599554 8.845289 2.396013 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 4.060532 10.924538 3.100947 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "weapon_bone_4" "bip_hand_R" 4.393852 12.428015 3.610673 -2.533152 -13.339443 -161.667123 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -2.824749 -5.350605 -1.2112 -2.53316 -13.339446 -161.667178 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.634506 -2.2855 1.205043 -13.816337 -19.724661 -17.871848 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.634531 2.285522 -1.205033 -13.816333 -19.724664 -17.871836 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.004951 -2.025696 0.001392 2.250311 -3.614233 31.866798 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.004955 2.025673 -0.001387 2.250321 -3.614233 31.866835 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.13568 -2.00103 0.352961 -0.000002 0.000003 -8.113785 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.135728 2.001026 -0.352958 -0.000001 0.000002 -8.113788 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" -0.148579 -6.67374 0.890838 75.595401 65.238935 91.706198 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" 0.148573 6.673695 -0.890849 75.595373 65.23899 91.706321 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000002 -2.19558 0.000061 0.000011 0.000007 23.168845 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" -0.000002 2.195656 -0.000046 -0.000002 0.000006 23.168804 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000005 -1.376019 0.000024 0.000016 0.000006 13.487127 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000004 1.375942 -0.000008 0.000016 0.000012 13.487144 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.238197 -6.687912 -0.761861 74.814375 91.675934 123.048372 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.238182 6.687923 0.761868 74.814362 91.675981 123.048468 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000016 -2.739132 0.000044 0.000002 0.000009 26.082217 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000007 2.739147 -0.000034 -0.000013 0.000019 26.082205 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000008 -1.769489 -0.000051 -0.000006 0 8.193333 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000003 1.769405 0.000054 -0.000003 0.000005 8.193282 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" 0.025738 -6.615704 -2.43918 75.005347 104.72529 140.594869 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" -0.025738 6.615688 2.439178 75.005334 104.725372 140.594883 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000006 -2.042831 -0.000032 0.000028 -0.000002 20.461095 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000003 2.042809 0.000004 -0.000002 0.000002 20.461142 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000001 -1.593197 0.000016 0.000006 0.000005 13.890501 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000008 1.593189 0.000008 0.000006 0.000004 13.890497 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.481016 -6.082798 -3.741683 70.704131 112.957581 151.613972 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.481064 6.082825 3.741701 70.704118 112.957608 151.613986 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000039 -1.275299 -0.000082 0.000028 -0.000002 9.716667 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000016 1.275185 0.000054 -0.000003 -0.000002 9.716695 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000013 -1.304108 -0.000052 0.000003 -0.000002 22.779477 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0 1.304218 0.000031 0.000002 0.000003 22.779485 0 0 0 0 0 0

$include "c_scout_arms_bonemerge.qci"

$sequence "c_scout_arms" {
	"c_scout_arms.smd"
	fps 30
}