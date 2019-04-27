// Created by Crowbar 0.58

$modelname "weapons/v_models/v_pistol_mercenary.mdl"

$bodygroup "v_pistol"
{
	studio "v_pistol_mercenary_models/v_pistol.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_pistol_mercenary_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 5.19 3.46 rotate 0 44.89 180

$cbox 0 0 0 0 0 0

$bbox 8.412 -18.453 -37.08 44.653 20.711 9.201

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 60.106396 -4.292783 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.092304 0 0 -0.34641 27.875139 -9.114153 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000015 -11.93726 0.000009 0 0.000113 -12.615498 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000004 -10.000008 0.000008 0.000001 -0.000347 -0.710296 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" -0.000008 -11.59273 0.01314 0.000001 -0.000287 -0.710124 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809811 -0.499907 2.575147 -6.260709 -25.558385 -31.004469 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000006 -3.099539 -0.000019 -0.000058 0.000115 11.827167 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000004 -1.649412 -0.000002 -0.000058 0.000058 -8.168713 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.006298 -4.14925 3.072783 85.450182 -53.738044 -36.782796 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000006 -2.892885 -0.000025 0.000114 0.000116 39.534996 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000001 -1.789223 -0.000006 0 0.000174 8.963301 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.233395 -4.691738 1.279695 83.351811 148.22042 165.688834 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000008 -2.799519 0.00001 0.000058 -0.000403 39.115254 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000003 -1.822441 -0.000001 -0.000001 0.000111 14.69987 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.478069 -4.73106 -0.69012 76.692267 150.389101 170.416472 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000017 -2.08526 0.000013 0.000057 -0.000517 35.566523 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000001 -1.544373 0.000001 -0.000059 0.000342 12.350107 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.779751 -4.261074 -2.301728 73.425955 133.799432 156.168793 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000005 -1.951862 0.000004 0 -0.000118 28.584181 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000007 -1.231838 -0.000001 -0.000001 0.000341 22.624679 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.0923 0.000004 0.000003 0.345952 -27.875087 170.885993 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000046 11.937286 -0.000031 -0.000458 0.000056 -12.615614 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 0.000004 11.592724 -0.013124 0.000115 -0.000287 -0.710125 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809795 0.499855 -2.575166 -6.261167 -25.558037 -31.004527 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000061 3.099508 0.000025 0.000168 0.000005 11.827271 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000002 1.64942 0.000008 0.000398 0.000006 -8.16879 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.006325 4.149233 -3.072787 85.451049 -53.744949 -36.789704 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0 2.892893 0.000057 -0.001088 0.000002 39.534955 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000022 1.789181 -0.000061 -0.000342 0.000231 8.963421 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.233372 4.691689 -1.279712 83.35233 148.220297 165.688684 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000006 2.799553 -0.000036 0.00023 -0.000226 39.115319 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000009 1.822422 0.000025 0.000233 0.00006 14.699817 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.478069 4.731028 0.69011 76.693019 150.388295 170.415694 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000005 2.085285 -0.00001 0.000688 -0.000516 35.566527 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.00002 1.544292 0.000007 0.000057 0.00023 12.350109 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.779705 4.261038 2.301723 73.427724 133.796864 156.166225 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.000009 1.95191 -0.000051 0.002636 0.000344 28.584299 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000014 1.231831 0.000062 -0.000858 0.000344 22.624681 0 0 0 0 0 0
$definebone "Clip" "bip_hand_R" 36.206329 19.174221 17.784481 10.266831 -25.959743 -159.938894 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.946522 23.237133 11.639716 10.26706 -25.960368 -159.938074 0 0 0 0 0 0
$definebone "slide" "weapon_bone" -0.025849 5.725642 3.35559 -0.000001 0.000167 -0.000229 0 0 0 0 0 0
$definebone "hammer" "weapon_bone" 0.000122 5.178936 -1.64291 -0.000001 0.000167 -0.000229 0 0 0 0 0 0
$definebone "ejector" "weapon_bone" -0.015793 5.720344 1.355623 -0.000001 0.000167 -0.000229 0 0 0 0 0 0
$definebone "Clip_Empty" "bip_hand_R" 32.235294 21.123722 18.580173 10.266487 -25.959109 -159.938552 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000004 11.592724 -0.013124 0.000058 -0.000285 -0.710125 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_wrist_L"
$bonemerge "bip_hand_L"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_2_L"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_R"
$bonemerge "bip_wrist_R"


$sequence "draw" {
	"v_pistol_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 20 "Weapon_Pistol.SlideForward" }
	{ event 5004 14 "Weapon_Pistol.SlideBack" }
	{ event 5004 13 "Weapon_Pistol.Draw" }
	{ event 5004 20 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_pistol_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	node "raised"
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"v_pistol_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire_crit" {
	"v_pistol_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	{ event 6002 0 "3" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}


$sequence "reload" {
	"v_pistol_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 16 "Weapon_Pistol.ClipOut" }
	{ event 5004 38 "Weapon_Pistol.ClipIn" }
	{ event 5004 46 "Weapon_Pistol.SlideForward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
