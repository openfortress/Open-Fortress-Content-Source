// Created by Crowbar 0.58

$modelname "weapons/v_models/v_nailgun_mercenary.mdl"

$bodygroup "nailgun"
{
	studio "v_nailgun_mercenary_model/nailgun.smd"
}


$surfaceprop "default"

$contents "solid"

$body "illumpos" "v_nailgun_mercenary_model/illumpos.smd"
$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\w_nailgun\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 5.96 9.19 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -60.106 -18.673 -28.346 32.787 13.563 -1.857

$hboxset "default"
$hbox 0 "weapon_bone" -5 -5 -5 5 5 5 ""

$definebone "root" "" 0 60.106396 -4.292783 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.092304 0 0 -0.346582 27.874625 -9.113811 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" 0.00013 -11.937252 0.000062 -0.000058 0.000229 -12.615271 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0.000076 -9.999989 0.000086 -0.000057 0.000345 -0.71041 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_lowerArm_L" 0.000088 -11.592718 0.013231 -0.000057 0.000116 -0.710581 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809807 -0.499918 2.575151 -6.260653 -25.557931 -31.004066 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000013 -3.099535 -0.000002 0.00023 -0.000285 11.826882 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000006 -1.649406 0.00001 -0.000058 0.000173 -8.169118 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008194 -1.16828 1.640417 61.19881 -118.799284 -115.979359 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000031 -3.307285 0.000027 -15.200344 22.794443 12.10935 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000011 -2.892885 -0.000006 0.000056 -0.000227 39.534829 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000002 -1.78923 0.000005 0.000058 -0.000228 8.96358 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108299 -1.322859 0.774759 75.18007 -147.650577 -144.613957 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000029 -3.408823 0.000004 -6.141993 11.826711 13.018579 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" -0.000041 -2.799511 0 0.000288 -0.001373 39.115141 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000023 -1.82246 0.000005 0.000172 0.000517 14.700422 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205318 -1.375332 -0.310251 77.044179 145.984121 149.995463 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.00001 -3.388147 0.000011 0.778422 -0.72038 16.126131 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" -0.000017 -2.085266 0.000004 -0.000228 0.000113 35.566414 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000016 -1.544357 0.000002 -0.000114 -0.000861 12.351258 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163895 -1.333137 69.133468 115.574219 124.449517 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0.000012 -3.297546 0.000004 1.355905 -7.079519 14.347147 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000002 -1.951881 -0.000002 -0.000171 0.000463 28.584234 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000012 -1.231823 -0.000005 0.000003 -0.000685 22.62542 0 0 0 0 0 0
$definebone "forearm_twist_01_L" "bip_lowerArm_L" 0.00005 -5.303595 -0.001671 -0.000115 0.000287 -0.710694 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.0923 0.000004 0.000003 0.346754 -27.874395 170.886034 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" -0.000183 11.937294 -0.00004 -0.000229 0.000171 -12.615384 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000149 10.533936 -0.000064 0.001089 0.000514 -0.71024 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000031 1.05887 -0.000002 0.000002 0.000056 -0.000231 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809841 0.499836 -2.575147 -6.260995 -25.558443 -31.003544 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" -0.000046 3.099514 0.000002 -0.000629 -0.000347 11.826875 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000004 1.649418 0.000002 0.000514 0.000111 -8.169065 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008198 1.168285 -1.640404 61.199438 -118.797672 -115.977528 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000076 3.307245 -0.000015 -15.199143 22.794836 12.109405 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000019 2.892885 0.00005 -0.001321 -0.00069 39.534713 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000031 1.789162 -0.000068 -0.000059 -0.000115 8.96375 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108311 1.322756 -0.774787 75.180357 -147.650168 -144.613329 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000031 3.408838 -0.000023 -6.141651 11.826991 13.0184 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" 0.000023 2.799555 -0.000042 0.001258 -0.000001 39.115083 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" -0.000008 1.822418 0.000041 -0.002122 0.000631 14.7005 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.20525 1.375307 0.310259 77.045033 145.981593 149.993018 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" 0.000005 3.388149 0.000065 0.778933 -0.72009 16.126068 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000012 2.085281 -0.000002 -0.001721 -0.000801 35.566476 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000037 1.5443 0.000014 0.001489 -0.000856 12.351257 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193981 1.163839 1.33313 69.134554 115.569056 124.444531 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.00001 3.297544 -0.000036 1.356877 -7.079638 14.346978 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000001 1.951918 -0.000053 -0.001033 -0.000285 28.584175 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" 0.000001 1.231846 0.000069 0.00126 -0.000684 22.625418 0 0 0 0 0 0
$definebone "arm_attach_R" "bip_lowerArm_R" -0.000008 0 0.000001 0.000517 0.000283 0.000115 0 0 0 0 0 0
$definebone "bip_twist_R" "bip_lowerArm_R" -0.00008 5.299997 -0.000034 0.001547 0.000512 0.000285 0 0 0 0 0 0
$definebone "weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0 0.47836 -0.424999 0 0 0 0 0 0 0 0 0

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
$bonemerge "forearm_twist_01_L"
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
$bonemerge "arm_attach_R"
$bonemerge "bip_twist_R"
$bonemerge "weapon_bone"


$sequence "draw" {
	"v_nailgun_mercenary_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_Nailgun.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_nailgun_mercenary_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_nailgun_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "fire_crit" {
	"v_nailgun_mercenary_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK_CRIT" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload" {
	"v_nailgun_mercenary_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "Weapon_Nailgun.ClipOut" }
	{ event 5004 31 "Weapon_Nailgun.ClipIn" }
	fadein 0.2
	fadeout 0.2
	fps 30
}
