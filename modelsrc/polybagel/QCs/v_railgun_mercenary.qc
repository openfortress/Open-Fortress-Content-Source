// Created by Crowbar 0.58

$modelname "weapons\v_models\v_railgun_mercenary.mdl"

$bodygroup "dexsniperrifle"
{
	studio "v_railgun_mercenary_models/c_dex_sniperrifle.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_railgun_mercenary_models/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_sniperrifle\"
$cdmaterials "models\weapons\c_items\"
$cdmaterials "models\weapons\c_items\c_dex_sniperrifle\"
$cdmaterials ""

$texturegroup "skinfamilies"
{
	{ "c_dex_sniperrifle01"        }
	{ "c_dex_sniperrifle01"        }
	{ "c_dex_sniperrifle01_custom" }
}

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.77 45.82 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -3.623 -29.108 -64.755 73.402 7.103 5.772

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 70.500832 -4.842813 0 0 -170.2614 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 3.712229 0.237968 -0.699373 -10.749491 -69.923598 -177.151326 0 0 0 0 0 0
$definebone "bip_upperArm_L" "bip_collar_L" -0.000061 -5.595213 -0.000013 -4.410686 -45.354424 0.277426 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -0.000057 -12.121803 0.000004 0 -0.000348 -22.817185 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000015 -14.193306 0.000015 0.000116 -0.00012 -0.000119 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.859829 -2.648411 2.207262 4.14959 -20.655133 -13.18823 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000004 -2.050003 0.000025 -0.000114 0.000228 6.310095 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000006 -1.291397 -0.000002 0 -0.000002 -4.34331 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_hand_L" 0.237583 -5.361664 1.505615 85.664179 47.277176 68.423299 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000008 -2.789356 0.000015 -0.000114 -0.00017 40.259966 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000003 -1.804703 0.000008 0 0.000174 10.685666 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_hand_L" 0.179256 -5.739487 -0.211242 76.379663 123.302551 145.769011 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000003 -2.81028 -0.000002 0 0.000063 32.54412 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000006 -2.500313 0.000013 0.000003 -0.000224 21.736877 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_hand_L" -0.394405 -5.352396 -1.896445 75.230942 130.661329 153.536807 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000007 -2.377285 -0.000004 0.000058 0.000232 34.597941 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000004 -2.165981 0.000012 0.000001 -0.000112 24.978728 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_hand_L" -0.228062 -4.503593 -3.220804 71.565152 104.544618 131.976004 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -2.339802 -0.000013 0 0.000172 30.524901 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.654034 0.00001 0 -0.000114 16.553151 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -3.71223 0.237946 -0.699373 10.749663 69.923598 2.848632 0 0 0 0 0 0
$definebone "bip_upperArm_R" "bip_collar_R" 0.000076 5.595215 -0.000003 -4.410859 -45.354478 0.277427 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 0.000069 12.121773 0.000007 0.000401 -0.000114 -22.817185 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_lowerArm_R" 0.000111 14.193346 0.000007 -0.00086 -0.000285 -0.000003 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.859776 2.64834 -2.207322 4.150392 -20.655187 -13.18972 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.00001 2.049992 0.000015 -0.000918 -0.000402 6.311068 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000027 1.291435 0.000023 0.001889 0.0004 -4.343138 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_hand_R" -0.237648 5.361635 -1.505635 85.66521 47.303845 68.449124 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000014 2.789345 0.000032 -0.001374 -0.000055 40.260424 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000008 1.804718 0.000005 -0.000341 0.000231 10.686129 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_hand_R" -0.179272 5.739403 0.211204 76.378803 123.307196 145.773737 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000009 2.810356 -0.000015 -0.001031 -0.000055 32.544117 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000003 2.500301 0.000016 0.000347 -0.000055 21.736871 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_hand_R" 0.39439 5.352371 1.896408 75.232834 130.658706 153.534977 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000008 2.377289 0.000015 0.002636 0.00006 34.59708 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0 2.165989 0.000012 0.000058 0.000117 24.978272 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_hand_R" 0.228043 4.503632 3.220795 71.570486 104.526511 131.96013 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0 2.339737 0.000048 0.008308 -0.000114 30.523921 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000012 1.654007 -0.000055 0.000171 0 16.552462 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 36.783112 30.942776 10.728262 7.011686 -23.819575 -161.900196 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "bip_collar_L"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
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
$bonemerge "bip_collar_R"
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


$sequence "draw" {
	"v_railgun_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_SniperRifle.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire" {
	"v_railgun_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 23 "Weapon_Pistol.SlideBack" }
	{ event 5004 31 "Weapon_Pistol.SlideForward" }
	{ event 5004 19 "Weapon_SniperRifle.BoltBack" }
	{ event 5004 29 "Weapon_SniperRifle.BoltForward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_crit" {
	"v_railgun_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	{ event 5004 23 "Weapon_Pistol.SlideBack" }
	{ event 5004 31 "Weapon_Pistol.SlideForward" }
	{ event 5004 19 "Weapon_SniperRifle.BoltBack" }
	{ event 5004 29 "Weapon_SniperRifle.BoltForward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "idle" {
	"v_railgun_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}
