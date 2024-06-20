$modelname "weapons/v_models/v_pistol_mercenary.mdl"

$model "pistol" "v_pistol_mercenary_pistol.smd"

$bodygroup "empty_mag"
{
	studio "v_pistol_mercenary_mag.smd"
}
$bodygroup "full_mag"
{
	studio "v_pistol_mercenary_mag_bullet.smd"
}
$bodygroup "illumpos"
{
	studio "v_pistol_mercenary_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_pistol\"
$cdmaterials ""

$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 1.01 5.19 3.46 rotate 0 44.89 -180

$cbox 0 0 0 0 0 0

$bbox -0.021 -26.61 -40.826 53.087 20.711 17.142

$hboxset "default"
$hbox 0 "weapon_bone"	    -1.50   -4.00   -4.00     1.50    8.00    8.00

$definebone "root" "" 0 60.106396 -4.292783 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.092304 0 0 -0.34641 27.875139 -9.114151 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.000031 -11.937279 0.000013 0 0.000101 -12.615499 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000019 -9.999985 0.00001 0.000006 -0.000369 -0.710313 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000008 -11.592709 0.013144 0.000006 -0.000311 -0.710139 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499901 2.57515 -6.26072 -25.558382 -31.0045 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000006 -3.099537 -0.000017 -0.000061 0.000119 11.827131 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000013 -1.649416 -0.000002 -0.000056 0.000061 -8.168742 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.006287 -4.149235 3.072785 85.450195 -53.737818 -36.782942 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000006 -2.892887 -0.000034 0.000113 0.000137 39.534993 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000001 -1.78923 -0.00001 0.000012 0.00019 8.963353 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" -0.233414 -4.69173 1.279696 83.351797 148.220337 165.688942 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.00001 -2.799524 0.000008 0.000061 -0.000389 39.115261 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000006 -1.822449 0.000001 0.000007 0.000118 14.699897 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.478088 -4.73105 -0.690122 76.692267 150.389086 170.416512 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000014 -2.085262 0.00001 0.000058 -0.000516 35.566544 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.544373 0.000003 -0.000059 0.000332 12.350144 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.779762 -4.261063 -2.301725 73.425947 133.799403 156.168833 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000009 -1.951857 0 -0.000002 -0.000112 28.584203 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000007 -1.231831 -0.000006 -0.000002 0.000349 22.624722 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.0923 0.000004 0.000003 0.345952 -27.875088 170.885992 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000046 11.937279 -0.000037 -0.000458 0.000056 -12.615613 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" -0.000015 11.59272 -0.013124 0.000113 -0.000306 -0.710136 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809795 0.499853 -2.575164 -6.261167 -25.558016 -31.00453 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000057 3.099501 0.000021 0.000162 0.000032 11.827249 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0 1.649418 0.000011 0.000396 0.000035 -8.168805 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.006321 4.149221 -3.072783 85.451049 -53.744641 -36.789854 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000006 2.892885 0.000063 -0.001089 0.000035 39.534965 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000021 1.789181 -0.000059 -0.000325 0.000256 8.963486 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" 0.233383 4.691683 -1.27971 83.352316 148.2202 165.688874 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000004 2.799545 -0.000032 0.000246 -0.000204 39.115332 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000006 1.822414 0.000025 0.000259 0.000072 14.699863 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.478073 4.731018 0.690104 76.693018 150.388294 170.41572 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000006 2.085289 -0.000011 0.000704 -0.000509 35.566547 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000016 1.544296 0.000004 0.000073 0.000227 12.350149 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.779716 4.261017 2.301722 73.427696 133.796876 156.166237 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" -0.00001 1.9519 -0.000048 0.002651 0.000348 28.584321 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000012 1.231842 0.000061 -0.000843 0.000346 22.624734 0 0 0 0 0 0
$definebone "Clip" "bip_hand_R" 36.206341 19.17417 17.784456 10.266813 -25.959696 -159.93892 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.946533 23.237083 11.639693 10.267042 -25.960323 -159.938073 0 0 0 0 0 0
$definebone "slide" "weapon_bone" -0.025855 5.725633 3.355589 0.000002 0.000122 -0.000232 0 0 0 0 0 0
$definebone "hammer" "weapon_bone" 0.000118 5.178932 -1.64291 0.000002 0.000122 -0.000232 0 0 0 0 0 0
$definebone "ejector" "weapon_bone" -0.0158 5.720336 1.355623 0.000002 0.000122 -0.000232 0 0 0 0 0 0
$definebone "Clip_Empty" "bip_hand_R" 32.235306 21.123669 18.580147 10.266471 -25.95908 -159.938551 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000015 11.59272 -0.013124 0.000054 -0.000292 -0.71013 0 0 0 0 0 0
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
	fadeout 0
	snap
	fps 30
}
