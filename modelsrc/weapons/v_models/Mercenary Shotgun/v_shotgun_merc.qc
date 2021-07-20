// Created by Crowbar 0.68

$modelname "weapons\v_models\v_shotgun_merc.mdl"

$bodygroup "shotgun"
{
	studio "v_shotgun_merc_c_shotgun_dm.smd"
}
$bodygroup "illumpos"
{
	studio "v_shotgun_merc_illumpos.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0 "illumpos"

$cdmaterials "models\weapons\v_shotgun\"
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
$definebone "bip_hand_L" "root" 21.578222 -24.883621 -25.353315 -1.808426 23.81682 -20.706297 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.49992 2.575138 -6.260478 -25.558445 -31.003902 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" -0.000018 -3.099533 -0.000021 0.000234 -0.000461 11.827267 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" 0.00001 -1.649406 0.000006 -0.000055 0.000113 -8.16908 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.168289 1.640406 61.198584 -118.799174 -115.97929 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000019 -3.307281 -0.000008 -15.200403 22.795304 12.109914 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000016 -2.892883 0.000008 -0.000062 -0.000105 39.534375 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000007 -1.789223 -0.000006 0.000058 -0.000277 8.963655 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108311 -1.322849 0.774748 75.180077 -147.651833 -144.614803 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" -0.000002 -3.408817 0.000004 -6.14188 11.826374 13.018514 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000004 -2.799515 -0.000004 0.000001 -0.000048 39.115199 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000004 -1.822437 -0.000006 0.000063 -0.00005 14.700324 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.205322 -1.375317 -0.310268 77.044015 145.982234 149.993481 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" 0.000007 -3.388157 -0.000019 0.778648 -0.720665 16.126353 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000007 -2.085262 0.000002 -0.000001 0.000116 35.566588 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" 0.000004 -1.544365 -0.000002 0 0.000005 12.350752 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193993 -1.163872 -1.333149 69.132771 115.572442 124.447959 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" -0.000008 -3.297554 -0.000011 1.356077 -7.079812 14.347543 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" 0.000004 -1.951862 0.000008 0 -0.000061 28.584058 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.231834 -0.000002 0.000055 -0.000117 22.625195 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.92833 0 0.000001 -3.307972 26.521531 30.154882 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "root" 15.073412 -9.684708 -9.935938 -1.460412 21.786662 42.984153 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" -0.000034 -12.375364 -0.000095 0.000458 0.000113 -0.710021 0 0 0 0 0 0
$definebone "bip_hand_R" "root" -21.578201 -24.883663 -25.353338 1.808541 -23.816883 159.293781 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809734 0.499908 -2.575144 -6.259909 -25.558786 -31.003205 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.000013 3.099564 -0.000004 -0.001089 -0.000515 11.826478 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" -0.000005 1.649403 0 0.000402 0.000114 -8.169109 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.00816 1.168331 -1.640388 61.198652 -118.798997 -115.979194 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0 3.307259 0.000008 -15.200279 22.795295 12.110041 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000048 2.892811 0.000027 0.000235 -0.000172 39.534258 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000031 1.789288 -0.000038 -0.000053 -0.000118 8.963756 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108288 1.322826 -0.774754 75.180111 -147.651669 -144.61468 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000012 3.408817 0.000004 -6.141879 11.82637 13.018574 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000013 2.799549 0.000006 0.000287 0.000062 39.115196 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000015 1.822392 0.00001 -0.000226 0.000004 14.700329 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375278 0.310253 77.043434 145.983846 149.995066 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000028 3.388233 0.000023 0.777904 -0.720779 16.126416 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" -0.000007 2.085243 0 0.000286 0.000227 35.566643 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544376 0.000023 -0.000118 -0.000001 12.350731 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193981 1.163818 1.333132 69.132668 115.573126 124.448642 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000013 3.297594 0.000031 1.354988 -7.079979 14.34755 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000011 1.951809 -0.000011 0.001204 0.00012 28.584058 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.00001 1.231857 -0.000044 -0.000225 0.000004 22.625193 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.928299 0.000038 -0.000003 3.155393 -26.663679 -149.865893 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "root" -15.075278 -9.689541 -9.93047 -46.915562 -116.942114 -87.245087 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" -0.000069 12.375373 0.000008 -2.230524 -0.710353 0.053567 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "weapon_bone" 1.207144 3.102086 8.741431 0 0 0 0 0 0 0 0 0
$definebone "vm_weapon_bone" "" 0.109113 -5.588909 2.609869 0 0 89.999982 0 0 0 0 0 0
$definebone "illumpos" "" 0 -0.102066 0 0 0 0 0 0 0 0 0 0
$definebone "bip_hand_L.001" "root" 9.709873 -30.411835 -20.910036 13.431275 -110.556796 -99.271028 0 0 0 0 0 0
$definebone "bip_upperArm_L.001" "root" 4.048222 -12.747364 -8.040949 4.512444 -150.541973 -67.126129 0 0 0 0 0 0
$definebone "bip_lowerArm_L.001" "bip_upperArm_L.001" 0.000008 14.480955 0 21.696881 82.407954 108.089513 0 0 0 0 0 0
$definebone "bip_hand_R.001" "root" -5.893587 -14.510609 -7.872386 65.213485 -27.646417 -152.764066 0 0 0 0 0 0
$definebone "bip_upperArm_R.001" "root" -18.67527 6.840454 0.000001 -5.81071 11.901368 -147.910301 0 0 0 0 0 0
$definebone "bip_lowerArm_R.001" "bip_upperArm_R.001" 0.000007 14.481007 0 -56.063685 2.411701 -43.565139 0 0 0 0 0 0

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


$sectionframes 30 160

$sequence "draw" {
	"v_shotgun_merc_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 1 "Weapon_RPG.Draw" }
	{ event 5004 10 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 18 "Weapon_ShotgunEngineer.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "idle" {
	"v_shotgun_merc_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	fps 30
	loop
}

$sequence "fire" {
	"v_shotgun_merc_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 14 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 20 "Weapon_ShotgunEngineer.Cock_Forward" }
	{ event 6002 23 "4" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "reload_start" {
	"v_shotgun_merc_anims\reload_start.smd"
	activity "ACT_RELOAD_START" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload_loop" {
	"v_shotgun_merc_anims\reload_loop.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 13 "Weapon_Shotgun.Reload" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_end" {
	"v_shotgun_merc_anims\reload_end.smd"
	activity "ACT_RELOAD_FINISH" 1
	{ event 5004 15 "Weapon_ShotgunEngineer.Cock_Back" }
	{ event 5004 19 "Weapon_ShotgunEngineer.Cock_Forward" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}
