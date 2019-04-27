$modelname "weapons/c_models/c_civilian_arms.mdl"

$model "arms" "c_civilian_arms.smd"

$body "illumpos" "../illumpos.smd"
// makes lighting consistent between arms and weapons
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\player\civilian\"
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

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346421 -27.875274 170.88587 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.058315 -3.26346 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.18795 14.05838 3.263466 -0.802339 -4.237949 -10.928148 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0 -12.375359 0.000002 0.000002 -0.000002 -0.710515 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000011 12.375389 0.000009 0 0.000002 -0.710523 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000008 -1.058861 -0.000003 0 -0.000002 0.000005 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000057 1.058849 -0.000004 0 0.000005 0.000009 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -2.036926 -1.84973 0.156127 -10.441173 169.872052 3.118211 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 2.03688 1.849712 -0.156134 10.441624 -10.127989 -3.118025 0 0 0 0 0 0
$definebone "vm_weapon_bone" "bip_hand_R" 5.058613 0.60368 0.378056 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 5.315786 1.151814 0.576564 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 5.702507 1.97607 0.875071 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_3" "bip_hand_R" 6.039692 2.69474 1.135339 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_4" "bip_hand_R" 6.464046 3.599216 1.462897 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_5" "bip_hand_R" 6.940704 4.615168 1.830827 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_6" "bip_hand_R" 7.454599 5.710472 2.227496 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_7" "bip_hand_R" 8.025963 6.928272 2.668527 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "vm_weapon_bone_L" "bip_hand_L" -3.807613 -3.641075 -1.568387 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_1" "bip_hand_L" -4.177807 -4.430103 -1.854137 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$definebone "vm_weapon_bone_L_2" "bip_hand_L" -4.658195 -5.454004 -2.224946 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013519 1.023731 0.572107 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "weapon_bone_1" "bip_hand_R" 4.814575 2.731096 1.190435 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "weapon_bone_2" "bip_hand_R" 5.711926 4.643698 1.88309 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "weapon_bone_3" "bip_hand_R" 6.465527 6.249928 2.464792 9.77531 -21.896738 -161.570694 0 0 0 0 0 0
$definebone "weapon_bone_L" "bip_hand_L" -2.582489 -4.133493 -1.795871 9.7753 -21.896726 18.429287 0 0 0 0 0 0
$definebone "handle_bone" "weapon_bone" 3.907276 9.50758 9.639423 -6.826707 123.790404 -169.927854 0 0 0 0 0 0
$definebone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499918 2.575142 -6.260517 -25.558539 -31.003735 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499899 -2.575143 -6.260507 -25.558532 -31.003711 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000002 -3.099541 -0.000004 0.000005 -0.000001 11.826812 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099564 0.000017 0.000015 -0.000005 11.826836 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000006 -1.649408 0.000002 0.000008 -0.000009 -8.169211 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649406 0.000002 0.00001 -0.000003 -8.169201 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168278 1.640409 61.198851 -118.799216 -115.979413 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168316 -1.640392 61.198851 -118.799189 -115.979413 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000002 -3.307287 0 -15.200354 22.794737 12.109838 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000013 3.307262 0.000013 -15.200337 22.794725 12.109829 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000001 -2.892874 -0.000002 0 0.000007 39.534542 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000034 2.89282 0.000027 -0.000001 -0.000009 39.534556 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000002 -1.789223 0.000002 -0.000003 -0.000001 8.963477 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000029 1.789276 -0.000039 -0.000009 -0.00001 8.96346 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108315 -1.322845 0.774749 75.179995 -147.650892 -144.614149 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322811 -0.774755 75.179995 -147.650878 -144.614176 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000002 -3.408819 0 -6.141877 11.826461 13.018645 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000008 3.408815 0.000011 -6.141866 11.826455 13.018647 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.799505 0.000002 0.000006 -0.000007 39.115343 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000012 2.799559 0 0.000001 -0.000008 39.115336 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000003 -1.822453 -0.000001 0 -0.000003 14.700046 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000014 1.822392 0.000011 -0.000003 -0.000005 14.700041 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.37532 -0.310266 77.044043 145.98244 149.993851 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375259 0.310248 77.04405 145.982386 149.993729 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0 -3.388151 0.000004 0.7786 -0.720688 16.12608 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000021 3.388241 0.000004 0.778618 -0.7207 16.126092 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000002 -2.085274 -0.000002 -0.000004 -0.000002 35.566711 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000003 2.085255 0.000004 -0.000003 -0.000007 35.56667 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.544365 0.000002 0.000003 -0.000002 12.35065 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544365 0.000019 0 -0.000007 12.350672 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193996 -1.163872 -1.333147 69.132915 115.572758 124.448343 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193981 1.163816 1.333129 69.132894 115.572758 124.448315 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297543 -0.000002 1.356044 -7.079815 14.347256 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000006 3.297586 0.000021 1.356039 -7.079822 14.34725 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0 -1.951851 0.000002 0.000005 0.000004 28.58441 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 1.951797 0 0.000002 0.000003 28.584449 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.231838 0.000001 0.000002 0.000003 22.624833 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.231865 -0.000045 -0.000003 0.000003 22.624809 0 0 0 0 0 0

$include "c_civilian_arms_bonemerge.qci"

$sequence "c_civilian_arms" {
	"c_civilian_arms.smd"
	fps 30
}