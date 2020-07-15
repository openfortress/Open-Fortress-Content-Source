// Created by Crowbar 0.56

$modelname "weapons/v_models/v_akimbo_pistols_mercenary.mdl"

$bodygroup "im"
{
	studio "v_akimbo_pistols_mercenary_akimbo.smd"
}
$bodygroup "so"
{
	studio "v_akimbo_pistols_mercenary_mags.smd"
}
$bodygroup "tired"
{
	studio "v_akimbo_pistols_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "muzzle" 0 0 0 rotate 0 -90 0
$attachment "eject_brass" "muzzle" 0 6.5 0 rotate -35 -180 -180

$cbox 0 0 0 0 0 0

$bbox -12.34 -33.704 -30.741 33.858 24.065 6.759

$hboxset "default"
$hbox 0 "weapon_bone" -2 -3 -3 2 7 7 ""
$hbox 0 "Gun.001" -2 -3 -3 2 7 7 ""

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346468 27.874736 -9.114041 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187881 -14.0583 -3.263427 -0.802314 -4.237367 -10.928369 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000015 -12.375366 0.00001 -0.000114 -0.00029 -0.710134 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058851 0.000008 0.000001 0.000111 0.000048 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809811 -0.499893 2.57515 -6.260777 -25.558107 -31.00449 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000011 -3.099546 -0.000008 0.000281 -0.00047 11.827565 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000011 -1.649406 0.000023 -0.00012 0.000274 -8.17023 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008194 -1.168251 1.640425 61.198837 -118.799148 -115.979427 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000042 -3.307297 -0.000002 -15.19999 22.793597 12.109809 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000027 -2.892897 -0.000008 0.000115 0.000125 39.534669 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000011 -1.789227 0.000012 0.000125 0.000409 8.963252 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108299 -1.322834 0.774767 75.179176 -147.647681 -144.610952 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000011 -3.408827 -0.000006 -6.141879 11.826789 13.018645 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000009 -2.799509 0.000011 0.000118 -0.000152 39.115599 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000001 -1.822449 0.000011 -0.000042 0.000472 14.699394 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205315 -1.375305 -0.310243 77.044145 145.984394 149.995941 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.00001 -3.388151 0.000011 0.778766 -0.721574 16.126135 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000025 -2.085274 -0.000002 0.000003 0.00092 35.56665 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.00001 -1.544361 0.000008 0.000002 0.00006 12.350793 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193985 -1.163872 -1.333127 69.133468 115.574124 124.449299 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297508 -0.000025 1.356078 -7.079916 14.347429 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000009 -1.951851 0.000008 0.000063 0.000009 28.584538 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000004 -1.231846 -0.00001 0.000067 0.00035 22.625106 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346926 -27.874624 170.885925 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187801 14.058395 3.263432 -0.802542 -4.237196 -10.928597 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000008 12.37537 0.000103 0.001495 -0.000121 -0.70967 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058847 -0.00001 0.000059 -0.00001 0.000002 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809799 0.499863 -2.575109 -6.261514 -25.558338 -31.004073 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.00001 3.099567 0.00004 0.000238 0.000044 11.827734 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000013 1.649393 -0.000027 -0.000452 -0.00019 -8.170381 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008205 1.168291 -1.640403 61.199185 -118.797741 -115.977774 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000048 3.307253 0.000004 -15.201609 22.793419 12.109802 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000007 2.892824 0.000034 0.001025 0.00086 39.534068 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000021 1.789288 -0.000029 0.000054 -0.000283 8.963859 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108318 1.322781 -0.774765 75.181307 -147.642518 -144.606007 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000013 3.408817 -0.000006 -6.142456 11.826138 13.018972 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00003 2.799555 -0.000013 0.002287 0.000352 39.115647 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000002 1.822392 -0.000012 -0.000457 0.000463 14.69951 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205299 1.375256 0.310238 77.045463 145.980501 149.992048 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000009 3.388256 -0.000008 0.77595 -0.722494 16.126113 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000018 2.085251 -0.000013 0.003836 0.000637 35.566178 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" -0.000002 1.544369 0.000011 0.000003 0.000064 12.350862 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193977 1.163813 1.33312 69.134001 115.571105 124.446034 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000011 3.29759 0.000025 1.355325 -7.080271 14.347422 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000005 1.951794 -0.000006 0.001543 0.000407 28.584523 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.231834 -0.000055 0.000055 0.000295 22.624809 0 0 0 0 0 0
$definebone "weapon_bone" "" -0.064069 0.184548 -0.023475 0.089267 0.287969 90.153191 0 0 0 0 0 0
$definebone "slide" "weapon_bone" -0.022752 5.038609 2.952832 0 0.000229 -0.001318 0 0 0 0 0 0
$definebone "hammer" "weapon_bone" 0.000101 4.557432 -1.445839 0 0.000229 -0.001261 0 0 0 0 0 0
$definebone "Clip_Empty" "weapon_bone" -0.048131 1.415376 -0.125289 0.000172 -0.000688 -0.002292 0 0 0 0 0 0
$definebone "Gun.001" "" -4.464069 0.184548 -0.023475 0.08921 0.287911 90.153191 0 0 0 0 0 0
$definebone "slide.001" "Gun.001" -0.022748 5.038609 2.952832 0.000057 0.000172 -0.001318 0 0 0 0 0 0
$definebone "hammer.001" "Gun.001" 0.000105 4.557432 -1.445839 0.000057 0.000458 -0.001261 0 0 0 0 0 0
$definebone "Clip_Empty.001" "Gun.001" -0.048131 1.415376 -0.125289 0.000229 -0.000802 -0.002292 0 0 0 0 0 0
$definebone "muzzle" "" -0.072814 5.690045 8.161114 0.287911 -0.089038 0.151318 0 0 0 0 0 0
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


$sequence "draw" {
	"v_akimbo_pistols_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 1 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_akimbo_pistols_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire_both" {
	"v_akimbo_pistols_mercenary_anims\fire_both.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.01
	fadeout 0.01
	node "raised"
	snap
	loop
	fps 30
}

$sequence "fire_left" {
	"v_akimbo_pistols_mercenary_anims\fire_left.smd"
	{ event 6002 0 "3" }
	fadein 0.01
	fadeout 0.01
	node "raised"
	snap
	fps 30
}

$sequence "fire_right" {
	"v_akimbo_pistols_mercenary_anims\fire_right.smd"
	activity "ACT_VM_SECONDARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.01
	fadeout 0.01
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_akimbo_pistols_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 16 "Weapon_Akimbo_Pistols.ClipOut" }
	{ event 5004 64 "Weapon_Akimbo_Pistols.ClipIn" }
	{ event 5004 17 "Weapon_Akimbo_Pistols.ClipOut" }
	{ event 5004 90 "Weapon_Akimbo_Pistols.ClipIn" }
	{ event 5004 103 "Weapon_Akimbo_Pistols.SlideForward" }
	{ event 5004 107 "Weapon_Akimbo_Pistols.SlideForward" }
	fadein 0.1
	fadeout 0.2
	fps 35
}
