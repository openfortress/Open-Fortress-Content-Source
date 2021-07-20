// Created by Crowbar 0.68

$modelname "weapons\v_models\v_lightning_gun.mdl"

$bodygroup "lightning_gun"
{
	studio "v_lightning_gun.smd"
}
$bodygroup "illumpos"
{
	studio "v_lightning_gun_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$mostlyopaque

$cdmaterials "models\weapons\v_lightning_gun\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "muzzle" 0 0 0 rotate -90 0 0
$attachment "pilotlight" "weapon_bone" 4.38 -3.2 68.11 rotate -28.35 118.88 -132.36

$cbox 0 0 0 0 0 0

$bbox -25.178 -22.246 -33.891 73.584 16.079 0.021

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "root" "" 0 3.788849 65.927551 0 0 89.999982 0 0 0 0 0 0
$definebone "weapon_ik" "" -0.029278 -5.706213 -4.312409 0 0 89.999982 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_ik" 0.029276 -0.507436 12.239162 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone" "weapon_ik" 0 -1.9 -3.6 0 0 0 0 0 0 0 0 0
$definebone "bip_hand_R" "root" -21.578197 -27.183666 0.001247 1.808541 -23.816883 159.293781 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499895 -2.575146 -6.259913 -25.558728 -31.003209 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000015 3.099562 -0.000008 -0.001093 -0.000569 11.826419 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000008 1.649403 0.000004 0.000397 0.000174 -8.169121 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168329 -1.640388 61.198577 -118.798997 -115.97918 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.000002 3.307259 0.00001 -15.20028 22.795295 12.109979 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000044 2.892815 0.000029 0.000118 -0.000117 39.534378 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000029 1.789291 -0.000041 -0.000055 -0.000118 8.963748 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322815 -0.774753 75.180111 -147.651628 -144.61468 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000008 3.408813 0.000002 -6.141876 11.826257 13.018576 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000013 2.799555 0.00001 0.00029 0.000176 39.115264 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000013 1.822392 0.00001 -0.000224 -0.00006 14.700268 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375267 0.310252 77.043434 145.983846 149.995066 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000027 3.388237 0.000021 0.777904 -0.720779 16.126416 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000005 2.085243 0 0.000286 0.000227 35.566643 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.00001 1.544376 0.000015 -0.000118 -0.000001 12.350731 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163811 1.333131 69.13273 115.573194 124.44871 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000013 3.297596 0.000032 1.355043 -7.079925 14.347552 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 1.951805 -0.000006 0.001144 0.000114 28.584067 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000008 1.23185 -0.000041 -0.000174 -0.000001 22.625248 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 -0.000001 1.431249 -26.100921 166.990216 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "root" -16.211718 -13.482662 -0.044542 -88.932505 151.338318 7.269975 0 0 0 0 0 0
$definebone "bip_hand_L" "root" 21.578218 -24.883621 3.601273 -1.808426 23.81682 -20.706297 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809826 -0.499924 2.57514 -6.260478 -25.558498 -31.003895 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000011 -3.099535 -0.00001 0.000234 -0.0004 11.827157 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000008 -1.64941 0.000004 -0.000055 0.000114 -8.169127 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008209 -1.168282 1.640404 61.198584 -118.799174 -115.979358 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000025 -3.307286 -0.000002 -15.200398 22.795177 12.109861 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000004 -2.892879 0.000004 -0.00006 -0.00006 39.534436 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000004 -1.789219 -0.000003 0.00005 -0.000283 8.963695 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108315 -1.322847 0.774747 75.180077 -147.651778 -144.614803 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000004 -3.408825 0.000006 -6.141823 11.826317 13.018515 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000006 -2.799515 0.000002 0 0.000064 39.115192 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000002 -1.822445 -0.000002 0.000063 -0.000053 14.700321 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.37532 -0.310268 77.044015 145.982234 149.993481 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0.000005 -3.388157 -0.000023 0.778648 -0.720665 16.126353 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000005 -2.085253 -0.000002 -0.000058 0.000117 35.566649 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000001 -1.544369 0 -0.000001 0.000003 12.35075 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.194004 -1.163876 -1.333152 69.132771 115.572497 124.448014 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.29755 -0.000011 1.356077 -7.079755 14.347487 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000001 -1.951862 0.000002 -0.000057 -0.000059 28.584062 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0.000002 -1.231831 -0.000006 0.000055 -0.000057 22.625193 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.350879 27.875771 -9.114441 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "root" 16.61537 -13.279709 -1.002546 -1.818855 23.801068 -20.002986 0 0 0 0 0 0
$definebone "muzzle" "weapon_ik" 0 4.200001 10.5 0 0 0 0 0 0 0 0 0
$definebone "bip_collar_L" "root" 1.305631 0 0.654511 3.721303 73.952118 28.539659 0 0 0 0 0 0
$definebone "bip_collar_R" "root" -1.30563 0 0.65451 -3.721303 -73.952118 -151.460415 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0
$definebone "bip_hand_R.001" "root" -14.25022 -18.158062 17.89863 -54.999969 -90.000016 -180.000005 0 0 0 0 0 0
$definebone "bip_upperArm_R.001" "root" -18.88623 -7.208958 0 -33.264729 17.520248 153.817677 0 0 0 0 0 0
$definebone "bip_lowerArm_R.001" "bip_upperArm_R.001" 0.000001 14.480984 -0.000002 -54.894002 3.468224 -82.220827 0 0 0 0 0 0
$definebone "bip_hand_L.001" "root" -4.260207 -21.313251 34.134151 -86.422889 -4.172907 -18.72426 0 0 0 0 0 0
$definebone "bip_upperArm_L.001" "root" 3.4744 -15.920609 14.7027 12.58611 -138.306973 57.508062 0 0 0 0 0 0
$definebone "bip_lowerArm_L.001" "bip_upperArm_L.001" -0.000008 14.480942 -0.000008 15.656645 80.266457 109.060445 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "weapon_ik"
$bonemerge "weapon_bone"
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
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_R"
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
$bonemerge "bip_upperArm_L"
$bonemerge "bip_lowerArm_L"
$bonemerge "muzzle"
$bonemerge "bip_collar_L"
$bonemerge "bip_collar_R"


$sequence "idle" {
	"v_lightning_gun_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.1
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_lightning_gun_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.1
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "draw" {
	"v_lightning_gun_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_LightningGun.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "draw2" {
	"v_lightning_gun_anims\draw2.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_LightningGun.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}
