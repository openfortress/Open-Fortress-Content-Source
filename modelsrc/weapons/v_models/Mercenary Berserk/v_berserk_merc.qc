// Created by Crowbar 0.56

$modelname "weapons\v_models\v_berserk_merc.mdl"

$model "rip_and_tear" "v_berserk_merc_v_berserk_arms.smd"



$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\items\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -4.695 -23.184 -19.085 67.236 20.431 0.418

$hboxset "default"
$hbox 0 "bip_hand_L" -6 -6.5 -3 2 1.5 5 ""
$hbox 0 "bip_hand_R" -2 -1.5 -5 6 6.5 3 ""

$definebone "root" "" 0 3.788849 65.927551 0 0 89.999983 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.874859 -9.113983 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187893 -14.058315 -3.263422 -0.80237 -4.237942 -10.928139 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000076 -12.375345 0.000019 -0.000058 0.000055 -0.710413 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058861 0.000008 -0.000001 -0.000003 -0.000001 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499903 2.575143 -6.26065 -25.558385 -31.004469 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000006 -3.099531 -0.000025 0.000055 0.000001 11.827218 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000006 -1.649399 0.000006 0.000056 -0.000288 -8.16964 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008186 -1.168261 1.64041 61.19853 -118.798738 -115.979154 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000002 -3.307289 0.000013 -15.200286 22.794546 12.109577 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000007 -2.892874 -0.000025 0.00017 -0.000001 39.535065 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.789223 0.000006 -0.000003 0.000457 8.962719 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.32284 0.774758 75.179797 -147.65025 -144.61352 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000008 -3.408806 0.000011 -6.141822 11.826308 13.018286 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.79948 0.000006 0.000058 0.000174 39.115773 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000005 -1.822449 0.000004 0 -0.000056 14.700041 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205315 -1.375322 -0.310262 77.044145 145.98352 149.994958 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000007 -3.388144 0.000031 0.778652 -0.720952 16.126186 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000009 -2.08526 0.000013 0.000003 0.000229 35.566581 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000005 -1.544373 0.000011 0.000003 0.000114 12.350393 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163866 -1.333138 69.133078 115.573495 124.448834 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.000002 -3.297522 -0.000019 1.355966 -7.07981 14.347033 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.951855 -0.000002 0.000119 -0.000057 28.584868 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000001 -1.231853 0.000002 0.000004 0.000113 22.624507 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346869 -27.874684 170.886034 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187794 14.058411 3.263434 -0.802771 -4.237367 -10.928422 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000042 12.375397 0.000011 0.001146 0.000058 -0.710179 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058855 -0.000012 0.000001 0 0.000002 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 4.013504 1.023752 0.572139 9.774773 -21.896496 -161.570776 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809753 0.499901 -2.575129 -6.261168 -25.558384 -31.004237 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000002 3.09956 0.000042 0.000054 -0.000055 11.82722 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000006 1.649414 -0.000004 -0.000864 -0.000225 -8.169576 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008186 1.168333 -1.64039 61.198776 -118.797987 -115.978348 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000017 3.307262 0.000019 -15.19948 22.794838 12.109582 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000029 2.892817 0.000051 -0.000744 0.000281 39.534778 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000031 1.789268 -0.000031 0.000112 0.000166 8.963068 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108299 1.322826 -0.774755 75.180426 -147.648474 -144.611758 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000008 3.408823 -0.000004 -6.143025 11.825903 13.018921 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000009 2.799547 -0.000013 0.001317 -0.000061 39.115199 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000017 1.822403 0.000002 0.000341 -0.000116 14.700034 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205296 1.375286 0.310246 77.044835 145.981252 149.992677 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000008 3.38822 -0.000008 0.776872 -0.721699 16.126188 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000011 2.08526 -0.000011 0.002691 0.0004 35.566185 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000011 1.54438 0.000017 -0.000346 0.000059 12.350857 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193974 1.163834 1.333126 69.133208 115.572758 124.447988 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.00001 3.297588 0.000034 1.3543 -7.080158 14.34761 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951797 -0.000008 0.001775 -0.000003 28.584294 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000011 1.231861 -0.00005 -0.000117 0.000171 22.624442 0 0 0 0 0 0

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


$sectionframes 30 149

$sequence "swing_left" {
	"anims\swing_left.smd"
	activity "ACT_VM_HITLEFT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}
$sequence "swing_left_alt" {
	"anims\swing_left_alt.smd"
	activity "ACT_VM_HITLEFT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "swing_right" {
	"anims\swing_right.smd"
	activity "ACT_VM_HITRIGHT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "swing_right_alt" {
	"anims\swing_right_alt.smd"
	activity "ACT_VM_HITRIGHT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "swing_crit" {
	"anims\swing_crit.smd"
	activity "ACT_VM_SWINGHARD" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 60
}

$sequence "idle" {
	"anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}

$sequence "draw" {
	"anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Fist.Draw" }
	{ event 5004 12 "Weapon_Fist.HitHand" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 60
}
