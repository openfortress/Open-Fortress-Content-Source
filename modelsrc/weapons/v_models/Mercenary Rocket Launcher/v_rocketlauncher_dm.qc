// Created by Crowbar 0.68

$modelname "weapons\v_models\v_rocketlauncher_dm.mdl"

$bodygroup "rocketlauncher"
{
	studio "v_rocketlauncher_dm_c_rocketlauncher.smd"
}
$bodygroup "illumpos"
{
	studio "v_rocketlauncher_dm_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials ""
$cdmaterials "models\weapons\w_rocketlauncher\"

$texturegroup "skinfamilies"
{
	{ "w_rocketlauncher_dm" "nodraw" }
}

$attachment "muzzle" "weapon_bone" 0 6.69 9.91 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox -1.003 -26.5 -36.402 35.861 16.079 6.158

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.34641 27.874972 -9.114097 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.187923 -14.058319 -3.263443 -0.802313 -4.237651 -10.92831 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0 -12.375362 -0.000018 -0.000056 -0.000167 -0.710185 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000015 -1.058863 0.000005 0 0.00006 -0.000058 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809822 -0.499912 2.575142 -6.260595 -25.558267 -31.004182 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000006 -3.099539 -0.000015 0.000171 -0.000337 11.827396 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.000006 -1.649403 0.000006 -0.000057 0.000121 -8.169924 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.00819 -1.168264 1.640412 61.19898 -118.799283 -115.979535 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" -0.000025 -3.307284 0.000004 -15.200229 22.794148 12.109755 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" 0.000009 -2.892874 0 0.000055 0.000047 39.534784 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" 0.000004 -1.789223 0.000004 -0.000006 0.000224 8.963116 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108303 -1.322844 0.774755 75.179605 -147.649306 -144.612822 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000019 -3.408817 -0.000006 -6.141879 11.826707 13.018633 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000004 -2.799494 0.000004 0.000115 -0.000116 39.115715 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" 0.000003 -1.822453 0.000013 -0.00006 0.000285 14.699404 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205326 -1.375319 -0.31026 77.044117 145.983218 149.99467 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000002 -3.388157 0.000004 0.77871 -0.721008 16.12607 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000009 -2.085264 -0.000006 0.000004 0.000345 35.566643 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000003 -1.544369 0.000005 0.000005 0 12.350804 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193989 -1.163872 -1.333138 69.13318 115.573303 124.448492 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0.000004 -3.297533 -0.000025 1.356083 -7.079812 14.347439 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000003 -1.951855 -0.000002 0.000063 -0.000003 28.584584 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000001 -1.231831 -0.000003 0.000062 0.000053 22.625087 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346926 -27.874798 170.885924 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187851 14.058395 3.263447 -0.802255 -4.237488 -10.928423 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000011 12.37538 0.000068 0.00046 -0.000061 -0.710065 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.00005 1.058851 -0.000007 0.000002 -0.000007 0.000004 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809746 0.499891 -2.57514 -6.260648 -25.558332 -31.004175 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099567 0.000029 0.00035 0.000113 11.827446 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000004 1.649405 -0.000011 -0.000853 -0.000232 -8.170043 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008175 1.168314 -1.640394 61.199048 -118.798874 -115.979153 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000036 3.307265 0.000002 -15.200805 22.794033 12.109853 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000024 2.892822 0.000025 0.000625 0.000569 39.533965 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000019 1.789276 -0.000021 -0.000349 -0.000227 8.963879 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108292 1.322805 -0.774757 75.180193 -147.647871 -144.611374 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" -0.000002 3.408823 0.000008 -6.141937 11.826422 13.018799 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.00002 2.799564 -0.000008 0.000572 -0.000055 39.115708 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000007 1.822403 -0.000005 0.000175 0.000288 14.699346 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205288 1.375257 0.310246 77.044629 145.981592 149.993058 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000012 3.388245 -0.000008 0.777333 -0.721581 16.12606 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000006 2.085253 -0.000008 0.002178 0.000285 35.56624 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000008 1.544357 0.000021 -0.000056 -0.000001 12.350803 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193981 1.163813 1.333127 69.132887 115.574054 124.449107 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000007 3.297585 0.000029 1.355334 -7.079984 14.347487 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000009 1.951797 0.000004 0.000403 0.000053 28.584567 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.231861 -0.000046 0.000116 0.000054 22.62478 0 0 0 0 0 0
$definebone "weapon_bone" "bip_hand_R" 37.263458 28.630238 11.620049 9.774892 -21.895932 -161.570256 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "bip_hand_R" 34.612015 25.700737 -8.585544 45.681869 -122.058636 75.933446 0 0 0 0 0 0
$definebone "vm_weapon_bone_2" "bip_hand_R" 33.060467 23.209784 -11.594132 9.136901 -113.484372 -99.902295 0 0 0 0 0 0
$definebone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
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
$bonemerge "weapon_bone"


$sequence "dh_idle" {
	"v_rocketlauncher_dm_anims\dh_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.0
	fadeout 0.0
	node "raised"
	fps 30
	loop
}

$sequence "dh_fire" {
	"v_rocketlauncher_dm_anims\dh_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	fadein 0.0
	fadeout 0.0
	node "raised"
	snap
	fps 30
}

$sequence "dh_draw" {
	"v_rocketlauncher_dm_anims\dh_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	fadein 0.0
	fadeout 0.0
	node "raised"
	snap
	fps 30
}

$sequence "dh_reload_start" {
	"v_rocketlauncher_dm_anims\dh_reload_start.smd"
	activity "ACT_RELOAD_START" 1
	fadein 0.0
	fadeout 0.2
	fps 30
}

$sequence "dh_reload_loop" {
	"v_rocketlauncher_dm_anims\dh_reload_loop.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 2 "Weapon_RPG.Reload" }
	{ event AE_WPN_INCREMENTAMMO 12 " " }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "dh_reload_finish" {
	"v_rocketlauncher_dm_anims\dh_reload_finish.smd"
	activity "ACT_RELOAD_FINISH" 1
	fadein 0.2
	fadeout 0.0
	snap
	fps 30
}
