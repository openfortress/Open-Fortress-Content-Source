// Created by Crowbar 0.68

$modelname "weapons/v_models/v_pistol_mercenary.mdl"

$bodygroup "swoo"
{
	studio "v_pistol_mercenary_pistol.smd"
}
$bodygroup "was"
{
	studio "v_pistol_mercenary_mag.smd"
}
$bodygroup "here"
{
	studio "v_pistol_mercenary_mag_bullet.smd"
}
$bodygroup "epic_style"
{
	studio "v_pistol_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 5.19 3.46 rotate 0 44.89 180

$cbox 0 0 0 0 0 0

$bbox -0.021 -26.61 -40.826 53.087 20.711 17.142

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "root" "" 0 60.106396 -4.292783 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.092304 0 0 -0.34641 27.875139 -9.114151 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000031 -11.937267 0.000011 0 0.000106 -12.615498 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000008 -9.999996 0.000011 0.000004 -0.000359 -0.710305 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" -0.000004 -11.592724 0.013144 0.000004 -0.000301 -0.710136 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499901 2.57515 -6.260716 -25.558382 -31.004493 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000006 -3.099535 -0.000021 -0.000061 0.000114 11.827151 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.00001 -1.649414 -0.000002 -0.000058 0.000059 -8.168728 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.00629 -4.149242 3.072783 85.450195 -53.737937 -36.782867 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000005 -2.892887 -0.000034 0.000113 0.000129 39.534996 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000002 -1.789227 -0.000008 0.000008 0.000184 8.963337 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.233406 -4.691734 1.279696 83.351797 148.220378 165.688915 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.00001 -2.799524 0.00001 0.000062 -0.000394 39.115257 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000006 -1.822445 0 0.000006 0.000115 14.699892 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.478085 -4.731052 -0.690122 76.692267 150.389086 170.416498 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000014 -2.085262 0.000011 0.00006 -0.000517 35.566533 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544376 0.000002 -0.000057 0.000336 12.350135 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.779755 -4.261063 -2.301729 73.425947 133.799403 156.168806 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000006 -1.951859 0 -0.000001 -0.000114 28.584205 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000007 -1.231831 -0.000005 -0.000003 0.000346 22.624705 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.0923 0.000004 0.000003 0.345952 -27.875088 170.885992 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000046 11.937279 -0.000034 -0.000458 0.000056 -12.615613 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000008 11.59272 -0.013125 0.000114 -0.000297 -0.710131 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809795 0.499855 -2.575167 -6.261167 -25.55802 -31.00453 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000059 3.099503 0.000025 0.000164 0.000022 11.827256 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.64942 0.000011 0.000396 0.000023 -8.168792 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.006321 4.149227 -3.072783 85.451049 -53.744761 -36.789796 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000003 2.892887 0.000059 -0.001091 0.00002 39.534962 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000021 1.789177 -0.000062 -0.000334 0.000246 8.963466 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.233379 4.691685 -1.279713 83.352316 148.220214 165.688792 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000006 2.799549 -0.000032 0.00024 -0.000212 39.115322 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000009 1.822414 0.000028 0.000251 0.000067 14.699844 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.478069 4.731024 0.690105 76.693018 150.388294 170.41572 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000006 2.085291 -0.000011 0.000698 -0.00051 35.566526 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000018 1.544292 0.000005 0.000068 0.00023 12.350135 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.779713 4.261028 2.301722 73.427696 133.796863 156.166237 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.00001 1.951897 -0.000048 0.002644 0.000346 28.584313 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000012 1.231838 0.000061 -0.000848 0.000346 22.62472 0 0 0 0 0 0
$definebone "Clip" "bip_hand_R" 36.206337 19.174191 17.784464 10.266819 -25.959712 -159.938906 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.946526 23.237106 11.639701 10.267051 -25.960338 -159.938073 0 0 0 0 0 0
$definebone "slide" "weapon_bone" -0.025853 5.725635 3.35559 0.000001 0.000137 -0.000229 0 0 0 0 0 0
$definebone "hammer" "weapon_bone" 0.000118 5.178933 -1.64291 0.000001 0.000137 -0.000229 0 0 0 0 0 0
$definebone "ejector" "weapon_bone" -0.015797 5.720338 1.355623 0.000001 0.000137 -0.000229 0 0 0 0 0 0
$definebone "Clip_Empty" "bip_hand_R" 32.235302 21.123692 18.580154 10.266479 -25.959097 -159.938551 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000008 11.59272 -0.013125 0.000055 -0.000287 -0.710126 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0

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
	{ event 5004 16 "Weapon_Pistol.SlideForward" }
	{ event 5004 12 "Weapon_Pistol.SlideBack" }
	{ event 5004 0 "Weapon_Pistol.Draw" }
	{ event 5004 25 "Weapon_Pistol.Draw2" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_pistol_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
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

$sequence "reload" {
	"v_pistol_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 1 "Weapon_Pistol.Draw" }
	{ event 5004 15 "Weapon_Pistol.ClipOut" }
	{ event 5004 35 "Weapon_Pistol.ClipIn" }
	{ event 5004 47 "Weapon_Pistol.SlideForward" }
	fadein 0.2
	fadeout 0.0
	snap
	fps 30
}
