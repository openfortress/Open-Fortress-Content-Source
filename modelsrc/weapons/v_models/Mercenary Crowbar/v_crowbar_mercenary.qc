// Created by Crowbar 0.56

$modelname "weapons\v_models\v_crowbar_mercenary.mdl"

$bodygroup "crowbar"
{
	studio "v_crowbar_mercenary_c_crowbar.smd"
}
$bodygroup "illumpos"
{
	studio "v_crowbar_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\props_facemovie\medic_crowbar\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "medic_crowbar"        }
	{ "medic_crowbar_blue"   }
	{ "medic_crowbar_purple" }
}

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -65.928 -22.734 -33.421 62.329 23.094 5.571

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.874736 -9.114041 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.18787 -14.058323 -3.26343 -0.802314 -4.237367 -10.928368 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000019 -12.375347 -0.000019 -0.000057 -0.000058 -0.710066 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058863 0.000008 0.000058 -0.000343 -0.000116 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499903 2.575147 -6.260596 -25.558104 -31.00435 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000011 -3.099543 -0.000029 0.000231 -0.0004 11.827461 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000008 -1.649405 0.000008 -0.000114 0.000287 -8.169968 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168266 1.640414 61.198748 -118.799107 -115.979359 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000017 -3.307281 0.000013 -15.20028 22.794498 12.109804 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000001 -2.892876 0.00001 0 -0.000053 39.534542 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000003 -1.78923 0.000001 0.000001 0.000231 8.963166 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108315 -1.322838 0.774754 75.179551 -147.64887 -144.612414 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000015 -3.408817 -0.000006 -6.141882 11.826713 13.018691 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.00001 -2.799515 0.000011 0.000054 -0.000002 39.115428 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000004 -1.822453 -0.000001 -0.000064 0.000172 14.699686 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.375319 -0.31026 77.044138 145.983424 149.994644 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000001 -3.388145 0.000008 0.778706 -0.720841 16.126244 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000008 -2.085268 -0.000002 -0.000059 0.000287 35.566421 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000009 -1.544369 0.000004 -0.000001 0.00006 12.350913 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.194 -1.163879 -1.333139 69.133188 115.573345 124.448534 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0.000001 -3.297531 -0.000019 1.356072 -7.079813 14.347378 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000002 -1.951855 0.000002 -0.000005 0 28.584345 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.231834 0 0.000052 0.000002 22.625232 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -14.36484 -85.54039 -17.098816 3.99363 -11.461106 -168.641757 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187854 14.058388 3.26347 -0.804033 -4.236851 -10.928595 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000024 12.375381 0.000114 0.002636 -0.000058 -0.709893 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.00005 1.058853 0.000002 8.501719 1.323015 0.195782 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 2.008103 4.305275 -1.243523 5.109466 -6.618926 -79.891173 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809727 0.499893 -2.575161 -6.26025 -25.558266 -31.004397 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000015 3.099558 0.000034 0.000685 0.000577 45.05562 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649403 -0.00001 -0.001547 -0.000222 49.736185 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008162 1.168324 -1.640404 61.198359 -118.800254 -115.980848 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000027 3.307255 0.000021 -16.059208 34.23171 36.532531 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000027 2.892817 0.000034 0.001316 0.000456 76.743706 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000025 1.789284 -0.000019 -0.000633 0.000174 59.813688 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108288 1.322823 -0.774767 75.181054 -147.644854 -144.608124 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000006 3.408817 -0.000019 -5.851559 11.536277 54.391232 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000025 2.799556 -0.000004 0.000344 0 81.292639 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000006 1.822388 0.00001 0.000171 0.000401 59.010697 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205293 1.375267 0.310234 77.044815 145.981266 149.992595 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000015 3.388226 -0.000004 8.42357 -4.773024 60.800678 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000015 2.085252 -0.000027 0.002177 0.000458 63.653388 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.142031 1.96756 -0.153896 23.0981 26.613081 80.337738 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163834 1.333118 69.132395 115.575954 124.450993 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" 0.755084 3.186695 0.384581 6.645852 -11.543096 56.885549 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000016 1.951797 -0.000015 0.000513 -0.000283 65.514116 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000012 1.231853 -0.000038 19.066653 19.982011 71.673745 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_R"
$bonemerge "weapon_bone"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"


$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Bat.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "swingMiss_a" {
	"anims\swinga.smd"
	activity "ACT_VM_HITCENTER" 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "swingMiss_b" {
	"anims\swingb.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "swingMiss_c" {
	"anims\swingb.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "swingMiss_crit" {
	"anims\swingc.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}
