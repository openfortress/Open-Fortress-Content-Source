// Created by Crowbar 0.58

$modelname "weapons\v_models\v_crowbar_mercenary.mdl"

$bodygroup "crowbar"
{
	studio "v_crowbar_mercenary_models/c_crowbar.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_crowbar_mercenary_models/illumpos.smd"
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
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.874738 -9.11404 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.18787 -14.058319 -3.26343 -0.802313 -4.237368 -10.928368 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000019 -12.375351 -0.00002 -0.000057 -0.00006 -0.710066 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000011 -1.058863 0.000006 0.000058 -0.000345 -0.000115 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499908 2.575146 -6.260597 -25.558105 -31.00435 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.00001 -3.099543 -0.000027 0.000231 -0.000403 11.827455 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000006 -1.649405 0.000004 -0.000114 0.000285 -8.169974 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168266 1.640414 61.198748 -118.799107 -115.979359 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000015 -3.307282 0.000015 -15.20028 22.794498 12.109803 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000002 -2.892874 0.000008 0.000003 -0.000055 39.534542 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000004 -1.789227 -0.000002 0.000003 0.00023 8.963166 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108315 -1.32284 0.774754 75.179544 -147.648856 -144.612414 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000019 -3.408819 -0.000004 -6.14188 11.82671 13.018686 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000009 -2.799515 0.00001 0.000056 -0.000002 39.115425 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000004 -1.822453 0 -0.00006 0.000171 14.699684 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.37532 -0.31026 77.044132 145.983438 149.994644 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000002 -3.388145 0.000004 0.778707 -0.720839 16.126239 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000007 -2.08527 0 -0.000058 0.000286 35.566411 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000008 -1.544369 0.000001 -0.000001 0.000058 12.350911 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.194 -1.163879 -1.333139 69.133188 115.573359 124.448534 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0.000002 -3.297533 -0.000019 1.356076 -7.079812 14.347374 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000003 -1.951851 0.000004 -0.000002 -0.000001 28.584347 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.231831 0 0.000055 0 22.625241 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -14.36484 -85.54039 -17.098816 3.99363 -11.461105 -168.641757 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187853 14.058388 3.26347 -0.804032 -4.236851 -10.928596 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000022 12.375385 0.000114 0.002636 -0.000058 -0.709894 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000048 1.058853 0 8.50172 1.323015 0.195781 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 2.008103 4.305275 -1.243523 5.109466 -6.618925 -79.891173 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809727 0.499893 -2.575161 -6.26025 -25.558271 -31.004404 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000015 3.099556 0.000031 0.000687 0.000575 45.055623 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649403 -0.00001 -0.001546 -0.000225 49.736178 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.00816 1.168324 -1.640404 61.198359 -118.800254 -115.980848 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000027 3.307255 0.000021 -16.059206 34.23171 36.532534 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000029 2.892817 0.000034 0.001319 0.000459 76.743692 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000025 1.78928 -0.000015 -0.000629 0.000171 59.813695 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108288 1.322819 -0.774767 75.181047 -147.644854 -144.608124 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000004 3.408817 -0.000019 -5.85156 11.536276 54.391228 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000025 2.799558 0 0.000344 0 81.292632 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000008 1.822388 0.00001 0.000171 0.000401 59.010697 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205293 1.375267 0.310234 77.044815 145.981266 149.992595 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000015 3.388229 -0.000004 8.42357 -4.773024 60.800678 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000013 2.085251 -0.000027 0.002178 0.000459 63.653382 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.142029 1.967564 -0.153893 23.098107 26.613086 80.337738 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163834 1.33312 69.132389 115.575954 124.450993 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" 0.755084 3.186695 0.384579 6.645852 -11.543097 56.885545 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000017 1.951799 -0.000015 0.000515 -0.000285 65.514116 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000013 1.231857 -0.000038 19.066658 19.982016 71.673745 0 0 0 0 0 0

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
	"v_crowbar_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"v_crowbar_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Bat.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "swingMiss_a" {
	"v_crowbar_mercenary_anims\swingMiss_a.smd"
	activity "ACT_VM_HITCENTER" 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "swingMiss_b" {
	"v_crowbar_mercenary_anims\swingMiss_b.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "swingMiss_c" {
	"v_crowbar_mercenary_anims\swingMiss_c.smd"
	activity "ACT_VM_HITCENTER" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "swingMiss_crit" {
	"v_crowbar_mercenary_anims\swingMiss_crit.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}
