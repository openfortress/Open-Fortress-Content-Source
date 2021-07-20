// Created by Crowbar 0.68

$modelname "weapons\v_models\v_grenadelauncher_dm.mdl"

$bodygroup "shotgun"
{
	studio "v_grenadelauncher_dm_v_shotgun_merc_c_shotgun_dm.001.smd"
}
$bodygroup "illumpos"
{
	studio "v_grenadelauncher_dm_v_shotgun_merc_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_grenadelauncher\"
$cdmaterials ""

$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0
$attachment "muzzle" "weapon_bone" 0 3.73 34.92 rotate -90 0 0
$attachment "eject_brass" "weapon_bone" 0.8 3.25 9.76 rotate -12 18 -18

$cbox 0 0 0 0 0 0

$bbox -6.854 -20.31 -32.863 49.553 16.949 1.18

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "root" "" 0 3.788849 65.927551 0 0 89.999982 0 0 0 0 0 0
$definebone "weapon_bone" "" 0 0 0 0 0 89.999982 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" 0 1.394091 25.96583 0 0 0 0 0 0 0 0 0
$definebone "bip_hand_L" "root" 21.578222 -24.883621 -25.353315 -1.808426 23.816818 -20.706299 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499924 2.575136 -6.260475 -25.558442 -31.003905 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000019 -3.099533 -0.00002 0.000235 -0.000458 11.827268 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.00001 -1.649406 0.000006 -0.000054 0.000114 -8.169081 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168285 1.640406 61.198584 -118.799174 -115.97929 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000019 -3.307281 -0.000008 -15.200408 22.795309 12.109911 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000017 -2.892887 0.000008 -0.000067 -0.0001 39.534371 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000007 -1.789223 -0.000005 0.000057 -0.000271 8.963665 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108311 -1.322849 0.774746 75.180077 -147.651833 -144.614789 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000001 -3.408817 0.000004 -6.14188 11.826375 13.018511 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000007 -2.799515 -0.000004 0 -0.000046 39.115202 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000007 -1.822437 -0.000008 0.000064 -0.000048 14.70034 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.375317 -0.31027 77.044015 145.982234 149.993481 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0.000007 -3.388157 -0.000019 0.77865 -0.720666 16.126352 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000008 -2.085262 0.000004 0 0.000115 35.566591 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000005 -1.544365 -0.000002 0.000001 0.000002 12.350766 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163872 -1.333151 69.132771 115.572442 124.447973 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.00001 -3.29755 -0.000015 1.356078 -7.07981 14.34754 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.951859 0.000008 0.000001 -0.000059 28.584057 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" 0 -1.231834 -0.000004 0.000056 -0.000116 22.625196 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.92833 0 0.000001 -3.307972 26.521531 30.154882 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "root" 15.073412 -9.684708 -9.935938 -1.460412 21.786662 42.984153 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000034 -12.375364 -0.000095 0.000458 0.000113 -0.710025 0 0 0 0 0 0
$definebone "bip_hand_R" "root" -21.578201 -24.883663 -25.353338 1.808541 -23.816883 159.293781 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809734 0.499912 -2.575143 -6.259908 -25.558785 -31.003209 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000011 3.099567 -0.000003 -0.001089 -0.000513 11.826477 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000005 1.649403 0 0.000405 0.000117 -8.169108 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.00816 1.168331 -1.640388 61.198652 -118.798997 -115.97918 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" -0.000001 3.307259 0.000008 -15.20028 22.795297 12.110041 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000048 2.892811 0.000025 0.000233 -0.000168 39.534258 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.00003 1.789288 -0.00004 -0.000053 -0.000114 8.96376 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108288 1.322826 -0.774754 75.180111 -147.651669 -144.61468 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.00001 3.408813 0.000004 -6.141879 11.826373 13.018575 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000013 2.799545 0.000008 0.000286 0.000067 39.115196 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000017 1.822395 0.000009 -0.000223 0.000009 14.700333 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375278 0.310251 77.043434 145.983846 149.995066 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000026 3.388233 0.000023 0.777905 -0.720777 16.126418 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000007 2.085239 0.000002 0.000288 0.000227 35.566646 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000008 1.544373 0.000025 -0.000118 -0.000002 12.350731 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193981 1.163822 1.333134 69.132668 115.573126 124.448642 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000011 3.297592 0.000027 1.354987 -7.079976 14.347548 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.00001 1.951809 -0.000011 0.001204 0.000124 28.584058 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000011 1.231857 -0.000044 -0.000222 0.000007 22.625193 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.928299 0.000038 -0.000003 3.155393 -26.663679 -149.865893 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "root" -15.075278 -9.689541 -9.93047 -46.915562 -116.942114 -87.245087 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000069 12.375367 0.000008 -2.230524 -0.710353 0.053565 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "weapon_bone" 1.207144 3.102086 8.741431 0 0 0 0 0 0 0 0 0
$definebone "vm_weapon_bone" "" 0.109113 -5.588909 2.609869 0 0 89.999982 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0
$definebone "bip_hand_L.001" "root" 9.709873 -30.411835 -20.910036 13.431274 -110.556796 -99.271028 0 0 0 0 0 0
$definebone "bip_upperArm_L.001" "root" 4.048222 -12.747364 -8.040949 4.512444 -150.541973 -67.126129 0 0 0 0 0 0
$definebone "bip_lowerArm_L.001" "bip_upperArm_L.001" 0.00001 14.480958 0.000004 21.696881 82.407954 108.089513 0 0 0 0 0 0
$definebone "bip_hand_R.001" "root" -5.893587 -14.510609 -7.872386 65.213485 -27.646417 -152.764066 0 0 0 0 0 0
$definebone "bip_upperArm_R.001" "root" -18.67527 6.840454 0.000001 -5.81071 11.901369 -147.910301 0 0 0 0 0 0
$definebone "bip_lowerArm_R.001" "bip_upperArm_R.001" 0.000008 14.481007 0 -56.063685 2.411705 -43.565142 0 0 0 0 0 0

$bonemerge "root"
$bonemerge "weapon_bone"
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
$bonemerge "bip_wrist_L"
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
$bonemerge "bip_wrist_R"


$sequence "draw" {
	"v_grenadelauncher_dm_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	{ event 5004 7 "Weapon_GrenadeLauncherDM.Cock_Back" }
	{ event 5004 13 "Weapon_GrenadeLauncherDM.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_grenadelauncher_dm_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_grenadelauncher_dm_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 12 "Weapon_GrenadeLauncherDM.Cock_Back" }
	{ event 5004 19 "Weapon_GrenadeLauncherDM.Cock_Forward" }
	{ event 6002 11 "4" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload_start" {
	"v_grenadelauncher_dm_anims\reload_start.smd"
	activity "ACT_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload_loop" {
	"v_grenadelauncher_dm_anims\reload_loop.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 15 "Weapon_GrenadeLauncherDM.DrumLoad" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_end" {
	"v_grenadelauncher_dm_anims\reload_end.smd"
	activity "ACT_RELOAD_FINISH" 1
	{ event 5004 6 "Weapon_GrenadeLauncherDM.Cock_Back" }
	{ event 5004 13 "Weapon_GrenadeLauncherDM.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
