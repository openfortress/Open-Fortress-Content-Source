// Created by Crowbar 0.68

$modelname "weapons/v_models/v_bouncer.mdl"

$bodygroup "grenadelauncher"
{
	studio "v_bouncer.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 3.512 -17.279 -20.742

$cdmaterials "models\weapons\v_bouncer\"
$cdmaterials ""
$cdmaterials "models\weapons\w_grenade_bouncer\"

$texturegroup "skinfamilies"
{
	{ "bouncer_grenade"      }
	{ "bouncer_grenade_blu"  }
	{ "bouncer_grenade_merc" }
}

$attachment "muzzle" "weapon_bone_1" 0 8.23 28.87 rotate 0 0 0
$attachment "weapon_bone" "weapon_bone" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -16.8 -30.136 -55.682 58.225 16.079 6.543

$hboxset "default"
$hbox 0 "weapon_bone" -10 -10 -10 10 10 10

$definebone "weapon_bone" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "vm_weapon_bone_1" "weapon_bone" -0.011187 -1.23928 1.92844 0 -0.000002 0 0 0 0 0 0 0
$definebone "vm_weapon_bone" "weapon_bone" -0.011187 6.347018 3.854714 0 -0.000002 0 0 0 0 0 0 0
$definebone "weapon_bone_1" "weapon_bone" -0.011187 -1.368166 13.190828 0.006284 0 0 0 0 0 0 0 0
$definebone "weapon_bone_3" "weapon_bone_1" 0.028332 8.173774 10.176038 0 0 0 0 0 0 0 0 0
$definebone "weapon_bone_4" "weapon_bone_1" 0.008597 11.667088 -21.291857 -0.006284 0 0 0 0 0 0 0 0
$definebone "illumpos" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "root" "" 0 65.927551 -3.78886 0 0 0 0 0 0 0 0 0
$definebone "bip_upperArm_L" "root" 10.928331 0 0 -0.346421 27.875274 -9.114138 0 0 0 0 0 0
$definebone "bip_upperArm_R" "root" -10.9283 0.000046 0 0.346421 -27.875274 170.885869 0 0 0 0 0 0
$definebone "bip_lowerArm_L" "bip_upperArm_L" -1.188 -14.0583 -3.263459 -0.80234 -4.237946 -10.928142 0 0 0 0 0 0
$definebone "bip_lowerArm_R" "bip_upperArm_R" 1.187943 14.058395 3.263466 -0.802339 -4.237948 -10.928149 0 0 0 0 0 0
$definebone "bip_wrist_L" "bip_lowerArm_L" 0 -12.375355 0.000002 0.000003 -0.000003 -0.710514 0 0 0 0 0 0
$definebone "bip_wrist_R" "bip_lowerArm_R" 0.000015 12.375381 0.000013 0.000003 0 -0.710522 0 0 0 0 0 0
$definebone "bip_hand_L" "bip_wrist_L" 0.000008 -1.058867 -0.000004 -0.000003 -0.000002 0.000009 0 0 0 0 0 0
$definebone "bip_hand_R" "bip_wrist_R" 0.000053 1.058851 -0.000006 -0.000003 0.000009 0.00001 0 0 0 0 0 0
$definebone "effect_hand_L" "bip_hand_L" -2.036919 -1.849731 0.156126 -10.441173 169.87205 3.118208 0 0 0 0 0 0
$definebone "effect_hand_R" "bip_hand_R" 2.036877 1.849697 -0.156137 10.441624 -10.128002 -3.118021 0 0 0 0 0 0
$definebone "handle_bone" "weapon_bone" 3.907275 9.50758 9.639417 -6.826704 123.790389 -169.927853 0 0 0 0 0 0
$definebone "rocket" "root" 0 -20 -20 0 0 0 0 0 0 0 0 0
$definebone "bip_thumb_0_L" "bip_hand_L" -1.809814 -0.499926 2.575137 -6.260522 -25.558546 -31.003735 0 0 0 0 0 0
$definebone "bip_thumb_0_R" "bip_hand_R" 1.809738 0.499895 -2.575143 -6.260507 -25.558542 -31.003707 0 0 0 0 0 0
$definebone "bip_thumb_1_L" "bip_thumb_0_L" 0.000006 -3.099541 -0.000004 0.00001 -0.000011 11.826828 0 0 0 0 0 0
$definebone "bip_thumb_1_R" "bip_thumb_0_R" 0.00001 3.099564 0.000011 0.000016 -0.000021 11.826836 0 0 0 0 0 0
$definebone "bip_thumb_2_L" "bip_thumb_1_L" -0.000006 -1.649406 0.000006 0.000009 -0.000019 -8.169206 0 0 0 0 0 0
$definebone "bip_thumb_2_R" "bip_thumb_1_R" 0.000006 1.64941 0 0.000007 -0.000021 -8.169205 0 0 0 0 0 0
$definebone "bip_index_meta_0_L" "bip_hand_L" -0.008202 -1.16828 1.640409 61.19885 -118.799215 -115.979412 0 0 0 0 0 0
$definebone "bip_index_meta_0_R" "bip_hand_R" 0.008163 1.168314 -1.640392 61.198843 -118.799188 -115.979412 0 0 0 0 0 0
$definebone "bip_index_0_L" "bip_index_meta_0_L" 0.000006 -3.307281 -0.000008 -15.200354 22.794742 12.109836 0 0 0 0 0 0
$definebone "bip_index_0_R" "bip_index_meta_0_R" 0.000011 3.307263 0.00001 -15.200338 22.79472 12.10982 0 0 0 0 0 0
$definebone "bip_index_1_L" "bip_index_0_L" -0.000003 -2.892872 0 0 0.000008 39.534535 0 0 0 0 0 0
$definebone "bip_index_1_R" "bip_index_0_R" 0.000031 2.892815 0.000023 -0.000007 -0.000028 39.534542 0 0 0 0 0 0
$definebone "bip_index_2_L" "bip_index_1_L" -0.000004 -1.789227 0.000003 0.000001 -0.000003 8.963454 0 0 0 0 0 0
$definebone "bip_index_2_R" "bip_index_1_R" -0.000031 1.789265 -0.00004 -0.000026 -0.000018 8.963441 0 0 0 0 0 0
$definebone "bip_middle_meta_0_L" "bip_hand_L" -0.108307 -1.32284 0.774749 75.179995 -147.650849 -144.614134 0 0 0 0 0 0
$definebone "bip_middle_meta_0_R" "bip_hand_R" 0.108288 1.322811 -0.774755 75.180001 -147.650877 -144.614161 0 0 0 0 0 0
$definebone "bip_middle_0_L" "bip_middle_meta_0_L" 0.000006 -3.408812 0 -6.141874 11.826458 13.018641 0 0 0 0 0 0
$definebone "bip_middle_0_R" "bip_middle_meta_0_R" 0.000006 3.408813 0.00001 -6.141867 11.826457 13.018646 0 0 0 0 0 0
$definebone "bip_middle_1_L" "bip_middle_0_L" 0.000001 -2.799503 0 0.00001 -0.000008 39.115336 0 0 0 0 0 0
$definebone "bip_middle_1_R" "bip_middle_0_R" -0.000008 2.799559 -0.000004 0.000001 -0.000006 39.115319 0 0 0 0 0 0
$definebone "bip_middle_2_L" "bip_middle_1_L" -0.000005 -1.822445 0.000001 0 -0.000006 14.700013 0 0 0 0 0 0
$definebone "bip_middle_2_R" "bip_middle_1_R" 0.000014 1.822392 0.000014 -0.000007 -0.000004 14.699993 0 0 0 0 0 0
$definebone "bip_ring_meta_0_L" "bip_hand_L" -0.20533 -1.375319 -0.310266 77.044042 145.982439 149.99385 0 0 0 0 0 0
$definebone "bip_ring_meta_0_R" "bip_hand_R" 0.205292 1.375257 0.310246 77.044049 145.982371 149.993727 0 0 0 0 0 0
$definebone "bip_ring_0_L" "bip_ring_meta_0_L" -0.000003 -3.388149 0.000008 0.778604 -0.720686 16.126083 0 0 0 0 0 0
$definebone "bip_ring_0_R" "bip_ring_meta_0_R" -0.000022 3.388247 0.000004 0.778615 -0.720696 16.12608 0 0 0 0 0 0
$definebone "bip_ring_1_L" "bip_ring_0_L" 0.000003 -2.085278 0.000002 0.000002 0 35.566707 0 0 0 0 0 0
$definebone "bip_ring_1_R" "bip_ring_0_R" 0.000004 2.085262 0.000008 -0.000004 -0.000001 35.566663 0 0 0 0 0 0
$definebone "bip_ring_2_L" "bip_ring_1_L" -0.000002 -1.544353 0.000002 0.000007 -0.000002 12.350637 0 0 0 0 0 0
$definebone "bip_ring_2_R" "bip_ring_1_R" 0.000009 1.544365 0.000019 0.000001 0 12.350676 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_L" "bip_hand_L" -0.193989 -1.163862 -1.333148 69.132914 115.572757 124.448342 0 0 0 0 0 0
$definebone "bip_pinky_meta_0_R" "bip_hand_R" 0.193985 1.163799 1.333128 69.132893 115.572757 124.448314 0 0 0 0 0 0
$definebone "bip_pinky_0_L" "bip_pinky_meta_0_L" 0 -3.297531 -0.000006 1.356046 -7.079813 14.347251 0 0 0 0 0 0
$definebone "bip_pinky_0_R" "bip_pinky_meta_0_R" -0.000006 3.297573 0.000017 1.356032 -7.079817 14.347229 0 0 0 0 0 0
$definebone "bip_pinky_1_L" "bip_pinky_0_L" -0.000002 -1.951855 0 0.000006 0.000005 28.584398 0 0 0 0 0 0
$definebone "bip_pinky_1_R" "bip_pinky_0_R" 0.000012 1.951801 0 -0.000004 0.000008 28.584419 0 0 0 0 0 0
$definebone "bip_pinky_2_L" "bip_pinky_1_L" -0.000002 -1.231831 0.000002 0.000004 0.000002 22.624804 0 0 0 0 0 0
$definebone "bip_pinky_2_R" "bip_pinky_1_R" -0.000009 1.231865 -0.000041 -0.000007 0.00001 22.624785 0 0 0 0 0 0

$bonemerge "weapon_bone"
$bonemerge "vm_weapon_bone_1"
$bonemerge "vm_weapon_bone"
$bonemerge "weapon_bone_1"
$bonemerge "weapon_bone_3"
$bonemerge "weapon_bone_4"
$bonemerge "root"
$bonemerge "bip_upperArm_L"
$bonemerge "bip_upperArm_R"
$bonemerge "bip_lowerArm_L"
$bonemerge "bip_lowerArm_R"
$bonemerge "bip_wrist_L"
$bonemerge "bip_wrist_R"
$bonemerge "bip_hand_L"
$bonemerge "bip_hand_R"
$bonemerge "bip_thumb_0_L"
$bonemerge "bip_thumb_0_R"
$bonemerge "bip_thumb_1_L"
$bonemerge "bip_thumb_1_R"
$bonemerge "bip_thumb_2_L"
$bonemerge "bip_thumb_2_R"
$bonemerge "bip_index_meta_0_L"
$bonemerge "bip_index_meta_0_R"
$bonemerge "bip_index_0_L"
$bonemerge "bip_index_0_R"
$bonemerge "bip_index_1_L"
$bonemerge "bip_index_1_R"
$bonemerge "bip_index_2_L"
$bonemerge "bip_index_2_R"
$bonemerge "bip_middle_meta_0_L"
$bonemerge "bip_middle_meta_0_R"
$bonemerge "bip_middle_0_L"
$bonemerge "bip_middle_0_R"
$bonemerge "bip_middle_1_L"
$bonemerge "bip_middle_1_R"
$bonemerge "bip_middle_2_L"
$bonemerge "bip_middle_2_R"
$bonemerge "bip_ring_meta_0_L"
$bonemerge "bip_ring_meta_0_R"
$bonemerge "bip_ring_0_L"
$bonemerge "bip_ring_0_R"
$bonemerge "bip_ring_1_L"
$bonemerge "bip_ring_1_R"
$bonemerge "bip_ring_2_L"
$bonemerge "bip_ring_2_R"
$bonemerge "bip_pinky_meta_0_L"
$bonemerge "bip_pinky_meta_0_R"
$bonemerge "bip_pinky_0_L"
$bonemerge "bip_pinky_0_R"
$bonemerge "bip_pinky_1_L"
$bonemerge "bip_pinky_1_R"
$bonemerge "bip_pinky_2_L"
$bonemerge "bip_pinky_2_R"


$sectionframes 30 119

$sequence "g_draw" {
	"v_bouncer_anims\g_draw.smd"
	activity "ACT_VM_DRAW" 1
	{ event 5004 2 "Weapon_GrenadeLauncher.Draw" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "g_idle" {
	"v_bouncer_anims\g_idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
	loop
}

$sequence "g_fire" {
	"v_bouncer_anims\g_fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5004 1 "Weapon_GrenadeLauncher.DrumStart" }
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}

$sequence "g_reload_start" {
	"v_bouncer_anims\g_reload_start.smd"
	activity "ACT_RELOAD_START" 1
	{ event 5004 6 "Weapon_GrenadeLauncher.DrumOpen" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "g_reload_loop" {
	"v_bouncer_anims\g_reload_loop.smd"
	activity "ACT_VM_RELOAD" 1
	{ event 5004 7 "Weapon_GrenadeLauncher.DrumLoad" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "g_reload_end" {
	"v_bouncer_anims\g_reload_end.smd"
	activity "ACT_RELOAD_FINISH" 1
	{ event 5004 3 "Weapon_GrenadeLauncher.DrumClose" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "g_auto_fire" {
	"v_bouncer_anims\g_auto_fire.smd"
	activity "ACT_VM_PULLBACK" 1
	fadein 0.2
	fadeout 0.2
	node "raised"
	snap
	fps 30
}
